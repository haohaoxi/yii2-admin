<?php
namespace backend\models;

use Yii;
use yii\base\NotSupportedException;
use yii\behaviors\TimestampBehavior;
use yii\db\ActiveRecord;
use yii\web\IdentityInterface;
use common\components\Func;

class Admin extends ActiveRecord implements IdentityInterface {

    public $password;
    public $array  = array('1'=>'用户','2'=>'广告商');


    const STATUS_DELETE = 0;
    const STATUS_ACTIVE = 1;

    public static $statusTexts = [
        self::STATUS_DELETE => '禁用',
        self::STATUS_ACTIVE => '启用',
    ];

    public static $statusStyles = [
        self::STATUS_DELETE => 'label-warning',
        self::STATUS_ACTIVE => 'label-info',
    ];

    public static function tableName() {
        return '{{%admin}}';
    }

    public function behaviors() {
        return [
            TimestampBehavior::className(),
        ];
    }

    public function rules() {
        return [
            [['username','user_type','email'], 'required'],
            [['username'], 'string', 'length' => [3, 15]],
            [['password'], 'required', 'on' => ['create']],
            [['reg_ip', 'last_login_time', 'last_login_ip'], 'integer'],
            [['auth_key'], 'string', 'length' => 32],
            [['username', 'email'], 'unique'],
            [['email'], 'email'],
            ['status', 'default', 'value' => self::STATUS_ACTIVE],
            ['status', 'in', 'range' => [
                self::STATUS_ACTIVE, self::STATUS_DELETE
            ]],
            ['series_number', 'default', 'value' => $this->create_unique()],
        ];
    }

    public function scenarios() {
        $scenarios = parent::scenarios();
        $scenarios['create'] = ['username', 'email', 'password', 'status','user_type','series_number','type_name'];
        $scenarios['update'] = ['username', 'email', 'password', 'status'];
        return $scenarios;
    }

    public function attributeLabels() {
        return [
            'id' => 'ID',
            'username' => '用户名',
            'series_number'=>'唯一标识',
            'user_type'=>'类别名称',
            'type_name'=>'用户类别名称',
            'auth_key' => 'Auth Key',
            'password' => '密码',
            'password_hash' => 'Password Hash',
            'email' => 'Email',
            'reg_ip' => 'Reg Ip',
            'last_login_time' => '最后登录时间',
            'last_login_ip' => '最后登录IP',
            'status' => '状态',
            'created_at' => 'Created At',
            'updated_at' => 'Updated At',
            'user_role' => '所属角色'
        ];
    }

    /**
     * 获取账号信息
     * @param  [int] $id [后台用户id]
     */
    public static function findIdentity($id) {
        return static::findOne(['id' => $id, 'status' => self::STATUS_ACTIVE]);
    }

    public static function findIdentityByAccessToken($token, $type = null) {
        throw new NotSupportedException('"findIdentityByAccessToken" is not implemented.');
    }

    /**
     * 获取账号信息
     * @param  [string] $username [用户名]
     */
    public static function findByUsername($username) {
        return static::findOne(['username' => $username, 'status' => self::STATUS_ACTIVE]);
    }

    /**
     * 获取账号主键值(id)
     */
    public function getId() {
        return $this->getPrimaryKey();
    }

    /**
     * 获取账号auth_key值
     */
    public function getAuthKey() {
        return $this->auth_key;
    }

    /**
     * 验证auth_key
     * @param  [string] $authKey [auth key]
     */
    public function validateAuthKey($authKey) {
        return $this->getAuthKey() === $authKey;
    }

    /**
     * 验证用户密码
     * @param  [string] $password [用户密码]
     */
    public function validatePassword($password) {
        return Yii::$app->security->validatePassword($password, $this->password_hash);
    }

    /**
     * 生成加密后的密码
     * @param [string] $password [用户密码]
     */
    public function setPassword($password) {
        $this->password_hash = Yii::$app->security->generatePasswordHash($password);
    }

    /**
     * 生成auth_key
     * @return [type] [description]
     */
    public function generateAuthKey() {
        $this->auth_key = Yii::$app->security->generateRandomString();
    }

    /**
     * 获取账号状态
     */
    public function getStatus() {
        return self::$statusTexts[$this->status];
    }

    /**
     * 获取账号状态样式
     */
    public function getStatusStyle() {
        return self::$statusStyles[$this->status];
    }

    /**
     * 获取状态
     */
    public function getStatusTexts() {
        return self::$statusTexts;
    }

    //获取用户所在的用户组
    public function getGroup() {
        return implode(',', array_keys(Yii::$app->authManager->getRolesByUser($this->id)));
    }

    public function beforeSave($insert) {
        if($this->isNewRecord) {
            $this->generateAuthKey();
            $this->reg_ip = ip2long(Yii::$app->getRequest()->getUserIP());
            $this->last_login_time = 0;
            $this->last_login_ip = 0;
        }
        if(!empty($this->password)) $this->setPassword($this->password);
        return parent::beforeSave($insert);
    }

    /**
    生成唯一标识
     * 下面返回控制和400主要是为了检测函调用函数getXingList哪一步出现问题方便排查
     * 和程序可以继续排查几乎对数据无任何影响 只是让规范性差点
     **/
    public  function create_unique() {
        $data = ''.(int)time() .'_'.(int)rand(1,100000);
        if(Func::getXingList()==400){
            return "云莓".$data;
        } elseif (!Func::getXingList()){
            return $data.'!'.'空';
        }else{
            return  Func::getXingList().'_'.$data;
        }
    }

    //根据类型得出类型名称
    public function create_type_name($type_name){
        echo $type_name.'type_name';
        foreach($this->array as $key=>$value){
            if($type_name ==$key){
                echo $value.'value';
                return $value;
            }
        }
    }

}

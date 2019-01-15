<?php

namespace backend\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "{{%vpnandroid}}".
 *
 * @property int $id 自增ID
 * @property string $devicenum 设备号
 * @property string $username vpn用户名
 * @property string $password vpn密码
 * @property int $isinuse 是否有效0(代表无效)1(代表有效)
 * @property int $created_at 创建时间
 * @property int $updated_at 最新一次修改时间
 * @property string $server 域名
 */
class Vpnandroid extends \yii\db\ActiveRecord
{
    const REBOOT = 0;
    const DONE =  1 ;

    public static $isinuse = [
        self::REBOOT => "无效",
        self::DONE =>"有效",
    ];

    public static $statusStyles = [
        self::REBOOT => 'label-warning',
        self::DONE => 'label-info',
    ];

    public function __construct() {
        $this->isinuse = self::DONE;
    }
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%vpnandroid}}';
    }

    public function behaviors() {
        return [
            TimestampBehavior::className(),
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['devicenum' ,'server', 'username', 'password'], 'required'],
            [['isinuse', 'created_at', 'updated_at'], 'integer'],
            [['devicenum', 'server', 'username', 'password'], 'string', 'max' => 100],
            [['username','devicenum',], 'unique'],
        ];
    }

    public function getRadio(){
        return self::$isinuse;
    }

    /**
     * 获取菜单状态isinuse
     */
    public static function getStatusText($status) {
        if($status===1 || $status===0) {
            return self::$isinuse[$status];
        }else{
            return "参数错误";
        }
    }

    /**
     * 获取菜单状态样式isinuse
     */
    public static function getStatusStyle($status) {
        if($status===1 || $status===0){
            return self::$statusStyles[$status];
        }else{
            return "label-info";
        }
    }


    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'devicenum' => '设备号',
            'server' => '域名',
            'username' => '用户名',
            'password' => '密码',
            'isinuse' => '状态',
            'created_at' => '添加时间',
            'updated_at' => '更新时间',

        ];
    }
}

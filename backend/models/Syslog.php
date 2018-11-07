<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%syslog}}".
 *
 * @property int $id 自增id
 * @property int $uid 用户id
 * @property string $username 名称
 * @property string $controller 控制器
 * @property string $models 模块
 * @property string $action 方法
 * @property int $create_at 添加时间
 */
class Syslog extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%syslog}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['uid', 'username', 'models', 'action', 'create_at'], 'required'],
            [['uid', 'create_at'], 'integer'],
            [['username', 'controller', 'models', 'action'], 'string', 'max' => 250],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'uid' => '用户id',
            'username' => '用户名称',
//            'controller' => '控制器名称',
            'models' => '模块',
            'action' => '方法',
            'create_at' => '时间',
            'ip'=>'訪問者ip地址',
            'modulee'=>'模块名称'
        ];
    }

    public static function logs($log_module,$log_action){
        if($log_action!='未定义' && $log_module!='未定乂'){
            $Logs = new Syslog();
            $Logs->uid = \Yii::$app->user->identity->id;
            $Logs->username = \Yii::$app->user->identity->username;
            if(!empty($_GET['menutype'])) $Logs->menutype = intval($_GET['menutype']);
            $Logs->models = $log_module;
            $Logs->modulee = \Yii::$app->controller->module->id;
            $Logs->action = $log_action;
            $Logs->create_at = time();
            $Logs->ip = \Yii::$app->request->getUserIP();
            $Logs->save();
//            echo "<pre>";
//            var_dump($Logs);die;
        }
    }
}

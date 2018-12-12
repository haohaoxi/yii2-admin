<?php

namespace backend\models;

use Yii;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "{{%android}}".
 *
 * @property string $id 自增id
 * @property string $number 机器型号
 * @property string $status 状态
 */
class Android extends \yii\db\ActiveRecord
{
    const REBOOT = 0;
    const DONE =  1 ;
    const UNCLICKABLE = 0;
    const CLICKABLE = 1;

    public static $status = [
        self::REBOOT => "重启",
        self::DONE =>"不进行任何操作",
    ];

    public static $canclickad = [
        self::UNCLICKABLE =>"不可点击",
        self::CLICKABLE => "可点击",
    ];

    public static $statusStyles = [
        self::REBOOT => 'label-warning',
        self::DONE => 'label-info',
    ];

    public function __construct() {
        $this->status = self::REBOOT;
        $this->canclickad  = self::UNCLICKABLE;
    }

    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%android}}';
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
            [['number', 'status'], 'required'],
            [['created_at', 'updated_at'], 'integer'],
            [['number'], 'string', 'max' => 255],
            [['status'], 'string', 'max' => 100],
            [['canclickad'], 'string', 'max' => 100],

        ];
    }

    /**
     * @return array
     * 获取数组显示 status
     */
    public function getRadio(){
        return self::$status;
    }

    /**
     * @return array
     * 获取数组显示 canclickad
     */
    public function getCanclickad(){
        return self::$canclickad;
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'number' => '机器型号',
            'status' => '状态',
            'canclickad' => '状态2',
            'created_at' => '添加时间',
            'updated_at' => '机器修改时间',
        ];
    }

    /**
     * 获取菜单状态status
     */
    public static function getStatusText($status) {
        if($status==="1" || $status==="0") {
            return self::$status[$status];
        }else{
            return "参数错误";
        }
    }

    /**
     * 获取菜单状态样式status
     */
    public static function getStatusStyle($status) {
        if($status==="1" || $status==="0"){
            return self::$statusStyles[$status];
        }else{
            return "label-info";
        }
    }

    /**
     * @param $canclickad
     * @return string
     * 获取单选状态
     */
    public static function getCanclickadText($canclickad) {
        if($canclickad==="1" || $canclickad==="0") {
            return self::$canclickad[$canclickad];
        }else{
            return "参数错误";
        }
    }
    /**
     * @param $canclickad
     * @return string
     * 获取单选样式
     */
    public static function getCanclickadType($canclickad) {
        if($canclickad==="1" || $canclickad==="0") {
            return self::$statusStyles[$canclickad];
        }else{
            return "label-info";
        }
    }
}

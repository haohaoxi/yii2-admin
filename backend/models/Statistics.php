<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%statistics}}".
 *
 * @property string $id 自增id
 * @property int $admin_id 用户id
 * @property string $admin_name 用户名称
 * @property string $ip 用户ip
 * @property int $created_at 添加时间
 * @property string $phone_model 手机型号
 * @property string $phone_size 手机尺寸
 */
class Statistics extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%statistics}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['admin_id', 'admin_name', 'ip', 'created_at', 'phone_model', 'phone_size'], 'required'],
            [['admin_id', 'created_at'], 'integer'],
            [['admin_name', 'ip'], 'string', 'max' => 100],
            [['phone_model', 'phone_size'], 'string', 'max' => 255],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'admin_id' => 'Admin ID',
            'admin_name' => 'Admin Name',
            'ip' => 'Ip',
            'created_at' => 'Created At',
            'phone_model' => 'Phone Model',
            'phone_size' => 'Phone Size',
        ];
    }
}

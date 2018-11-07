<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%adtylenum}}".
 *
 * @property string $id 自增id
 * @property string $adtyle_name 广告类型名称
 * @property string $soft_delete 1(显示)2(不显示)
 * @property int $adtyle_created_at 创建时间
 * @property int $adtyle_updated_at 更新时间
 */
class Adtylenum extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%adtylenum}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['adtyle_name'], 'required'],
            [['soft_delete', 'adtyle_created_at', 'adtyle_updated_at'], 'integer'],
            [['adtyle_name'], 'string', 'max' => 255],
        ];
    }


    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'adtyle_name' => '类型名称',
            'soft_delete' => '软删除',
            'adtyle_created_at' => '创建时间',
            'adtyle_updated_at' => '更新时间',
        ];
    }

    public static  function adty_list(){
        return array('上悬浮'=>'上悬浮','下悬浮'=>'下悬浮','固定位'=>'固定位','跳转类型'=>'跳转类型');
    }
}

<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%advert_content}}".
 *
 * @property string $id 自增id
 * @property int $admin_id 用户id
 * @property int $enum_id 广告类型id
 * @property string $content_js 生成的js文件
 * @property string $content_image 图片地址
 * @property string $content_url 地址路径
 * @property int $content_created_at 添加时间
 * @property int $content_updated_at 更新时间
 */
class Advertcontent extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%advert_content}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['content_image','enum_id'], 'required'],
            [[ 'content_created_at'], 'integer'],
            [['content_js', 'content_url'], 'string', 'max' => 255],
            ['content_image','file'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'admin_id' => '用户ID',
            'enum_id' => '广告类型ID',
            'content_js' => '生成js',
            'content_image' => '图片',
            'content_url' => '路由',
            'content_created_at' => '添加时间',
            'content_updated_at' => '更新时间',
        ];
    }
    //获取类型表中的类型
    public static function adtylenum_list($list){
        $Adtylenum = new Adtylenum();
        $data = $Adtylenum::find()->select(['id','adtyle_name'])->asArray()->all();
        foreach($data as $key=>$value){
            $list[$value['id']] = $value['adtyle_name'];
        }
        return $list;
    }

    //获取admin用户表中的信息
    public static function admin_list($list){

        $admin = new Admin();
        $data = $admin::find()->select(['id','series_number'])->where(['NOT',['id'=>1]])->asArray()->all();
        foreach($data as $key=>$value){
            $list[$value['id']] = $value['series_number'];
        }
        return $list;
    }
}

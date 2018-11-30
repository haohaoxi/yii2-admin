<?php

namespace backend\models;

use Yii;

/**
 * This is the model class for table "{{%adver_js}}".
 *
 * @property int $id 自增id
 * @property int $admin_id 用户id
 * @property int $enum_id 广告类型id
 * @property string $content 需要生成的url或者js
 * @property string $content_js 生成后的js代码
 * @property int $created_at 添加时间
 * @property int $updated_at 更新时间
 */
class Adverjs extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return '{{%adver_js}}';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['admin_id', 'enum_id', 'content', 'created_at'], 'required'],
            [['admin_id', 'enum_id', 'created_at', 'updated_at'], 'integer'],
            [['content', 'content_js'], 'string', 'max' => 1000],
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
            'enum_id' => '广告ID',
            'content' => '填写内容',
            'content_js' => '生成js内容',
            'created_at' => '添加时间',
            'updated_at' => '更新时间',
        ];
    }

    /**
     * @param $arraylist array 路由数组
     * @param $admin_id  string 用户唯一标识名称
     * @param $enum_id   string 类型名称 暂时没有用处
     * @param $addurl    string 数据返回地址
     * @return string   返回值 js数据
     */
    public static function wriTcontent($arraylist,$admin_id,$enum_id,$addurl){
      $count = count($arraylist);
      $json = json_encode((object)$arraylist);
      if($count ==1){
          $count = 0;
      }

        return "window.onload = function(){
        var json = $json;
        var randomNum = Math.round(Math.random() * $count);
        var  url = json[randomNum];
        let script = document.createElement('script');
        script.src = url
        script.id = 'adver'
        script.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(script);
        let scripts = document.createElement('script');
        scripts.src = '$addurl/statis/thestal?admin_id=1&name=$admin_id&enumlist=$enum_id';
        scripts.id = 'adver'
        scripts.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(scripts);
            }";
    }
}

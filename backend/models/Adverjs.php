<?php

namespace backend\models;
use Yii;
use yii\behaviors\TimestampBehavior;
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
            [['admin_id', 'enum_id', 'content'], 'required'],
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
     * @param $addurl    string 当前域名
     * @return string   返回值 js数据
     */
    public static function wriTcontent($arraylist,$admin_id,$enum_id,$addurl){
      $count = count($arraylist)-1;
      $json = json_encode((object)$arraylist);
      if($count ==1){
          $count = 0;
      }

        return "
        let scriptr = document.createElement('script');
        scriptr.src = '$addurl/statics/themes/admin/adverjs/mobile-detect.js';
        scriptr.id = 'adverr'
        scriptr.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(scriptr);
        
        let scriptrp = document.createElement('script');
        scriptrp.src = 'http://pv.sohu.com/cityjson?ie=utf-8';
        scriptrp.id = 'adverrp'
        scriptrp.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(scriptrp);
        
        window.onload = function(){
        function browserRedirect() {
        var sUserAgent = navigator.userAgent.toLowerCase();
        var bIsIpad = sUserAgent.match(/ipad/i) == \"ipad\";
        var bIsIphoneOs = sUserAgent.match(/iphone os/i) == \"iphone os\";
        var bIsMidp = sUserAgent.match(/midp/i) == \"midp\";
        var bIsUc7 = sUserAgent.match(/rv:1.2.3.4/i) == \"rv:1.2.3.4\";
        var bIsUc = sUserAgent.match(/ucweb/i) == \"ucweb\";
        var bIsAndroid = sUserAgent.match(/android/i) == \"android\";
        var bIsCE = sUserAgent.match(/windows ce/i) == \"windows ce\";
        var bIsWM = sUserAgent.match(/windows mobile/i) == \"windows mobile\";
        // document.writeln(\"您的浏览设备为：\");
        if (bIsIpad || bIsIphoneOs || bIsMidp || bIsUc7 || bIsUc || bIsAndroid || bIsCE || bIsWM) {
         return \"phone\";
        } else {
             return \"pc\";
        }
    }
        var phone_pc =   browserRedirect();
       
        var json = $json;
        var randomNum = Math.round(Math.random() * $count);
        var  url = json[randomNum];
        let script = document.createElement('script');
        script.src = url
        script.id = 'adver'
        script.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(script);
        
        
        var device_type = navigator.userAgent;//获取userAgent信息
        var md = new MobileDetect(device_type);//实例化mobile-detect
        var os = md.os();//获取系统
        var model = \"\";
    if (os == \"iOS\") {//ios系统的处理
        os = md.os() + md.version(\"iPhone\");
        model = md.mobile();
    } else if (os == \"AndroidOS\") {//Android系统的处理

        os = md.os() + md.version(\"Android\");
    }
        
        let scripts = document.createElement('script');
        scripts.src = 'http://adcapi.com/statis/thestal?admin_id=$admin_id&admin_name=$enum_id&ip='+returnCitySN.cip+
        \"&phone_size=\"+window.screen.height+'X'+window.screen.width+\"&phone_model=\"+os+\"&phone_pc=\"+phone_pc;
        scripts.id = 'adver'
        scripts.type = 'text/javascript'
        document.getElementsByTagName('head')[0].appendChild(scripts);
            };";
    }
}

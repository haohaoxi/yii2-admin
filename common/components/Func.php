<?php
/**
 * 公共函数
 * @author 边走边乔 <771405950>
 */
namespace common\components;

use phpDocumentor\Reflection\Types\Object_;
use phpDocumentor\Reflection\Types\Self_;
use Yii;

class Func {

    /**
     * 转换字节数为其他单位
     * @param string $filesize 字节大小
     * @return string 返回大小
     */
    public static function sizeCount($filesize){
        if ($filesize >= 1073741824) {
            $filesize = round($filesize / 1073741824 * 100) / 100 . ' GB';
        } elseif ($filesize >= 1048576) {
            $filesize = round($filesize / 1048576 * 100) / 100 . ' MB';
        } elseif ($filesize >= 1024) {
            $filesize = round($filesize / 1024 * 100) / 100 . ' KB';
        } else {
            $filesize = $filesize . ' Bytes';
        }
        return $filesize;
    }

    /**
        根据随机数返回一个姓
     *
     **/
    public static function getXingList()
    {
        $arrXing = array('赵','钱','孙','李','周','吴','郑','王','冯','陈','褚','卫','蒋','沈','韩',
            '杨','朱','秦','尤','许','何','吕','施','张','孔','曹','严','华','金','魏','陶','姜','戚','谢',
            '邹','喻','柏','水','窦','章','云','苏','潘','葛','奚','范','彭','郎','鲁','韦','昌','马','苗',
            '凤','花','方','任','袁','柳','鲍','史','唐','费','薛','雷','贺','倪','汤','滕','殷','罗','毕',
            '郝','安','常','傅','卞','齐','元','顾','孟','平','黄','穆','萧','尹','姚','邵','湛','汪','祁','毛',
            '狄','米','伏','成','戴','谈','宋','茅','庞','熊','纪','舒','屈','项','祝','董','梁','杜','阮','蓝','闵',
            '季','贾','路','娄','江','童','颜','郭','梅','盛','林','钟','徐','邱','骆','高','夏','蔡','田','樊','胡','凌',
            '霍','虞','万','支','柯','管','卢','莫','柯','房','裘','缪','解','应','宗','丁','宣','邓','单','杭','洪','包','诸',
            '左','石','崔','吉','龚','程','嵇','邢','裴','陆','荣','翁','荀','于','惠','甄','曲','封','储','仲','伊','宁','仇','甘',
            '武','符','刘','景','詹','龙','叶','幸','司','黎','溥','印','怀','蒲','邰','从','索','赖','卓','屠','池','乔','胥','闻',
            '莘','党','翟','谭','贡','劳','逄','姬','申','扶','堵','冉','宰','雍','桑','寿','通','燕','浦','尚','农','温','别','庄',
            '晏','柴','瞿','阎','连','习','容','向','古','易','廖','庾','终','步','都','耿','满','弘','匡','国','文','寇','广','禄',
            '阙','东','欧','利','师','巩','聂','关','荆','司马','上官','欧阳','夏侯','诸葛','闻人','东方','赫连','皇甫','尉迟','公羊',
            '澹台','公冶','宗政','濮阳','淳于','单于','太叔','申屠','公孙','仲孙','轩辕','令狐','徐离','宇文','长孙','慕容','司徒','司空');
        if(count($arrXing)){
            $number = rand(0,count($arrXing)-1);
            foreach($arrXing as $key=>$value){
                if($number>=$arrXing){
                    return "";
                }
                if($key === $number){
                    return $value;
                }
            }
        }else{
            return "400";
        }
    }

    public static function updateimage($image){
        if($image->name){
            $file_ext = $image->getExtension(); //截取原图片名称后缀
        if($file_ext =='jpg' || $file_ext=='png'){
            $file_name = date("YmdHis").'_'.rand(10000,99999).'.'.$file_ext;//上传文件名称
            $uploads = '/themes/admin'."/uploads/images/" . date('Ymd') . "/";//相对路径
            $rPath = Yii::getAlias('@statics'.$uploads);//根目录存放地址
            if (!file_exists($rPath)) {
                mkdir($rPath,0777,true);
                chmod($rPath,0777);
            }
            if ($image->saveAs($rPath.$file_name)){
//                $filename =  $rPath.$file_name;
            } else {
                Yii::$app->session->setFlash('success', '上传文件失败');die;
            }
        }else{
            return "图片错误";
        }
        }

        return  '/statics'.$uploads.$file_name;
    }

}
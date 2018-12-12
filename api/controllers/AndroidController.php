<?php

namespace api\controllers;

use Yii;
use yii\rest\ActiveController;
use api\functionGlobal\FunctionRand;


/**
 * StatisticsController implements the CRUD actions for Statistics model.
 */

class AndroidController extends  ActiveController
{
    public $modelClass = "";
    public function actions(){
        $action = parent::actions();
        unset($action['index']);
        unset($action['create']);
        unset($action['update']);
        unset($action['delete']);
    }

    /**
     * @throws \yii\db\Exception
     * 机器型号接口
     */
    public function  actionEquipment()
    {
        if(Yii::$app->request->isGet){
            $connection = \Yii::$app->db;
            $list = $_REQUEST;
            if($list['number']){
            $time = time();
            $content  = $connection->createCommand("select * from yunmei_android where number = '{$list['number']}'")->execute();
            if($content<=1){
                if ($content < 1) {
                    if(count($list)<=2){
                        $list['canClickAd'] = "无";
                    }
                    $sql = "INSERT INTO yunmei_android (number,status,canclickad,created_at)value('{$list['number']}','{$list['status']}','{$list['canClickAd']}',$time)";
                    $content = $connection->createCommand("$sql")->execute();
                    FunctionRand::View("2","insert".$list['number'],'OK',"$content");
                } else {
                    if(count($list)<=2){
                        $sql = "UPDATE yunmei_android SET status='{$list['status']}',updated_at=$time where number='{$list['number']}'";
                    }else{
                        $sql = "UPDATE yunmei_android SET status='{$list['status']}',canclickad='{$list['canClickAd']}',updated_at=$time where number='{$list['number']}'";
                    }

                    $content = $connection->createCommand("$sql")->execute();
                    FunctionRand::View("2","update".$list['number'],'OK',"$content");
                }
            }else{
                    FunctionRand::Error("0-1","参数不是唯一与数据库重复冲突");
            }
            }else{
                FunctionRand::Error("0-2","参数不存在请求失败");
            }
        }else{
            FunctionRand::Error("0-3","请求方式错误",'NO');
        }

    }

    public function actionNumberlist(){
        if(Yii::$app->request->isGet){
            $connection = \Yii::$app->db;
            $list = $_REQUEST;
            if(isset($list['number'])){
                $time = time();
                $content  = $connection->createCommand("select * from yunmei_android where number = '{$list['number']}'")->queryOne();
               if($content==false){
                   $sql = "INSERT INTO yunmei_android (number,status,canclickad,created_at)value('{$list['number']}','1','0',$time)";
                   $content = $connection->createCommand("$sql")->execute();
                   FunctionRand::View("2","INSERT".$list['number'],'OK',0);
               }
               $number['number'] = $content['number'];
               $number['status'] = $content['status'];
               $number['canClickAd'] = $content['canclickad'];
                FunctionRand::View("2",$list['number'],'OK',$number);
            }else{
                FunctionRand::Error("0-1","postnumber");
            }
        }else{
            FunctionRand::Error("0-3","请求方式错误",'NO');
        }
    }
}
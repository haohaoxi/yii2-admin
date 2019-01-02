<?php

namespace api\controllers;

use Yii;
use yii\rest\ActiveController;
use api\functionGlobal\FunctionRand;


/**
 * StatisticsController implements the CRUD actions for Statistics model.
 */

class StatisController extends  ActiveController
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
     * Theins 页面加载统计接口
     * get 方式请求
     * 参数 待定
     */

    public function getmicrotime(){
        return time();
    }
//redis 入队操作
    public function actionThestal()
    {
        if(Yii::$app->request->get()){
            $redis = Yii::$app->redis;
            if($_REQUEST){
                $_REQUEST['created_at'] = time();
                $data = json_encode($_REQUEST);
//                var_dump($data);
                $push = $redis->lpush("queue",$data);//入队 列表
                 $redis->set("list",$push);
                die;
//               FunctionRand::View(1,'success','ok',1);
            }else{
//                FunctionRand::Error('2','请求参数不正确');
            }

//            FunctionRand::View(1,'success','OK',1);
        }else{
//            FunctionRand::Error('2','请求方式错误');
        }

    }

    public function actionThelpop(){
        $redis = Yii::$app->redis;
        if($redis->get("list")){
            $connection = \Yii::$app->db;
            $vals = "";
            $statime = microtime(true);
        while($lpop = $redis->lpop("queue")){
            $value = json_decode($lpop,true);
            $val = "({$value['admin_id']},'{$value['admin_name']}','{$value['ip']}','{$value['created_at']}','{$value['phone_model']}','{$value['phone_size']}','{$value['phone_pc']}')";
            $vals .= $val.',';
        }
        $content = substr($vals,0,-1);
        $sql = "INSERT INTO yunmei_statistics (admin_id,admin_name,ip,created_at,phone_model,phone_size,phone_pc) values $content";
        $content  = $connection->createCommand("$sql")->execute();
        $redis->del("list");
        die;
            FunctionRand::View(3,'success','Nok',$content);

        } else{
            FunctionRand::View(3,'success','Nok','2');
        }
    }

    /**
     * Thestad
     * 页面点击统计接口
     * get 当时请求
     * 参数 待定
     */
    public function actionThestad(){

    }



    /**
     * Thestar
     * 页面注册接口统计
     * get方式请求
     * 参数 待定
     * 5181111800329866
     */
    public function actionThestar(){



    }

}

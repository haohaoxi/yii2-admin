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

    public  $arri = array();
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

    public function actionThestal()
    {
        $redis = Yii::$app->redis;
       $data = $_REQUEST;
        $data = json_encode($data);

        $in = $redis->rpush('queue',$data);
        echo $in;
        if($in){
            echo "入队成功";
        }
//        $redis->flushdb();
//        DIE;
        if($in>100){
            $i = 0;
            $vals  = "";
            $t1 = microtime(true);
        while ($value  = $redis->lpop('queue')) {
            $i++;
            $created_at = time();
            $value = json_decode($value,true);
            $connection = \Yii::$app->db;
                $val = "({$value['admin_id']},'','','','','')";
                $vals .= $val.',';
        }
            $content = substr($vals,0,-1);
                $sql = "INSERT INTO yunmei_statistics (admin_id,admin_name,ip,created_at,phone_model,phone_size) values
                $content";
                $content  = $connection->createCommand("$sql")->execute();

            $t2 = microtime(true);
            $time =  round($t2-$t1,3);
            echo $time;
            $redis->rpush("qu",$time);
        FunctionRand::View(1,'success','OK',1);
        }
        
        die;
        echo "出队完成";
//        $value = $redis->lpop('queue'); //出
//        if($value){
//            $value = json_decode($value,true);
//        }else{
//            echo "队列以空不在执行";
//            die;
//        }
//        print_r($value);
//        $redis->hmset('info','22','来不及挥手');
//        $hash = $redis->hgetall('info');
//        $redis->del("info");
//        echo "<pre>";
//        print_r($hash);
        if(Yii::$app->request->get()){


            FunctionRand::View(1,'success','OK',$content);
        }else{
            FunctionRand::Error('2','请求方式错误');
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

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
    public $list;
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
    /**
     * redis 入队
     * queue    列表形式存入数据
     * num    数字类型统计成功插入队列条数 在出队插入时用到
     * jishu  单纯的统计成功条数 脚本不会清楚 手动清楚
     **/

    public function actionThestal()
    {
        if(Yii::$app->request->get()){
            $redis = Yii::$app->redis;
            if($_REQUEST){
                $_REQUEST['created_at'] = time();
                $data = json_encode($_REQUEST);
                $redis->lpush("queue",$data);
                $redis->incr("num");
                $redis->incr("jishu");
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
        if($redis->get("num")){
            $connection = \Yii::$app->db;
            $vals = "";
            $i = 0;
        while($lpop = $redis->lpop("queue")){
            $value = json_decode($lpop,true);
            $i++;
            $redis->decr("num");
            if( $i>2000){ break; }
            $val = "({$value['admin_id']},'{$value['admin_name']}','{$value['ip']}','{$value['created_at']}','{$value['phone_model']}','{$value['phone_size']}','{$value['phone_pc']}')";
            $vals .= $val.',';

        }
        $content = substr($vals,0,-1);
        $sql = "INSERT INTO yunmei_statistics (admin_id,admin_name,ip,created_at,phone_model,phone_size,phone_pc) values $content";
        $content  = $connection->createCommand("$sql")->execute();
        die;
            FunctionRand::View(3,'success','Nok',$content);

        } else{
            FunctionRand::View(3,'success','Nok','not');
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

<?php

namespace api\controllers;

use Yii;
use yii\rest\ActiveController;
use api\functionGlobal\FunctionRand;


/**
 * StatisticsController implements the CRUD actions for Statistics model.
 */

class VpnandroidController extends  ActiveController
{
    public $modelClass = "";

    public function actions()
    {
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
    public function actionGetdialinfo()
    {
        if (Yii::$app->request->get()) {
            $connection = \Yii::$app->db;
            $devicenum =  $_GET['devicenum'];
            if($devicenum){
                $list = $connection->createCommand("select * from yunmei_vpnandroid where devicenum='{$devicenum}'")->queryOne();
                FunctionRand::View("2",$devicenum,'OK',$list);
            }else{
                FunctionRand::Error("0",$devicenum."参数不存在");
            }
        }else{
            FunctionRand::Error("0","请求方式错误");
        }

    }
}

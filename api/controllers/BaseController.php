<?php
namespace api\controllers;

use Yii;
use yii\web\Controller;
use backend\models\LoginForm;
use yii\filters\VerbFilter;
//use yii\filters\AccessControl;
use backend\components\AccessControl;
use backend\models\Config;
use backend\models\Syslog;

class BaseController extends Controller {


    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    //'logout' => ['post'],
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
        ];
    }




    /**
     * 初始化配置信息
     * 网站配置或模板配置等
     */
    public function init() {
        parent::init();
        Yii::$app->params['basic'] = Config::getConfigs('basic');
        return true;
    }



}
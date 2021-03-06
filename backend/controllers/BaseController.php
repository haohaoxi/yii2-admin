<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use backend\models\LoginForm;
use yii\filters\VerbFilter;
//use yii\filters\AccessControl;
use backend\components\AccessControl;
use backend\models\Config;
use backend\models\Syslog;

class BaseController extends Controller {

    public $_log_module = '未定义';
    public $_log_action = '未定义';
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

    function afterAction($action,$result){
        $result = parent::afterAction($action,$result);
        Syslog::logs($this->_log_module,$this->_log_action);
        return $result;
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

    /**
     * 后台登录
     */
    public function actionLogin() {
        $this->layout = false;
        if (!Yii::$app->user->isGuest) return $this->goHome();

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) return $this->goBack();
        else return $this->render('login', [
                'model' => $model,
            ]);
    }

    /**
     * 退出登录
     */
    public function actionLogout() {
        Yii::$app->user->logout();
        return $this->goHome();
    }

}
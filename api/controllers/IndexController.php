<?php
namespace api\controllers;

use Yii;

class IndexController extends BaseController {

    public function actionIndex() {

            echo 11111;die;
        return $this->render('index');
    }

}

<?php

namespace backend\controllers;

use Yii;
use backend\models\Adtylenum;
use backend\models\search\AdtylenumSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * AdtylenumController implements the CRUD actions for Adtylenum model.
 */
class AdtylenumController extends BaseController
{
    public $_log_module = "广告类型";
    /**
     * {@inheritdoc}
     */
//    public function behaviors()
//    {
//        return [
//            'verbs' => [
//                'class' => VerbFilter::className(),
//                'actions' => [
//                    'delete' => ['POST'],
//                ],
//            ],
//        ];
//    }

    /**
     * Lists all Adtylenum models.
     * @return mixed
     */
    public function actionIndex()
    {
        $this->_log_action = "访问广告类型";
        $searchModel = new AdtylenumSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Adtylenum model.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = "查询广告类型".':'.$model->id.'...'.$model->adtyle_name;
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Adtylenum model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Adtylenum();
        $this->_log_action = "添加广告类型";
        if ($model->load(Yii::$app->request->post())) {
            $model->adtyle_created_at = time();
            $model->save();
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Adtylenum model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = "更新广告类型".':'.$model->id.'....'.$model->adtyle_name;
        if ($model->load(Yii::$app->request->post())) {
            $model->adtyle_updated_at = time();
            $model->save();
            return $this->redirect(['index']);
        }
        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Adtylenum model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $this->findModel($id)->delete();
        $this->_log_action = '删除广告i类型'.":".$model->id.'....'.$model->adtyle_name;
        return $this->redirect(['index']);
    }

    /**
     * Finds the Adtylenum model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Adtylenum the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Adtylenum::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

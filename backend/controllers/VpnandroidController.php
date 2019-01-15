<?php

namespace backend\controllers;

use Yii;
use backend\models\Vpnandroid;
use backend\models\search\VpnandroidSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * VpnandroidController implements the CRUD actions for Vpnandroid model.
 */
class VpnandroidController extends BaseController
{
    /**
     * Lists all Vpnandroid models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new VpnandroidSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Vpnandroid model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Vpnandroid model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Vpnandroid();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Vpnandroid model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Vpnandroid model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    public function actionStatus($list,$nameid){
        if(Yii::$app->request->get()){
            if($nameid){
              $arrlist =  explode(",",substr($list,0,strlen($list)-1));
              $num = "";
             if($nameid=="but"){
                 foreach ($arrlist as $key=>$value){
                     $num .= Vpnandroid::updateAll(["isinuse"=>0],['id'=>$value]);
                 }
                 Yii::$app->session->setFlash('success', '操作成功成功修改了'.strlen($num)."状态为无效");
             }else if($nameid=="buts"){
                 foreach ($arrlist as $key=>$value){
                     $num .= Vpnandroid::updateAll(["isinuse"=>1],["id"=>$value]);
                 }
                 Yii::$app->session->setFlash('success','操作成功修改了'.strlen($num)."状态为有效");
             }else if($nameid=="dele"){
                    Vpnandroid::deleteAll(['in','id',$arrlist]);
                 Yii::$app->session->setFlash('success','成功删除'.count($arrlist)."记录");
             }else{
                 Yii::$app->session->setFlash('success','参数丢失请检查');
             }

            }else{
                echo "参数丢失";
            }
        }else{
            echo "错误";
        }

    }

    /**
     * Finds the Vpnandroid model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Vpnandroid the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Vpnandroid::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

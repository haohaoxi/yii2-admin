<?php

namespace backend\controllers;

use common\components\Func;
use Yii;
use backend\models\Advertcontent;
use backend\models\search\AdvertcontentSearch;
use yii\rest\UpdateAction;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\web\UploadedFile;

/**
 * AdvertcontentController implements the CRUD actions for Advertcontent model.
 */
class AdvertcontentController extends BaseController
{
    public $_log_module = "广告内容";
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Advertcontent models.
     * @return mixed
     */
    public function actionIndex()
    {
        $this->_log_action = "访问广告内容";
        $searchModel = new AdvertcontentSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Advertcontent model.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = "查看广告内容详情".":".$model->id;
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Advertcontent model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $this->_log_action = "添加广告";
        $model = new Advertcontent();
        if ($model->load(Yii::$app->request->post())) {
            $post = $_POST['Advertcontent'];

            $image = UploadedFile::getInstanceByName('Advertcontent[content_image]');
            if($image){
                $content_image = Func::updateimage($image);
            }else{
                $content_image = "";
            }
            if($post['admin_id']){ //判断用户id是否选中 如果有截取出用户id数组
                $admin_id =  array_slice($post['admin_id'],0);
                if(count($post['admin_id'])>1){ //判断用户id数组是否大于1
                    $content_url = explode(',',$post['content_url']);
                    foreach ($admin_id as $key=>$value){
                        $model->admin_id = $value;
                        $model->content_image = $content_image;
                        $model->content_created_at = time();
                        $model->content_url = $content_url[$key];
                        $model->isNewRecord = true;
                        $model->setAttributes($model);
                        $model->save() && $model->id=0;
                    }
                }else{
                    $model->admin_id = $admin_id['0'];
                    $model->content_image = $content_image;
                    $model->content_created_at = time();
                    $model->content_url = $post['content_url'];
                    $model->save();
                }
            }else{
                $model->content_image = $content_image;
                $model->content_created_at = time();
                $model->save();
            }
            return $this->redirect(['index']);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }
    /**
     * Updates an existing Advertcontent model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = "更新广告内容".":".$model->id;
        if ($model->load(Yii::$app->request->post())) {
            $image = UploadedFile::getInstanceByName('Advertcontent[content_image]');
            if($image){
                $content_image = Func::updateimage($image);
               $image_path =  dirname(Yii::getAlias('@statics')).$model['content_image'];
                if(is_file($image_path))
                {
                    unlink($image_path);
                }
            }
            $model->content_image = $content_image;
            $model->save();
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Advertcontent model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param string $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $this->findModel($id)->delete();
        $this->_log_action = "删除广告内容".":".$model->id;
        return $this->redirect(['index']);
    }

    /**
     * Finds the Advertcontent model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param string $id
     * @return Advertcontent the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Advertcontent::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

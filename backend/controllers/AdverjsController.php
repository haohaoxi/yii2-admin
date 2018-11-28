<?php

namespace backend\controllers;

use Yii;
use backend\models\Adverjs;
use backend\models\search\AdverjsSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\components\Func;
/**
 * AdverjsController implements the CRUD actions for Adverjs model.
 */
class AdverjsController extends BaseController
{
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
     * Lists all Adverjs models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new AdverjsSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Adverjs model.
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
     * Creates a new Adverjs model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Adverjs();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Adverjs model.
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
     * Deletes an existing Adverjs model.
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

    public function actionAjaxjs($content,$admin_id,$enum_id){
       if(Yii::$app->request->get()){
           var_dump($content);
           if(isset($content)){
               $arraylist = explode('-',$content);
               $path = dirname(Yii::$app->basePath).'\\'.'statics'.'\\'.'themes\\admin\\adverjs';
               if(!is_dir($path)){
                   mkdir($path,0777,true);
                   chmod($path,777);
               }
               sleep(1);
               $name = Func::getAbc("5");
               echo $path.'\\';
               $jsfile = fopen($path.'\\'.$name.'.js', "w");
               $text_js = Adverjs::wriTcontent();
               fwrite($jsfile,$text_js);
               var_dump($name);
//               foreach($arraylist as $key=>$value){
//

//               }
           }else{
               return "请求失败参数为空";
           }
            }else{
                return 400;
            }
    }

    /**
     * Finds the Adverjs model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Adverjs the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Adverjs::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

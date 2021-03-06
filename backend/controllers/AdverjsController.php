<?php

namespace backend\controllers;

use Yii;
use backend\models\Adverjs;
use backend\models\search\AdverjsSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use common\components\Func;
use yii\helpers\Url;
/**
 * AdverjsController implements the CRUD actions for Adverjs model.
 */
class AdverjsController extends BaseController
{

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

    /**
        $content  要生成url 链接 url-url-url
     * $admin_id   用户的id
     * $enum_id      广告位id
     * $content_js   create 时为空 update为已经生成的<script></script> 形式的链接 用于在生成js链接判断
      */
    public function actionAjaxjs($content,$admin_id,$enum_id,$content_js){
        $addinfo =  Yii::$app->request->hostInfo;
        if(!empty($content_js)){
            $name =  substr($content_js,-19,-14);
        }else{
            $name = Func::getAbc("5");//获得js文件名称
        }
        $addbase = Url::base();

        if(!empty($addbase)){
            $addurl = $addinfo.$addbase;
            $addinfobase = $addinfo.$addbase."/api/web";
        }else{
            $addurl = $addinfo.$addbase;
            $addinfobase = "http://b.kankexin.com";
        }
        $path = '/statics/themes/admin/adverjs';
       if(Yii::$app->request->get()){
           if(isset($content)){
               $arraylist = explode('-',$content);
               $pathadd = dirname(Yii::$app->basePath).$path;//js文件的绝对路径
               if(!is_dir($pathadd)){
                   mkdir($pathadd,777,true);
                   chmod($pathadd,777);
               }
               sleep(1);

               $text_js = Adverjs::wriTcontent($arraylist,$admin_id,$enum_id,$addurl,$addinfobase);
               $jsfile = fopen($pathadd.'/'.$name.'.js', "w"); //有就打开没有则创建的js文件名称

               fwrite($jsfile,$text_js);//写入文件内容
               fclose($jsfile);//关闭文件
               $pathurl = "<script type='text/javascript' src='$addurl$path/$name.js'></script>";
               return $pathurl;
               die;
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

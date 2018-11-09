<?php

namespace backend\controllers;

use Yii;
use backend\models\Menu;
use backend\models\search\MenuSearch;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;
use common\libs\Tree;

/**
 * MenuController implements the CRUD actions for Menu model.
 */
class MenuController extends BaseController
{
    public $_log_module = "后台菜单管理";
    /**
     * Lists all Menu models.
     * @return mixed
     */
    public function actionIndex()
    {

        $this->_log_action = "访问菜单管理";
        if (Yii::$app->request->isPost) {
            $sorts = Yii::$app->request->post('sort');
            if (!empty($sorts)) {
                foreach ($sorts as $id => $v) {
                    $model = Menu::findOne($id);
                    $model->sort = $v;
                    $model->save();
                    $this->_log_action ="菜单排序";
                }
                Yii::$app->session->setFlash('success', '操作成功');
            }
        }
        $searchModel = new MenuSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Menu model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = "查看菜单模块".':'.$model->id.'....'.$model->name;
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Menu model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
       
        $model = new Menu();
            $this->_log_action = "添加菜单";
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        } else {
            $model->pid = Yii::$app->request->get('pid', 0);
            $arr = Menu::find()->asArray()->all();
            $treeObj = new Tree($arr);
            return $this->render('create', [
                'model' => $model,
                'treeArr' => $treeObj->getTree(),
            ]);
        }
    }

    /**
     * Updates an existing Menu model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = "更新子菜单".':'.$model->pid.'....'.$model->id;
        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['index']);
        } else {
            $arr = Menu::find()->asArray()->all();
            $treeObj = new Tree($arr);
            return $this->render('update', [
                'model' => $model,
                'treeArr' => $treeObj->getTree(),
            ]);
        }
    }

    /**
     * Deletes an existing Menu model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $model  = $this->findModel($id);
        $this->findModel($id)->delete();
        $this->_log_action = "添加子菜单".':'.$model->pid.'....'.$model->id;
        return $this->redirect(['index']);
    }

    /**
     * Finds the Menu model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Menu the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Menu::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}

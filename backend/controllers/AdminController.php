<?php
namespace backend\controllers;

use Yii;
use backend\models\Admin;
use backend\models\search\AdminSearch;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\rbac\Item;
use backend\models\search\AuthItemSearch;

/**
 * AdminController implements the CRUD actions for Admin model.
 */
class AdminController extends BaseController
{
    public $_log_module = '管理员管理';
    public $type = Item::TYPE_ROLE;

    /**
     * Lists all Admin models.
     * @return mixed
     */
    public function actionIndex()
    {
        $this->_log_action = '访问管理员';
        $searchModel = new AdminSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        $dataProvider->setSort(false); //禁止表头排序

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Admin model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = '访问管理员'.':'.$model->username;
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Admin model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $this->_log_action = "添加管理员";
        $model = new Admin();
        $model->scenario = 'create';
        $model->status = Admin::STATUS_ACTIVE;
        if ($model->load(Yii::$app->request->post())) {
            $model->type_name = $model->create_type_name(Yii::$app->request->post("Admin", "1")['user_type']);
            $model->save();
            return $this->redirect(['index']);
        } else {
            return $this->render('create', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Updates an existing Admin model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $this->_log_action = "更新管理员".':'.$model->username;
        $model->scenario = 'update';
        if ($model->load(Yii::$app->request->post())) {
            $model->type_name = $model->create_type_name(Yii::$app->request->post("Admin", "1")['user_type']);
            $model->save();
            return $this->redirect(['index']);
        } else {
            return $this->render('update', [
                'model' => $model,
            ]);
        }
    }

    /**
     * Deletes an existing Admin model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $model = $this->findModel($id);
        $this->findModel($id)->delete();
        $this->_log_action = "删除管理员".':'.$model->username;
        return $this->redirect(['index']);
    }

    public function actionAuth($id) {
        $authManager = Yii::$app->authManager;
        $adminModel = $this->findModel($id);
        if(Yii::$app->request->isPost) {
            $roleName = Yii::$app->request->post('roleName', '');
            //删除用户所在的用户组
            $authManager->revokeAll($id);
            //添加用户组
            $authManager->assign($authManager->getRole($roleName), $id);
            Yii::$app->session->setFlash('success', '操作成功');
            $this->_log_action = "管理员授权:".':'.$adminModel->username;
        }

        $searchModel = new AuthItemSearch();
        $searchModel->type = $this->type;
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);
        //获取当前用户的所有用户组
        $adminGroups = array_keys($authManager->getAssignments($id));
        //var_dump($dataProvider);exit();
        return $this->render('auth', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'adminGroups' => $adminGroups,
        ]);
    }

    /**
     * Finds the Admin model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Admin the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Admin::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}

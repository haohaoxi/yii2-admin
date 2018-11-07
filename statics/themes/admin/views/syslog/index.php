<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\SyslogSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '日志系統';
$this->params['breadcrumbs'][] = ['label' => '管理员设置', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="syslog-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'filterPosition' => GridView::FILTER_POS_FOOTER,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
//            'id',
//            'uid',
            'username',
//            'controller',
            'models',
            'action',
            ['attribute'=>'create_at','value'=>function($model){
                return $model->create_at ==0?0: date("Y-m-d H:i:d",$model->create_at);
            }],
            'ip',
            'modulee',


        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>

<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\StatisticsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '角色管理';
$this->params['breadcrumbs'][] = '数据统计列表';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="statistics-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Create Statistics', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'admin_id',
            'admin_name',
            'ip',
            'created_at',
            //'phone_model',
            //'phone_size',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>

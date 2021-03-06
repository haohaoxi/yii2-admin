<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\StatisticsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '数据列表';
$this->params['breadcrumbs'][] = '统计广告数据';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="statistics-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'filterPosition' => GridView::FILTER_POS_FOOTER,
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
    <?php Pjax::end(); ?>
</div>

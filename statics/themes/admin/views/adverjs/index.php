<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\AdverjsSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'js管理';
$this->params['breadcrumbs'][] = '广告生成js';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="adverjs-index">

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?=$this->render('_tab_menu');?>
    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'filterPosition' => GridView::FILTER_POS_FOOTER,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'admin_id',
            'enum_id',
            'content',
            'content_js',
            //'created_at',
            //'updated_at',

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>

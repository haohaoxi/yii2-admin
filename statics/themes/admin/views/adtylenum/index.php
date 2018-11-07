<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\AdtylenumSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->title = '广告类型';
$this->params['breadcrumbs'][] = ['label' => '广告模块', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="adtylenum-index">
    <?=$this->render('_tab_menu');?>

    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'filterPosition' => GridView::FILTER_POS_FOOTER,
        'layout' => '{items}{summary}{pager}',
        'columns' => [
//            ['class' => 'yii\grid\SerialColumn'],
            'id',
            'adtyle_name',
            ['attribute'=>'adtyle_created_at','value'=>function($model){
                return $model->adtyle_created_at==0?0: date('Y-m-d H:i:s',$model->adtyle_created_at);
            }],
            ['attribute'=>'adtyle_created_at','value'=>function($model){
            return $model->adtyle_updated_at==0?0: date('Y-m-d H:i:s',$model->adtyle_updated_at);
            }],
            [
              'class' => 'common\grid\ActionColumn',
             'template' => '{view} {update} {delete}',
            ],

        ],
    ]); ?>
    <?php Pjax::end(); ?>
</div>

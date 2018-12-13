<?php


use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\AdvertcontentSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = '广告内容';
$this->params['breadcrumbs'][] = ['label' => '广告模块', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertcontent-index">
    <?=$this->render('_tab_menu');?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <?php Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'filterPosition' => GridView::FILTER_POS_FOOTER,
        'layout' => '{items}{summary}{pager}',
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'id',
            'admin_id',
            'enum_id',
            'content_js',
//            'content_image',
            ['attribute'=>'content_image',
                'headerOptions' => ['width' => '106'],
                'format'=>['raw'],
                'value'=>function($model){
                return Html::img(Url::base().$model->content_image,['width'=>106,'height'=>36]);
                }
            ],
            'content_url:url',
            'content_created_at',
            'content_updated_at',

            [
             'class' => 'common\grid\ActionColumn',
             'template' => '{view} {update} {delete}',
            ],
        ],
    ]); ?>
    <?php Pjax::begin(); ?>
</div>

<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Adtylenum */


$this->title = '类型信息';
$this->params['breadcrumbs'][] = ['label' => '广告模块', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="adtylenum-view">

    <h1><?= Html::encode($this->title) ?></h1>
    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'adtyle_name',
            'soft_delete',
            'adtyle_created_at',
            'adtyle_updated_at',
        ],
    ]) ?>

</div>

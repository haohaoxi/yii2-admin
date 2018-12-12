<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Android */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Androids', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="android-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('更新型号', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('删除', ['delete', 'id' => $model->id], [
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
            'number',
            'status',
        ],
    ]) ?>

</div>

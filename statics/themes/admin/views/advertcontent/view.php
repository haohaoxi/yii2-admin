<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Advertcontent */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Advertcontents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertcontent-view">

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
            'admin_id',
            'enum_id',
            'content_js',
            'content_image',
            'content_url:url',
            'content_created_at',
            'content_updated_at',
        ],
    ]) ?>

</div>

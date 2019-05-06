<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model backend\models\Vpnandroid */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'VPN管理', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="vpnandroid-view">
    <p>
<!--        --><?php //echo  Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
<!--        --><?php //echo  Html::a('Delete', ['delete', 'id' => $model->id], [
//            'class' => 'btn btn-danger',
//            'data' => [
//                'confirm' => 'Are you sure you want to delete this item?',
//                'method' => 'POST',
//            ],
//        ]) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'devicenum',
            'username',
            'password',
            'isinuse',
            'created_at',
            'updated_at',
            'server',
        ],
    ]) ?>

</div>
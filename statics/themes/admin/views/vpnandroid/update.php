<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Vpnandroid */

$this->title = 'Update Vpnandroid: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Vpnandroids', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="vpnandroid-update">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

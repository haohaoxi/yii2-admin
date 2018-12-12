<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Android */

$this->title = '更新型号: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Androids', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = '更新型号';
?>
<div class="android-update">

    <?=$this->render('_tab_menu');?>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

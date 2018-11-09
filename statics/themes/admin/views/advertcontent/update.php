<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Advertcontent */

$this->title = '更新广告: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => '广告内容', 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = '更新广告';
?>
<div class="advertcontent-update">
    <?=$this->render('_tab_menu');?>

    <?= $this->render('update_form', [
        'model' => $model,
    ]) ?>

</div>

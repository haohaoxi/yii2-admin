<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Adtylenum */

$this->title = '更新类型: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => '广告模块', 'url' => ['index']];
//$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = '更新类型';
?>
<div class="adtylenum-update">

    <?=$this->render('_tab_menu');?>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

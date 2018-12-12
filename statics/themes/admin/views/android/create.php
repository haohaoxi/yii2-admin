<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Android */

$this->title = '添加型号';
$this->params['breadcrumbs'][] = ['label' => 'Androids', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="android-create">

    <?=$this->render('_tab_menu');?>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

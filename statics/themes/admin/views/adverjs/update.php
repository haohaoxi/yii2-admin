<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model backend\models\Adverjs */

$this->title = 'js管理';
$this->params['breadcrumbs'][] = '广告生成js';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="adverjs-update">

    <?=$this->render('_tab_menu');?>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

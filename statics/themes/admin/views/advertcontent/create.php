<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Advertcontent */

$this->title = '广告内容';
$this->params['breadcrumbs'][] = ['label' => '广告模块', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertcontent-create">

    <?=$this->render('_tab_menu');?>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Adtylenum */

$this->title = '添加类型';
$this->params['breadcrumbs'][] = ['label' => '广告模块', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="adtylenum-create">

    <?=$this->render('_tab_menu');?>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

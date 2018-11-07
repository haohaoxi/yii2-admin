<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\search\AdvertcontentSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="advertcontent-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'admin_id') ?>

    <?= $form->field($model, 'enum_id') ?>

    <?= $form->field($model, 'content_js') ?>

    <?= $form->field($model, 'content_image') ?>

    <?php // echo $form->field($model, 'content_url') ?>

    <?php // echo $form->field($model, 'content_created_at') ?>

    <?php // echo $form->field($model, 'content_updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

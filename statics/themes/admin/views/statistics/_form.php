<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\Statistics */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="statistics-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'admin_id')->textInput() ?>

    <?= $form->field($model, 'admin_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'ip')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'phone_model')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'phone_size')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

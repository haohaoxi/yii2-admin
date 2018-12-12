<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Android;

/* @var $this yii\web\View */
/* @var $model backend\models\Android */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="android-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'number')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->radioList($model->getRadio()) ?>

    <?= $form->field($model, 'canclickad')->radioList($model->getCanclickad()) ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

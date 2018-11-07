<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model backend\models\search\AdtylenumSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="adtylenum-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'adtyle_name') ?>

    <?= $form->field($model, 'soft_delete') ?>

    <?= $form->field($model, 'adtyle_created_at') ?>

    <?= $form->field($model, 'adtyle_updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton('Search', ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton('Reset', ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

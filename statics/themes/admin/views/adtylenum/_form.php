<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Adtylenum;

/* @var $this yii\web\View */
/* @var $model app\models\Adtylenum */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="adtylenum-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'adtyle_name')->dropDownList(Adtylenum::adty_list()) ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>

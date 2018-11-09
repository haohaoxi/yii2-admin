<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Advertcontent;

/* @var $this yii\web\View */
/* @var $model backend\models\Adverjs */
/* @var $form yii\widgets\ActiveForm */
$this->registerJsFile("/statics/themes/admin/js/jquery-2.2.4.min");
?>

<div class="adverjs-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'admin_id')->dropDownList(Advertcontent::admin_list($array = array())) ?>

    <?= $form->field($model, 'enum_id')->dropDownList(Advertcontent::adtylenum_list($list = array())) ?>

    <?= $form->field($model, 'content')->textarea(['maxlength' => true,'roes'=>3]) ?>

    <?= $form->field($model, 'content_js')->textarea(['maxlength' => true,'rows'=>3]) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('添加', ['class' => 'btn btn-success']) ?>
        <?= Html::button('生成', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>
<!--    --><?//= \yii\helpers\Url::to(["/article-category/get-parent-id"]) ?>
</div>
<script type="text/javascript">
   window.onload = function(){
       var arr = 1111111;
       $(":button").click(function(){
           alert(1111);
           $.ajax({
               type:'GET',
               url:'?r=adverjs/ajaxjs',
               data:{arr:arr},
               dataType:'',
               success:function(data){

               }
           })
       })
   }
</script>

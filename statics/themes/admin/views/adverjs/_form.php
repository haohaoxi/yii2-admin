<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Advertcontent;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $model backend\models\Adverjs */
/* @var $form yii\widgets\ActiveForm */
$this->registerJsFile("/statics/themes/admin/js/jquery-2.2.4.min.js");

?>

<div class="adverjs-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'admin_id')->dropDownList(Advertcontent::admin_list($array = array())) ?>

    <?= $form->field($model, 'enum_id')->dropDownList(Advertcontent::adtylenum_list($list = array())) ?>

    <?= $form->field($model, 'content')->textarea(['roes'=>3]) ?>

    <?= $form->field($model, 'content_js')->textarea(['maxlength' => true,'rows'=>3]) ?>

    <?= $form->field($model, 'created_at')->textInput() ?>

    <?= $form->field($model, 'updated_at')->textInput() ?>

    <div class="form-group">
        <?= Html::submitButton('添加', ['class' => 'btn btn-success']) ?>
        <?= Html::button('生成', ['class' => 'btn btn-success','id'=>'but']) ?>
    </div>

    <?php ActiveForm::end(); ?>
<!--    --><?//= \yii\helpers\Url::to(["/article-category/get-parent-id"]) ?>
</div>
<script type="text/javascript">
   window.onload = function(){
       $("#but").click(function(){
          var content = $("textarea[name='Adverjs[content]']").val();
          if(content){
              $.ajax({
                  type:'GET',
                  url:"<?=  Url::to(['adverjs/ajaxjs']); ?>",
                  data:{content:content},
                  dataType:'',
                  success:function(data){
                      $("textarea[name='Adverjs[content_js]']").val(data);
                   },
                  error:function(jqXHR,textStatus,errorThrown){
                        alert("请求失败");
                      // alert(jqXHR.responseText);
                      // alert(jqXHR.status);
                      // alert(jqXHR.readyState);
                      // alert(jqXHR.statusText);
                      // alert(textStatus);
                      // alert(errorThrown);
                  }
              })
          }else{
              alert("内容不能为空");
          }

       })
   }
</script>
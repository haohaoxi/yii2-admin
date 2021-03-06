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

    <?= $form->field($model, 'content')->textarea(['roes'=>3])->hint("url填写方式：以-分割  如 url-url-url")->label() ?>

    <?= $form->field($model, 'content_js')->textarea(['maxlength' => true,'rows'=>3,'readonly'=>true]) ?>

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
          var admin_id = $("select[name='Adverjs[admin_id]']").val();
          var enum_id = $("select[name='Adverjs[enum_id]").val();
           var content_js = $("textarea[name='Adverjs[content_js]']").val();
           alert(content_js);
          if(content){
              $.ajax({
                  type:'GET',
                  url:"<?=  Url::to(['adverjs/ajaxjs']); ?>",
                  data:{content:content,admin_id:admin_id,enum_id:enum_id,content_js:content_js},
                  dataType:'',
                  success:function(data){
                      console.log(data);
                      // alert(data);
                      $("textarea[name='Adverjs[content_js]']").val(data);
                      if(content_js==""){
                          alert("js文件创建成功");
                      }else{
                          alert("js文件修改成功");
                      }
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
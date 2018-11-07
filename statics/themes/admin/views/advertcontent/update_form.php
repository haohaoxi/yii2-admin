<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;
use backend\models\Advertcontent;

/* @var $this yii\web\View */
/* @var $model backend\models\Advertcontent */
/* @var $form yii\widgets\ActiveForm */
$this->registerJsFile("/statics/themes/admin/js/jquery.min.js");
?>

<div class="advertcontent-form">

    <?php $form = ActiveForm::begin(['options'=>['enctype'=>'multipart/form-data']]); ?>

    <?= $form->field($model, 'admin_id')->checkboxList(Advertcontent::admin_list($list = array()),['onchange'=>'check_input(this)']) ?>

    <?= $form->field($model, 'enum_id')->dropDownList(Advertcontent::adtylenum_list($list = array())) ?>
    <?= $form->field($model, 'content_image')->fileInput(['multiple'=>'multiple','onchange'=>'showPreview(this);'])  ?>
    <?php if($model->content_image){?>
        <img id="portrait" src='<?php echo  Yii::$app->request->hostInfo.$model->content_image; ?>' style="height:200px;width:200px" />
    <?php }else{?>
        <img id="portrait" src='' style="display:none;height:200px;width:200px" />
    <?php }?>


    <?= $form->field($model, 'content_url')->textInput(['maxlength' => true]) ?>
    <div class="form-group">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success']) ?>

    </div>

    <?php ActiveForm::end(); ?>

</div>
<script type="text/javascript">


    // function check_input(){
    //     var myMap = new Map();
    //     // myMap.set('cityName', 'Beijing');
    //     // myMap.set('cityPopulation', 2152);
    //     // myMap.forEach(function(value, key) {
    //     //     console.log(key + ' = ' + value);
    //     // });
    //
    //     checkboxStr = document.getElementsByName("Advertcontent[admin_id][]");
    //     var checkboxValue= new Array();
    //     var checkboxText= new Array();
    //
    //     for(var i=0; i<checkboxStr.length; i++){
    //         if(checkboxStr[i].checked){
    //             //alert(checkboxStr[i].value+","+checkboxStr[i].nextSibling.nodeValue);
    //             myMap.set(checkboxStr[i].value,checkboxStr[i].nextSibling.nodeValue);
    //             checkboxValue.push(checkboxStr[i].value);
    //             checkboxText.push(checkboxStr[i].nextSibling.nodeValue);
    //         }
    //     }
    //      Advertcontent = document.getElementsByName('Advertcontent[content_url]');
    //     myMap.forEach(function(value, key) {
    //         alert(1111);
    //         $("#advertcontent-content_url").append('<input type="text" id="advertcontent-content_url" class="form-control" name="Advertcontent[content_url][]" maxlength="255" aria-required="true">');
    //         alert(222222);
    //         console.log(key + ' = ' + value);
    //     });
    // alert("checkboxValue:"+checkboxValue);
    // alert("checkboxText:"+checkboxText);
    // console.log(checkboxText);
    // $('form').submit();

    function showPreview(source) {
        var file = source.files[0];
        if(window.FileReader) {
            var fr = new FileReader();
            console.log(fr);
            var portrait = document.getElementById('portrait');
            fr.onloadend = function(e) {
                portrait.src = e.target.result;
            };
            fr.readAsDataURL(file);
            portrait.style.display = 'block';
        }
    }
</script>

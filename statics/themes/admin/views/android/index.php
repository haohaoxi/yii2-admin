<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use backend\models\Android;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\AndroidSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */
$this->registerJsFile("/statics/themes/admin/js/jquery-2.2.4.min.js");
$this->title = '安卓型号';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="android-index">
    <?=$this->render('_tab_menu');?>
    <?php  echo $this->render('_search', ['model' => $searchModel]); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'filterPosition' => GridView::FILTER_POS_FOOTER,
//        'layout' => '{items}{summary}{pager}',
        'columns' => [
            [
                'class'=>\yii\grid\CheckboxColumn::className(),
                'checkboxOptions' => function ($model, $key, $index, $column) {
                    return ['value'=>$model->id,'class'=>'checkbox'];
                }
            ],

            'id',
            'number',
            [
                'attribute' => 'status',
                'format' => 'raw',
                'label' => '状态1',
                'value' => function($data) {
                    return Html::tag('span', Android::getStatusText($data['status']), ['class' => 'label label-sm '.Android::getStatusStyle($data['status'])]);
                }
            ],

//            [
//                'attribute' => 'canclickad',
//                'format' => 'raw',
//                'label' => '状态2',
//                'value' => function($data) {
//                    return Html::tag('span', Android::getCanclickadText($data['canclickad']), ['class' => 'label label-sm '.Android::getCanclickadType($data['canclickad'])]);
//                }
//            ],

            [
                'class' => 'common\grid\ActionColumn',
                'template' => '{view} {update} {delete}',
            ],
        ],
    ]); ?>
    <div class="form-group">
        <?= Html::button('状态', ['class' => 'btn btn-success','id'=>'but']) ?>
        <?= Html::button('状态1', ['class' => 'btn btn-success','id'=>'buts']) ?>
        <?= Html::button('批量删除', ['class' => 'btn btn-success','id'=>'dele']) ?>
    </div>
</div>
<script type="text/javascript">
    window.onload = function(){
        $("#but").click(function(){
            var len = $("input:checkbox[name='selection[]']:checked").length;
            if(len==0){
                alert("请至少选择一个");
                return false;
            }
            var list = "";
            $("input:checkbox[name='selection[]']:checked").each(function(){
                list += $(this).val()+',';
            });
            if(list.length>0){
                $.ajax({
                    type:'GET',
                    url:"<?=  Url::to(['android/status']); ?>",
                    data:{list:list},
                    dataType:'',
                    success:function(data){
                        window.location.reload()
                    },
                    error:function(jqXHR,textStatus,errorThrown){
                        alert("请求失败");
                    }
                })
            }else{
                alert("内容不能为空");
            }
        })

        $("#buts").click(function(){
            var len = $("input:checkbox[name='selection[]']:checked").length;
            if(len==0){
                alert("请至少选择一个");
                return false;
            }
            var list = "";
            $("input:checkbox[name='selection[]']:checked").each(function(){
                list += $(this).val()+',';
            });
            if(list.length>0){
                $.ajax({
                    type:'GET',
                    url:"<?=  Url::to(['android/status1']); ?>",
                    data:{list:list},
                    dataType:'',
                    success:function(data){
                        window.location.reload()
                    },
                    error:function(jqXHR,textStatus,errorThrown){
                        alert("请求失败");
                    }
                })
            }else{
                alert("内容不能为空");
            }
        })


        $("#dele").click(function(){
            var len = $("input:checkbox[name='selection[]']:checked").length;
            if(len==0){
                alert("请至少选择一个");
                return false;
            }
            var list = "";
            $("input:checkbox[name='selection[]']:checked").each(function(){
                list += $(this).val()+',';
            });
            if(list.length>0){
                $.ajax({
                    type:'GET',
                    url:"<?=  Url::to(['android/canclik']); ?>",
                    data:{list:list},
                    dataType:'',
                    success:function(data){
                        window.location.reload()
                    },
                    error:function(jqXHR,textStatus,errorThrown){
                        alert("请求失败");
                    }
                })
            }else{
                alert("内容不能为空");
            }
        })
    }
</script>

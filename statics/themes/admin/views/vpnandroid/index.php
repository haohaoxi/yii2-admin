<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
use yii\helpers\Url;
use backend\models\Vpnandroid;
/* @var $this yii\web\View */
/* @var $searchModel backend\models\search\VpnandroidSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'VPN账号管理';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="vpnandroid-index">
    <?=$this->render('_tab_menu');?>

    <?php  echo $this->render('_search', ['model' => $searchModel]); ?>
<!--    --><?php //Pjax::begin(); ?>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'filterPosition' => GridView::FILTER_POS_FOOTER,
        'layout' => '{items}{summary}{pager}',
        'columns' => [
//            ['class' => 'yii\grid\SerialColumn'],
            [
                'class'=>\yii\grid\CheckboxColumn::className(),
                'checkboxOptions' => function ($model, $key, $index, $column) {
                    return ['value'=>$model->id,'class'=>'checkbox'];
                }
            ],

            'id',
            'devicenum',
            'server',
            'username',
            'password',
            [
                'attribute' => 'isinuse',
                'format' => 'raw',
                'label' => '状态1',
                'value' => function($data) {
                    return Html::tag('span', Vpnandroid::getStatusText($data['isinuse']), ['class' => 'label label-sm '.Vpnandroid::getStatusStyle($data['isinuse'])]);
                }
            ],
            ['attribute'=>'created_at','value'=>function($model){
                return $model->created_at ==0?0: date("Y-m-d H:i:d",$model->created_at);
            }],
//            'created_at',
            //'updated_at',


            [
                'class' => 'common\grid\ActionColumn',
                'template' => '{view} {update} {delete}',
            ],
        ],
    ]); ?>
<!--    --><?php //Pjax::end(); ?>
</div>
<div class="form-group" style="padding: 1%;">
    <?= Html::button('状态无效', ['class' => 'btn btn-success','id'=>'but']) ?>
    <?= Html::button('状态有效', ['class' => 'btn btn-success','id'=>'buts']) ?>
    <?= Html::button('批量删除', ['class' => 'btn btn-success','id'=>'dele']) ?>
</div>
<script type="text/javascript">
    window.onload = function(){
        $("#but,#buts,#dele").click(function(){
            var nameid = this.id;
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
                    url:"<?=  Url::to(['vpnandroid/status']); ?>",
                    data:{list:list,nameid:nameid},
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

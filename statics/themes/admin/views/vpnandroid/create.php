<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Vpnandroid */

$this->title = '添加';
$this->params['breadcrumbs'][] = ['label' => 'VPN管理', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="vpnandroid-create">


    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

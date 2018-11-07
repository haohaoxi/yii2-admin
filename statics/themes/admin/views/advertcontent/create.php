<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model backend\models\Advertcontent */

$this->title = 'Create Advertcontent';
$this->params['breadcrumbs'][] = ['label' => 'Advertcontents', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="advertcontent-create">

    <h1><?= Html::encode($this->title) ?></h1>

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

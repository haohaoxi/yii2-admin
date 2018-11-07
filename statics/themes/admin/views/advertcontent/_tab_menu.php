<?php
use yii\bootstrap\Nav;

echo Nav::widget([
    'items' => [
        [
            'label' => '广告内容',
            'url' => ['advertcontent/index'],
        ],
        [
            'label' => '添加广告',
            'url' => ['advertcontent/create'],
        ],
    ],
    'options' => ['class' => 'nav-tabs'],
]);
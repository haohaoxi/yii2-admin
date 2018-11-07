<?php
use yii\bootstrap\Nav;

echo Nav::widget([
    'items' => [
        [
            'label' => '广告类型',
            'url' => ['adtylenum/index'],
        ],
        [
            'label' => '添加类型',
            'url' => ['adtylenum/create'],
        ],
    ],
    'options' => ['class' => 'nav-tabs'],
]);
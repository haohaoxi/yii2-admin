<?php
use yii\bootstrap\Nav;

echo Nav::widget([
    'items' => [
        [
            'label' => 'js列表',
            'url' => ['adverjs/index'],
        ],
        [
            'label' => '添加js',
            'url' => ['adverjs/create'],
        ],
    ],
    'options' => ['class' => 'nav-tabs'],
]);
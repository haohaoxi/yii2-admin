<?php
use yii\bootstrap\Nav;

echo Nav::widget([
    'items' => [
        [
            'label' => '安卓型号',
            'url' => ['android/index'],
        ],
        [
            'label' => '添加型号',
            'url' => ['android/create'],
        ],
    ],
    'options' => ['class' => 'nav-tabs'],
]);
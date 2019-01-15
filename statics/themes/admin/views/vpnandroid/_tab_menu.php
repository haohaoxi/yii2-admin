<?php
use yii\bootstrap\Nav;

echo Nav::widget([
    'items' => [
        [
            'label' => 'vpn管理',
            'url' => ['vpnandroid/index'],
        ],
        [
            'label' => '添加vpn',
            'url' => ['vpnandroid/create'],
        ],
    ],
    'options' => ['class' => 'nav-tabs'],
]);
<?php
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'language' => 'zh-CN',  //目标语言
    'runtimePath'  => dirname(dirname(__DIR__)) . '/storage/runtime',
    'timeZone' => 'Asia/Shanghai',
    'components' => [
        'db' => [
            'class' => 'yii\db\Connection',
            'dsn' => 'mysql:host=localhost;dbname=yii2cms',
            'username' => 'root',
            'password' => 'root',
            'charset' => 'utf8',
            'tablePrefix' => 'yunmei_',
        ],
        'redis' => [
            'class' => 'yii\redis\Connection',
            'hostname' => '127.0.0.1',
            'port' => 6379,
            'database' => 0,
        ],
//        'session' => [
//            'class' => 'yii\redis\Session',
//            'sess' =>[
//                'class' => 'yii\redis\Connection',
//                'hostname' => '127.0.0.1',  //你的redis地址
//                'port' => 6379, //端口
//                'database' => 0,
//            ],
//        ],

        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'assetManager' => [
            'basePath' => '@webroot/storage/assets',
            'baseUrl'=>'@web/storage/assets',
            'bundles' => [
                'yii\web\YiiAsset',
                'yii\web\JqueryAsset',
                'yii\bootstrap\BootstrapAsset',
                // you can override AssetBundle configs here
            ],
            //'linkAssets' => true,
            // ...
        ],
        /**
         * 语言包配置
         * 将"源语言"翻译成"目标语言". 注意"源语言"默认配置为 'sourceLanguage' => 'en-US'
         * 使用: \Yii::t('common', 'title'); 将common/messages下的common.php中的title转为对应的中文
         */
        'i18n' => [
            'translations' => [
                '*' => [
                    'class' => 'yii\i18n\PhpMessageSource',
                    'basePath' => '@common/messages',
                    //'sourceLanguage' => 'en-US',
                    'fileMap' => [
                        'common' => 'common.php',
                        'frontend' => 'frontend.php',
                        'backend' => 'backend.php',
                    ],
                ],
            ],
        ],
    ],
];

<?php
namespace api\functionGlobal;

use Yii;
use yii\db\mssql\PDO;

class FunctionRand
{
    /**
     * int $code 状态
     * string $msg 提示信息
     * string $message ok/NO
     *$ array $rows 当前返回的信息
     */

    public static function View($code = 0,$msg = '',$message = '', $rows = []){
        $format = [];
        $format['code'] = $code;
        $format['msg'] = $msg;
        $format['message'] = $message;
        $format['data'] = $rows;
        die(json_encode($format));
    }

    /**
     * @param int $code
     * @param string $msg
     */
    public static function Error($code = 0,$msg = ''){
        $format = [];
        if(is_string($msg)){
            $msgArr = ['error'=>$msg];
        }else{
            $msgArr = $msg;
        }
        $format['code'] = $code;
        $format['msg']  = $msgArr;
        die(json_encode($format));


    }









}
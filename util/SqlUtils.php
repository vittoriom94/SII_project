<?php

namespace util;

use Exception;
use framework\Model;

class SqlUtils {

    public static function atomic($queries, Model $model){
        try {
            $model->autocommit(FALSE);

            for ($i = 0; $i < sizeof($queries); $i++) {
                $result = $model->query($queries[$i]);
                if (!$result) {
                   // $result->free();
                    throw new Exception($model->error);
                }
            }
            $model->commit();
            $model->autocommit(TRUE);
        } catch (Exception $e) {
            $model->rollback();
            $model->autocommit(TRUE);
        }
    }

}
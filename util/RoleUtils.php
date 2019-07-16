<?php

namespace util;


class RoleUtils {

    const CERTIFICATORE_ROLE_ID = 1;
    const ANALISTA_ROLE_ID = 2;
    const OPERATORE_ROLE_ID = 3;
    const DBLOADER_ROLE_ID = 4;
    const GESTOREPROCEDURE_ROLE_ID = 5;
    const GESTORESISTEMA_ROLE_ID = 6;


    /**
     * Associa a un ruolo una pagina home diversa a cui reindirizzare dopo il login
     * @var array
     */
    public static $getReturnLink = array(
        self::GESTORESISTEMA_ROLE_ID => "index",
        self::GESTOREPROCEDURE_ROLE_ID => "common/user_accounts"
    ) ;
}
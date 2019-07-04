<?php

namespace util;

define('CERTIFICATORE_ROLE_ID',1);
define('ANALISTA_ROLE_ID',2);
define('ISPETTORE_ROLE_ID',3);
define('DBLOADER_ROLE_ID',4);
define('GESTOREPROCEDURE_ROLE_ID',5);

class RoleUtils {
    /**
     * Associa a un ruolo una pagina home diversa a cui reindirizzare dopo il login
     * @var array
     */
    public static $getReturnLink = array(

    ) ;
}
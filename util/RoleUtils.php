<?php

namespace util;

define('CERTIFICATORE_ROLE_ID',1);
define('ANALISTA_ROLE_ID',1);
define('ISPETTORE_ROLE_ID',1);
define('DBLOADER_ROLE_ID',1);
define('GESTOREPROCEDURE_ROLE_ID',1);

class RoleUtils {

    public static $getReturnLink = array(
         1 => "Home", //certificatore
         2 => "Home", //analista
         3 => "Home", //ispettore
         4 => "Home", //db loader
         5 => "Home", //gestore procedure
        100 => "Home" //admin
    ) ;
}
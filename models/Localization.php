<?php
namespace models;
use framework\Model;

class Localization extends Model
{
  private $pageBodies;
	
  public function __construct()
  {                              // Simulate a multi language database
    $bodiesDb = array(
      "it-it" => "Messaggio dal model: Contenuto della pagina per la lingua italiana.",
       "en"  =>  "Model message: This is the page content for english language");
    $this->pageBodies = $bodiesDb;
  }

    public function getBody($locale)
    {
      if (@$_REQUEST[LOCALE_REQUEST_PARAMETER])
            $locale = $_REQUEST[LOCALE_REQUEST_PARAMETER];
      return $this->pageBodies[$locale];
    }
}

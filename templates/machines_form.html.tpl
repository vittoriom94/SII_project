<html>

<head>
    <title>PAGINA CARICAMENTO DATI</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>

    <style type="text/css">
        form_main {
            width: 100%;
        }
        .form_main h4 {
            font-family: roboto;
            font-size: 20px;
            font-weight: 300;
            margin-bottom: 15px;
            margin-top: 20px;
            text-transform: uppercase;
        }
        .heading {
            border-bottom: 1px solid #fcab0e;
            padding-bottom: 9px;
            position: relative;
        }
        .heading span {
            background: #9e6600 none repeat scroll 0 0;
            bottom: -2px;
            height: 3px;
            left: 0;
            position: absolute;
            width: 75px;
        }
        .form {
            border-radius: 7px;
            padding: 6px;
        }
        .txt[type="text"] {
            border: 1px solid #ccc;
            margin: 10px 0;
            padding: 10px 0 10px 5px;
            width: 100%;
        }
        .txt_3[type="text"] {
            margin: 10px 0 0;
            padding: 10px 0 10px 5px;
            width: 100%;
        }
        .txt2[type="submit"] {
            background: #242424 none repeat scroll 0 0;
            border: 1px solid #4f5c04;
            border-radius: 25px;
            color: #fff;
            font-size: 16px;
            font-style: normal;
            line-height: 35px;
            margin: 10px 0;
            padding: 0;
            text-transform: uppercase;
            width: 30%;
        }
        .txt2:hover {
            background: rgba(0, 0, 0, 0) none repeat scroll 0 0;
            color: #5793ef;
            transition: all 0.5s ease 0s;
        }

    </style>

</head>

<body>
<div class="container" align="center">
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <div class="form_main">
                <h4 class="heading"><strong>Inserisci </strong> Macchina <span></span></h4>
                <div class="form">
                    <form method="post" id="form" name="form" onsubmit="return(validate());">

                        <select name="campo_funzione" class="txt form-control">
                            <!-- BEGIN tendina -->
                            <option value="{id_funzione}">{funzione}</option>
                            <!-- END tendina -->
                        </select>

                        <input type="text"  placeholder="ID Interno" id="campo_idinterno" value="" name="campo_idinterno" class="txt">
                        <input type="text"  placeholder="Costruttore" id="campo_costruttore" value="" name="campo_costruttore" class="txt">
                        <input type="text"  placeholder="Indirizzo IP" id="campo_indirizzoip" value="" name="campo_indirizzoip" class="txt">
                        <input type="text" placeholder="Modello" id="campo_modello" value="" name="campo_modello" class="txt">


                        <input type="text"  placeholder="Marca"  id="campo_marca"  value="" name="campo_marca" class="txt">
                        <input type="text"  placeholder="Modello CN"  id="campo_modellocn"   value="" name="campo_modellocn" class="txt">
                        <input type="text" placeholder="Versione" id="campo_versione" value="" name="campo_versione" class="txt">

                        <input type="text"  placeholder="Note Versione" id="campo_noteversione" value="" name="campo_noteversione" class="txt">
                        <input type="text"  placeholder="Note Lavorazioni" id="campo_notelavorazioni" value="" name="campo_notelavorazioni" class="txt">

                        <input type="text"  placeholder="Numero Tx" id = "campo_numerotx" value="" name="campo_numerotx" class="txt">
                        <input type="text"  placeholder="Numero Rot"  id="campo_numeroroot"  value="" name="campo_numeroroot" class="txt">

                        <input type="date"  placeholder="Anno"  id="campo_anno" value="" name="campo_anno" class="txt form-control">

                        <input type="submit" id="form_inserisci" name="form_inserisci" value="Inserisci" class="txt2">
                        <input type="submit"  id="form_modifica" name="form_inserisci" value="Modifica" class="txt2">
                        <input type="submit"  id="form_cancella" name="form_cancella" value="Cancella" class="txt2">
                    </form>
                </div>
            </div>
        </div
        <div class="col-md-4">

        </div>
    </div>
</div>
</div>

<div>
    <!-- BEGIN Messaggio -->
    {messaggio_errore_cancellazione}
    <!-- END Messaggio -->
</div>

</body>
</html>
<script >
    function validate() {

        var campo_idinterno = document.getElementById("campo_idinterno").value;
        var campo_indirizzoip = document.getElementById("campo_indirizzoip").value;
        var campo_costruttore = document.getElementById("campo_costruttore").value;
        var campo_modello = document.getElementById("campo_modello").value;
        var campo_marca = document.getElementById("campo_marca").value;
        var campo_modellocn = document.getElementById("campo_modellocn").value;
        var campo_versione = document.getElementById("campo_versione").value;
        var campo_numerorot = document.getElementById("campo_numeroroot").value;
        var campo_numerotx = document.getElementById("campo_numerotx").value;

        var ipformat = /^(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[01]?[0-9][0-9]?)$/;

        if(campo_idinterno == "undefined" || campo_idinterno == ""){
            alert("Campo non valido")
            document.form.campo_idinterno.focus();
            return false;
        }

        if(campo_costruttore == "undefined" || campo_costruttore == ""){
            alert("Campo non valido")
            document.form.campo_costruttore.focus();
            return false;
        }
        if(!campo_indirizzoip.match(ipformat) || campo_indirizzoip == "undefined" || campo_indirizzoip == ""){
            alert("Campo non valido")
            document.form.campo_indirizzoip.focus();
            return false;
        }
        if(campo_modello == "undefined" || campo_modello == ""){
            alert("Campo non valido")
            document.form.campo_modello.focus();
            return false;
        }
        if(campo_marca == "undefined" || campo_marca == ""){
            alert("Campo non valido")
            document.form.campo_marca.focus();
            return false;
        }
        if(campo_modellocn == "undefined" || campo_modellocn == ""){
            alert("Campo non valido")
            document.form.campo_modellocn.focus();
            return false;
        }
        if(campo_versione == "undefined" || campo_versione == ""){
            alert("Campo non valido")
            document.form.campo_versione.focus();
            return false;
        }
        if(campo_numerorot == "undefined" || campo_numerorot == ""){
            alert("Campo non valido")
            document.form.campo_numeroroot.focus();
            return false;
        }
        if(campo_numerotx == "undefined" || campo_numerotx == ""){
            alert("Campo non valido")
            document.form.campo_numerotx.focus();
            return false;
        }

        return true;

    }

</script>
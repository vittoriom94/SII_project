<html>

<head>
    <title>PAGINA CARICAMENTO DATI</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- DataTable core CSS -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.3.1/dt-1.10.18/af-2.3.3/cr-1.5.0/fc-3.2.5/fh-3.1.4/kt-2.5.0/rg-1.1.0/rr-1.2.4/sc-2.0.0/sl-1.3.0/datatables.min.css"/>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
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

{Controller:NavigationBar}

<div class="container" align="center">
    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <div class="form_main">
                <h4 class="heading"><strong>{RES:Inserisci} </strong> {RES:Macchina} <span></span></h4>
                <div class="form">
                    <form method="post" id="form" name="form" onsubmit="return(validate());">
                        <!-- BEGIN edit -->
                        <select name="campo_funzione" id="select" class="txt form-control">
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

                        <input type="text"  placeholder="Anno"  id="campo_anno" value="" name="campo_anno" class="txt form-control">

                        <input type="submit" id="form_inserisci" name="form_inserisci" value="{RES:INSERISCI}" class="txt2">
                        <!-- END edit -->
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
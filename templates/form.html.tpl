<html>

<head>
    <title>PAGINA CARICAMENTO DATI</title>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<style>
    /* Dropdown Button */
    .dropbtn {
        background-color: #3498DB;
        color: white;
        padding: 1px;
        font-size: 16px;
        border: none;
        cursor: pointer;
    }

    /* Dropdown button on hover & focus */
    .dropbtn:hover, .dropbtn:focus {
        background-color: #2980B9;
    }

    /* The container <div> - needed to position the dropdown content */
    .dropdown {
        position: relative;
        display: inline-block;
    }

    /* Dropdown Content (Hidden by Default) */
    .dropdown-content {
        display: none;
        position: absolute;
        background-color: #f1f1f1;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
        z-index: 1;
    }

    /* Links inside the dropdown */
    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    /* Change color of dropdown links on hover */
    .dropdown-content a:hover {background-color: #ddd}

        /* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
    .show {display:block;}
</style>
<body>
<table border="1" align="center">
    <tr>
        <td align="center">Inserisci i nuovi macchinari</td>
    </tr>
    <tr>
        <td>
            <table>
                <form method="post" id="inserimento_form" name="inserimento_form" onsubmit="return(validate());">
                    <tr>
                        <td>Funzione</td>
                        <td>
                            <select name="campo_funzione">
                                <!-- BEGIN tendina -->
                                <option value="{id_funzione}">{funzione}</option>
                                <!-- END tendina -->
                            </select>

                        </td>
                    </tr>
                    <tr>
                        <td>ID Interno</td>
                        <td><input type="text" id="campo_idinterno" name="campo_idinterno" class="form" value="" required>
                        </td>
                    </tr>
                    <tr>
                        <td>Costruttore</td>
                        <td><input type="text" id="campo_costruttore" name="campo_costruttore" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Indirizzo IP</td>
                        <td><input type="text" id="campo_indirizzoip" name="campo_indirizzoip" class="form" value="" >
                        </td>
                    </tr>
                    <tr>
                        <td>Modello</td>
                        <td><input type="text" id="campo_modello" name="campo_modello" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Anno</td>
                        <td><input type="date" id="campo_anno" name="campo_anno" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Marca</td>
                        <td><input type="text" id="campo_marca" name="campo_marca" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Modello CN</td>
                        <td><input type="text" id="campo_modellocn" name="campo_modellocn" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Versione</td>
                        <td><input type="text" id="campo_versione" name="campo_versione" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Note Versione</td>
                        <td><input type="text" id="campo_noteversione" name="campo_noteversione" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Note Lavorazioni</td>
                        <td><input type="textarea" id="campo_notelavorazioni" name="campo_nomelavorazioni" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Numero Tx</td>
                        <td><input type="text" id="campo_numerotx" name="campo_camponumerotx" class="form" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>Numero Rot</td>
                        <td><input type="text" id="campo_numeroroot" name="campo_numerorot" class="form" value="">
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td align="right">
                            <input class="btn btn-success btn-lg"  type="submit"  id="form_inserisci"   class="Button" name="form_inserisci" value="Inserisci" >
                            <input class="btn btn-success btn-lg"  type="submit"  id="form_cancella"   class="Button" name="form_cancella" value="Cancella">
                        </td>
                    </tr>
                </form>
            </table>
        </td>
    </tr>
</table>


<div>
    <!-- BEGIN Messaggio -->
    {messaggio_errore_cancellazione}
    <!-- END Messaggio -->
</div>


<a href=machines>Clicca qui per vedere le macchine presenti </a>
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
        var campo_numerorot = document.getElementById("campo_numerorot").value;
        var campo_numerotx = document.getElementById("campo_numerotx").value;

        if(!isNaN(campo_idinterno)){
            alert("Hai inserito un valore incorretto");
            return  false;
        }
        else{
            return true;
        }

        if(!isNaN(campo_costruttore)){
            alert("Hai inserito un valore incorretto");
            return  false;
        }
        else{
            return true;
        }

        if(!isNaN(campo_modello)){
            alert("Hai inserito un valore incorretto");
            return  false;
        }
        else{
            return true;
        }
        if(!isNaN(campo_marca)){
            alert("Hai inserito un valore incorretto");
            return  false;
        }
        else{
            return true;
        }
        if(!isNaN(campo_modellocn)){
            alert("Hai inserito un valore incorretto");
            return  false;
        }
        else{
            return true;
        }


        if(!isNaN(campo_versione)){
            alert("Hai inserito un valore incorretto");
            return  false;
        }
        else{
            return true;
        }

        if(!isNaN(campo_numerorot)){
            return  true;
        }
        else{
            alert("Hai inserito un valore incorretto");
            return false;
        }

        if(!isNaN(campo_numerotx)){
            return  true;
        }
        else{
            alert("Hai inserito un valore incorretto");
            return false;
        }

    }

</script>


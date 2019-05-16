<html>

<head>
    <title>PAGINA CARICAMENTO DATI</title>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>

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
                        <td><input type="text" id="campo_funzione" name="campo_funzione" class="form" value="" required></td>
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
                        <td>Nome Lavorazioni</td>
                        <td><input type="text" id="campo_nomelavorazioni" name="campo_nomelavorazioni" class="form" value="">
                        </td>
                    </tr>
                    <tr>
                        <td>Numero Tx</td>
                        <td><input type="text" id="campo_numerotx" name="campo_camponumerotx" class="form" value="">
                        </td>
                    </tr>

                    <tr>
                        <td>Numero Root</td>
                        <td><input type="text" id="campo_numeroroot" name="campo_numerorot" class="form" value="">
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td align="right">
                            <input class="btn btn-success btn-lg"  type="submit"  id="form_inserisci"   class="Button" name="form_inserisci" >
                        </td>
                    </tr>
                </form>
            </table>
        </td>
    </tr>
</table>
<a href=machines>Clicca qui per vedere le macchine presenti </a>
</body>
</html>


<script >

    function validate() {
        var campo_funzione = document.getElementById("campo_funzione").value;

        if(!isNaN(campo_funzione)){
            return  true;
        }
        else{
            alert("Hai inserito una stringa")
            return false;
        }



    }


</script>
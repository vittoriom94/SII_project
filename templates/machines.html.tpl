<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8">
    <title> TEAM1 - Facilty Management</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>


    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">


    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div id="demo">
    <h1> TEAM1 - Facilty Management</h1>

    <!-- Responsive table starts here -->
    <!-- For correct display on small screens you must add 'data-title' to each 'td' in your table -->
    <p class="table-responsive-vertical shadow-z-1">
        <!-- Table starts here -->
    <table id="table" class="table table-hover table-mc-light-blue">
        <thead>
        <tr>
            <th>Funzione</th>
            <th>ID interno</th>
            <th>Indirizzo IP</th>
            <th>Costruttore</th>
            <th>Modello</th>
            <th>Anno</th>
            <th>Marca CN</th>
            <th>Modello CN</th>
            <th>Versione</th>
            <th>Note Versione</th>
            <!--<th>Anno</th>-->
            <th>Nome Lavorazioni</th>
            <th>Numero Tx</th>
            <th>Numero Rot</th>
        </tr>
        </thead>
        <tbody>
        <!-- BEGIN Machines -->

        <tr>
            <td data-title="Funzione" class="tabella1">{descrizione}</td>
            <td data-title="InternalID" class="tabella1">{IDInterno}</td>
            <td data-title="IndirizzoIP" class="tabella1"> {IndirizzoIP} </td>
            <td data-title="Manufacturer" class="tabella1">{Costruttore}</td>
            <td data-title="Model" class="tabella1">{Modello} </td>
            <td data-title="Year"  class="tabella1">{Anno}</td>
            <td data-title="Brand" class="tabella2">{MarcaCN}</td>
            <td data-title="ModelCN" class="tabella2">{ModelloCN}</td>
            <td data-title="Version" class="tabella2" >{Versione}</td>
            <td data-title="VersionNote" class="tabella2">{NoteVersione}</td>
            <!--<td data-title="Anno2" name="tabella1">{year2}</td>-->
            <td data-title="WorkName" class="tabella2">{NomeLavorazioni}</td>
            <td data-title="TextNumber" class="tabella2">{NumeroTx}</td>
            <td data-title="TextNumber" class="tabella2">{NumeroRot}</td>
        </tr>
        <!-- END Machines -->
        </tbody>
    </table>
</div>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01
Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>PAGINA CARICAMENTO DATI</title>
</head>

<body>
<table border="0">
    <tr>
        <td align="center">Inserisci i nuovi macchinari</td>
    </tr>
    <tr>
        <td>
            <table>
                <form method="post" id="inserimento_form" name="inserimento_form">
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
                        <td><input type="text" id="campo_anno" name="campo_anno" class="form" value="">
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
                        <td><input type="text" id="campo_numeroroot" name="campo_numeroroot" class="form" value="">
                        </td>
                    </tr>

                    <tr>
                        <td></td>
                        <td align="right">
                            <input class="btn btn-success btn-lg" type="submit" id="form_inserisci"  class="Button" name="form_inserisci">
                        </td>
                    </tr>
                </form>
            </table>
        </td>
    </tr>
</table>
</body>
</html>

</body>

</html>

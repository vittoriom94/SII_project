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

<a href="form">Clicca qui per aggiungere un altra macchina</a>

</body>

</html>

<!DOCTYPE html>
<html lang="en" >

<head>
    <meta charset="UTF-8">
    <title> TEAM1 - Facilty Management</title>
    <!-- Shared code
3.4.1: The Bootstrap core CSS declarations used in the examples -->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- Bootstrap core CSS -->
    <link href="http://cdnjs.cloudflare.com/ajax/libs/twitter-
bootstrap/3.3.4/css/bootstrap.min.css" rel="stylesheet" media="screen">
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script
            src="http://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.2/html5shiv.js"></script>
    <script
            src="http://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.js"></script>
    <![endif]-->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" type="text/javascript"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">
    <link rel="stylesheet" href="css/style.css">

</head>

<body>

<div id="demo">
    <h1> TEAM1 - Facilty Management</h1>
    <p class="table-responsive-vertical shadow-z-1">
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
        <tfoot>
        <tr>
            <td class = "text-center" colspan="9">{PaginatorBootstrap:Bottom}</td>
        </tr>
        </tfoot>
    </table>
</div>

<a href="form">Clicca qui per aggiungere un'altra macchina</a>


<!-- Shared code 3.4.2: jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script
        src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="http://cdnjs.cloudflare.com/ajax/libs/twitter-
bootstrap/3.3.4/js/bootstrap.min.js">
</script>

</body>

</html>

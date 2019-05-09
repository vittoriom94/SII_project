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
            <th>Anno</th>
            <th>Nome Lavorazioni</th>
            <th>Numero Tx</th>
            <th>Numero Rot</th>
        </tr>
        </thead>
        <!-- BEGIN Machines -->
        <tbody>
        <tr>
            <td data-title="Funzione" name="tabella1">{funzione}</td>
            <td data-title="InternalID" name="tabella1">{internalid}</td>
            <td data-title="IndirizzoIP" name="tabella1"> {ip} </td>
            <td data-title="Manufacturer" name="tabella1">{manufacturer}</td>
            <td data-title="Model" name="tabella1">{model} </td>
            <td data-title="Year" name="tabella1">{year}</td>
            <td data-title="Brand" name="tabella1">{brand}</td>
            <td data-title="ModelCN" name="tabella1">{modelcn}</td>
            <td data-title="Version" name="tabella1" >{version}</td>
            <td data-title="VersionNote" name="tabella1">{versionnotes}</td>
            <td data-title="Anno2" name="tabella1">{year2}</td>
            <td data-title="WorkName" name="tabella1">{workname}</td>
            <td data-title="TextNumber" name="tabella1">{txnumber}</td>
            <td data-title="TextNumber" name="tabella1">{rotnumber}</td>
        </tr>
        </tr>
        </tbody>
    </table>
    <!-- END Machines -->
</div>

<h2>Filtro</h2>
<p><strong>Scegli cosa vuoi visulizzare nella tabella</strong></p>

<input type="checkbox" id="1" name="parte1" value="Parte1" onchange="validateForm(this.id)"> Prima parte della tabella
<br>
<input type="checkbox" id="2" name="parte2" value="Parte2" onchange="validateForm(this.id)" > Seconda parte della tabella
<br><br>

</body>

<script>
    function validateForm(obj) {

        var x;
        var i;
        x =  document.getElementsByName("tabella1");

        if(document.getElementById("1").checked == true){
            for (i = 8; i < x.length; i++) {
                x[i].style.visibility = "hidden";
                x[i-8].style.visibility = "visible";
            }
        }

        if(document.getElementById("2").checked == true) {
            for (i = 0; i < x.length/2; i++) {
                x[i].style.visibility = "hidden";
                x[i+x.length/2].style.visibility = "visible";
            }
        }

        if (document.getElementById("1").checked == true && document.getElementById("2").checked == true ){
            for (i = 0; i < x.length; i++) {
                x[i].style.visibility = "visible";
            }

        }
        if (document.getElementById("1").checked == false && document.getElementById("2").checked == false ){
            for (i = 0; i < x.length; i++) {
                x[i].style.visibility = "hidden";
            }
        }
    }
</script>

</html>


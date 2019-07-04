<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#">SII</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item active">
                <a class="nav-link" href="Home">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="MaintenanceUnplanned">{RES:Failures}</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="MaintenancePlanned">{RES:Manutenzioni}</a>
            </li>
        </ul>
        <div class="navbar-collapse collapse w-100 order-3 dual-collapse2">
            <ul class="navbar-nav ml-auto">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Language/Lingua
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="?locale=it-it">Italiano</a>
                        <a class="dropdown-item" href="?locale=en">English</a>
                    </div>
                </li>
            </ul>
            <form action="common/login" method="post" class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2 btn btn-light" type="submit" value="Logout" name="login_form_do_logout">
            </form>
        </div>
    </div>
</nav>
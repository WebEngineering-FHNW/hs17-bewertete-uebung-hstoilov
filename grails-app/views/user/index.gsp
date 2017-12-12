<!doctype html>
<html>
<head>
    <!-- EXTERNAL -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="grails-app/assets/stylesheets/registration-form.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <!--/            -->


    <title>WEBEC-Testat</title>
    <link rel="icon" type="image/png" href="grails-app/assets/images/wl2.png">

</head>

<body>

<g:if test="${flash.message}">
    <div class="container">
        <div style="margin-top:50px;" class="alert alert-info alert-dismissable fade in col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
            <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
            <strong>Info!</strong> ${flash.message}.
        </div>
    </div>
</g:if>
<g:if test="${session.user}">


    <br/>
    Login as : ${session.user} | <g:link action="logout">Logout</g:link>
</g:if>
<g:else>
    <g:form controller="user" action="login" id="loginform" class="form-horizontal" role="form" >


        <div class="container">
            <div id="loginbox" style="margin-top:50px;" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
                <div class="panel panel-info" >
                    <div class="panel-heading">
                        <div class="panel-title">Sign In</div>

                    </div>

                    <div style="padding-top:30px" class="panel-body" >

                        <div style="display:none" id="login-alert" class="alert alert-danger col-sm-12"></div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="login-username" type="text" class="form-control" name="username" placeholder="Username">
                        </div>

                        <div style="margin-bottom: 25px" class="input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="login-password" type="password" class="form-control" name="password" placeholder="Password">
                        </div>

                        <div style="margin-top:10px" class="form-group">
                            <!-- Button -->

                            <div class="col-sm-12 controls">
                                <input type="submit" class="btn btn-success" value="Login"/>

                            </div>
                        </div>


                    </div>
                </div>
            </div>
        </div>
    </g:form>
</g:else>

</body>
</html>

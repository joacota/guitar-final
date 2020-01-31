@php
session_start();

$email = "";
$password = "";
$errors=[];
$avatarGenerico="../uploads/2189.jpg";


$cartelError1="";
$cartelError2="";


@endphp


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Registrate!</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href={{asset("css/register.css")}}>



</head>
<body>





{{-- <form action="registro.php" method="post"> --}}

  {{-- <div class="container"> --}}
    <h1 style="text-align: center">Registro</h1>
    <p style="text-align: center">Completá el formulario para registrarte!</p>


@yield('content')



    {{-- <div class="row">




    <label for="email"><b>Email     </b><span style="color: red">   /span></label>
    <input type="text" placeholder="ejemplo: nombre@dominio.com" name="email" value=" required>
    <div class="check10">

      <input class="check1" type="checkbox" id="ch1" aria-label="Checkbox for following text input" name="remember">
      <label class="check2">Recordar usuario</label>
    </div>



    <label for="psw"><b>Password</b><span style="color: red">   </span></label>
    <input type="password" placeholder="Ingresá tu password" name="password" value="" required>

    <label for="psw-repeat"><b>Repetir Password</b><span style="color: red">    /span></label>
    <input type="password" placeholder="Repetí tu password" name="password_confirmation" value="" required>



  </div>


    <hr>

    <p>Al crear tu cuenta, aceptas estar de acuerdo con nuestros <a href="terminos.php">Términos y condiciones</a>.</p>
    <!-- <button type="submit" class="registerbtn">Registrate!</button> -->
    <button class="registerbtn">Registrate!</button>

    <div class="container signin">
      <p>Ya tenes tu cuenta? <a href="login.php">Logueate acá!</a>.</p>
    </div>

    <div class="container signin">
      <p><a href="../index.php">Volver al Home!</a></p>
    </div> --}}



  {{-- </div>


</form> --}}

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

</body>

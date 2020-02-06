
@php
	$usuarioNombre=$user->name;
	$formCarrito="/cart";
	$formPerfil="";
@endphp

					<!DOCTYPE html>
					<html lang="en">
					<head>
						<meta charset="UTF-8">
						<meta name="viewport" content="width=device-width, initial-scale=1.0">
						<meta http-equiv="X-UA-Compatible" content="ie=edge">
						<title>Home</title>
						<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	                        <link rel="stylesheet" href={{asset("css/header-footer.css")}}>
													<link rel="stylesheet" href={{asset("css/index1.css")}}>
                        <link rel="stylesheet" href={{asset("css/compra.css")}}>
					</head>
					<body>
					{{-- <div class="contenedor"> --}}

					<header>

						@include('layouts.header',[
		          'method'=>'post',
		          'url'=> '/admin/categories',

		        ])

					</header>



							@yield('content')



					<!-- COMIENZO FOOTER -->
					<footer>
					  <section class="container-fluid">
					  <div class="row footer-l1">
					      <div class="col-12 col-md-4">
					        <a href="/faq"><h5>Preguntas frecuentes!</h5></a>
					      </div>
					      <div class="col-12 col-md-4">
					        <a href="/"><img src={{asset("imagesWebsite/logo.png")}} alt="">  </a>
					      </div>
					      <div class="col-12 col-md-4">
					      <a href="/">  <h5>Contactanos</h5></a>
					      </div>

					  </div>

					  <div class="row footer-l2">
					    <div class="col-12 col-md-4 seguinos">

					      <div class="row">
					        <h6>Seguinos</h6>
					      <!-- </div>
					      <div class="row"> -->
					        <div class="redes">
					          <a href="http://www.facebook.com"><img src="/imagesWebsite/icons8-facebook-old-26.png" alt=""></a>
					          <a href="http://instagram.com"><img src="/imagesWebsite/icons8-instagram-50.png" alt=""></a>
					          <a href="http://twitter.com"><img src="/imagesWebsite/icons8-twitter-24.png" alt=""></a>

					        </div>

					      </div>

					    </div>
					    <div class="col-12 col-md-4 trabaja">
					      <a href="/"> <h5>Music life</h5></a>
					    </div>

					    <div class="col-12 col-md-4 contactanos">
					      <a href="/"><h5>+54 11 5263-7400</h5></a>
					    </div>


					  </div>

					  </section>
					<!-- FINAL DEL FOOTER -->


					<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
					<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
					{{-- </div> --}}
					</body>
					</html>

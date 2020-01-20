
@php
	$usuarioNombre="perfil";
	$formCarrito="";
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
					</head>


					<body>
					<div class="contenedor">

					<header>

					<div class="container-fluid">
							<!-- esto es el header -->

							<nav class="navbar navbar-expand-lg navbar-light bg-light">
						{{-- <a class="navbar-brand" href="index.php"><img  width= "110px"src="public/photosBrands/logo.png" alt=""></a> --}}
						<a class="navbar-brand" href="index.php"><img  width= "110px" src={{asset("imagesWebsite/logo.png")}} alt=""></a>


						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">
								<!-- <li class="nav-item active">
									<a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
								</li>
								<li class="nav-item">
									<a class="nav-link" href="#">Link</a>
								</li> -->
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Discos
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="section.php">Rock Nacional</a>
										<a class="dropdown-item" href="section.php">Funk</a>
										<a class="dropdown-item" href="section.php">Clasicos del los 80</a>
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Audio
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="section.php">Auriculares</a>
										<a class="dropdown-item" href="section.php">Parlantes</a>
									</div>
								</li>
								<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
										Instrumentos
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="section.php">Guitarras</a>
										<a class="dropdown-item" href="section.php">Baterias</a>
										<a class="dropdown-item" href="section.phpl">Pianos</a>
									</div>
								</li>
								<!-- <li class="nav-item">
									<a class="`nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>`
								</li> -->
							</ul>
							<!-- <form class="form-inline my-2 my-lg-0">
								<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
								<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
							</form> -->
							<div class="menu-derecha navbar-nav mr-1">


								<?php if($usuarioNombre == "perfil"):?>
											<a href="Formularios/registro.php" class="btn btn-outline-secondary btn-sm mr-2"> registrate</a>
											<a href="Formularios/login.php" class="btn btn-outline-secondary btn-sm mr-2"> log in</a>
									<?php else: ?>
										<a href="<?= $formPerfil ?>" class="btn btn-outline-secondary btn-sm mr-2"> <?= $usuarioNombre ?></a>
										<a href="index.php?log=0" class="btn btn-outline-secondary btn-sm mr-2"> log out</a>
								<?php  endif; ?>

								<a class="btn btn-outline-secondary btn-sm "href="<?= $formCarrito ?>"><img src="https://img.icons8.com/windows/26/000000/shopping-cart.png"></a>

							</div>
						</div>
					</nav>



						<!-- final del header -->

					</div>
					</header>


<div class="container-fluid">

	@yield('content')

					</div>					





					<!-- COMIENZO FOOTER -->
					<footer>
						<section class="container-fluid">
						<div class="row footer-l1">
						    <div class="col-12 col-md-4">
						      <a href="Formularios/faq.php"><h5>Preguntas frecuentes!</h5></a>
						    </div>
						    <div class="col-12 col-md-4">
						      <a href="index.php"><img src={{asset("imagesWebsite/logo.png")}} alt="">  </a>
						    </div>
						    <div class="col-12 col-md-4">
						      <a href="Formularios/contacto.php"><h5>Contactanos</h5></a>
						    </div>

						</div>

						<div class="row footer-l2">
						  <div class="col-12 col-md-4 seguinos">

						    <div class="row">
						      <h6>Seguinos</h6>
						    <!-- </div>
						    <div class="row"> -->
						      <div class="redes">
						        <a href="http://www.facebook.com"><img src="imagenes/iconos/icons8-facebook-old-26.png" alt=""></a>
						        <a href="http://instagram.com"><img src="imagenes/iconos/icons8-instagram-50.png" alt=""></a>
						        <a href="http://twitter.com"><img src="imagenes/iconos/icons8-twitter-24.png" alt=""></a>

						      </div>

						    </div>

						  </div>
						  <div class="col-12 col-md-4 trabaja">
						    <a href="#"><h5>Trabaja Con nosotros</h5>  </a>
						  </div>

						  <div class="col-12 col-md-4 contactanos">
						    <a href="#"><h5>+54 11 5263-7400</h5></a>
						  </div>


						</div>

						</section>


				</footer>
					<!-- FINAL DEL FOOTER -->


					<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
					<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
					<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

					</div>
					</body>
					</html>

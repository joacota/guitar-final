



							<!-- esto es el header -->
							<nav class="navbar navbar-expand-lg navbar-light bg-light">
						{{-- <a class="navbar-brand" href="index.php"><img  width= "110px"src="public/photosBrands/logo.png" alt=""></a> --}}
						<a class="navbar-brand" href="/"><img  width= "110px" src={{asset("imagesWebsite/logo.png")}} alt=""></a>


						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
							<span class="navbar-toggler-icon"></span>
						</button>

						<div class="collapse navbar-collapse" id="navbarSupportedContent">
							<ul class="navbar-nav mr-auto">

									@foreach ($categories as $category)

								 		<li class="nav-item dropdown">

											<a class="nav-link dropdown-toggle categoria" href="/gh/{{$category->id}}" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
												{{$category->name}}{{$category->category_id}}
											</a>

 										<div class="dropdown-menu" aria-labelledby="navbarDropdown">

									 	 	@foreach ($subcategories as $subcategory)


										 		 @if($subcategory->category_id == $category->id)
													 <a class="dropdown-item" href="/gh/{{$subcategory->id}}">
														 {{$subcategory->name}}
													</a>
										 		 @endif

									 	 	@endforeach

								 		</div>

								 		</li>
								  @endforeach

								</ul>


							<div class="menu-derecha navbar-nav mr-1">


								@if($usuarioNombre == "perfil")
											{{-- <a href="{{asset('admin/control1')}}" class="btn btn-outline-secondary btn-sm mr-2"> admin</a> --}}
											<a href="{{asset('register')}}" class="btn btn-outline-secondary btn-sm mr-2"> registrate</a>
											<a href="{{asset('login')}}" class="btn btn-outline-secondary btn-sm mr-2"> log in</a>
									@else
										<a href="{{$formPerfil}}" class="btn btn-outline-secondary btn-sm mr-2"> {{$usuarioNombre}}</a>
										<a href="{{asset('logout')}}" class="btn btn-outline-secondary btn-sm mr-2"> log out</a>
								@endif

								<a class="btn btn-outline-secondary btn-sm "href="{{ $formCarrito }}">{{ $cart->products->count()}} pc<img src="https://img.icons8.com/windows/26/000000/shopping-cart.png"> $ {{ $totalCart }}</a>

							</div>
						</div>
					</nav>

						<!-- final del header -->

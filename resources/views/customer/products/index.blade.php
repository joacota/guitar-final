
  @extends('layouts.general')



@section('content')

<section class="ofertas">
    <div class="row">
      <h1>{{$title}}</h1>
    </div>

    <div class="row">


        @foreach ($products as $product)
          <article class="col-12 col-md-6 col-xl-3">
              <div class="card text-center card-product" >
                  <a href="/products/{{$product->id}}">
                    @if(count($product->productpicture)>0)
                      <img src="{{url( 'storage/' . $product->productpicture[0]->src)}}" class="card-img-top" alt="..." maxwidth="80px" height="150px">

                    @else
                      <img src="{{url( '/imagesProducts/musicgeneric.jpg')}}" class="card-img-top" alt="..." maxwidth="80px" height="150px">
                    @endif
                  </a>
                  <div class="card-body">
                  <h5 class="card-title">{{ $product->name}}</h5>
                  {{-- <p class="card-text desc">{{ $products[$i]->description}}</p> --}}
                  <p class="card-text desc">{{(strlen($product->description) > 70) ? substr($product->description,0,67).'...' : str_pad($product->description, 70, "_", STR_PAD_RIGHT)}}</p>
                  @if($product->offer)
                    <p class="card-text descuento">{{'$'}} {{ $product->offer->name}}</p>

                  @endif
                  <p class="card-text">{{'$'}} {{ number_format($product->price,2)}}</p>


                  <a href="/cart/{{$product->id}}" class="btn btn-dark">Agregar al Carrito</a>
                  </div>
              </div>

          </article>


        @endforeach
    </div>

    <div class="row">
      <bn>
      {{ $products->links() }}
    </div>
</section>

{{-- @section('content1')

<div class="container">
  <div class="row">
    <div class="col">
      <h1>{{ $title }}</h1>
      @foreach ($products as $product)
      <div class="">
        <a href="/products/{{$product->id}}">{{ $product->name}}</a>
      </div>


      @endforeach
      <bn>
      {{ $products->links() }}
    </div>

  </div>
</div>
@stop --}}

@stop

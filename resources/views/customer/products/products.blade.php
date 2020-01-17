@extends('layouts.general')


@section('content')

<section class="ofertas">

    <div class="row">
      <h1>{{$title}} / {{$cat->name}} </h1>
    </div>


    <div class="row">
      @foreach ($products as $product)
  <article class="col-12 col-md-6 col-xl-3">
      <div class="card text-center card-product" >
          <a href="/products/{{$product->id}}">
            <img src="/imagesProducts/guitarranegra.jpg" class="card-img-top" alt="...">
          </a>
          <div class="card-body">
          <h5 class="card-title">{{ $product->name}}</h5>
          {{-- <p class="card-text desc">{{ $products[$i]->description}}</p> --}}
          <p class="card-text desc">{{(strlen($product->description) > 70) ? substr($product->description,0,67).'...' : str_pad($product->description, 70, "_", STR_PAD_RIGHT)}}</p>
          @if($product->offer)
            <p class="card-text descuento">{{'$'}} {{ $product->offer->name}}</p>
          @else
              <p class="card-text">_____________</p>
          @endif
          <p class="card-text">{{'$'}} {{ $product->price}}</p>

          <a href="#" class="btn btn-dark">Comprar!</a>
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
@stop

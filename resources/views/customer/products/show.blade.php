
@extends('layouts.product-page')


@section('content')

<div class="container">
  <div class="row">
    <div class="col">
      <div class="">

      </div>

      <h1>{{ $product->name}}</h1>
      <p><b>Descripcion: </b> {{ $product->description}}</p>


      {{$product->id}}
      {{$product->name}}

      <a href="/products" class="btn btn-primary">Volver</a>
    </div>

  </div>
</div>
@stop

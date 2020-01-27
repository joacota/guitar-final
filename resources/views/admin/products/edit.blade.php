@extends('layouts.generaladmin')


@section('content')

  {{-- <div class="container">
    <div class="row">
      <div class="col"> --}}
        {{-- <h1>Crear Producto</h1> --}}
        @include('admin.products.form',[
          'method'=>'patch',
          'url'=> '/admin/products/' . $product->id,
        ])
      {{-- </div>

    </div>

  </div> --}}
@endsection

@extends('layouts.generaladmin')


@section('content')

  {{-- <div class="container">
    <div class="row">
      <div class="col"> --}}
        {{-- <h1>Crear Producto</h1> --}}
        @include('admin.brands.form',[
          'method'=>'post',
          'url'=> '/admin/brands',
        ])
      {{-- </div>

    </div>

  </div> --}}
@endsection

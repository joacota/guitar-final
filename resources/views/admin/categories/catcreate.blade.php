@extends('layouts.generaladmin')


@section('content')

  {{-- <div class="container">
    <div class="row">
      <div class="col"> --}}
        {{-- <h1>Crear Producto</h1> --}}
        @include('admin.categories.form',[
          'method'=>'post',
          'url'=> '/admin/categoriesL1',
        ])
      {{-- </div>

    </div>

  </div> --}}
@endsection

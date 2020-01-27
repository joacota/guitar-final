@extends('layouts.generaladmin')


@section('content')

  {{-- <div class="container">
    <div class="row">
      <div class="col"> --}}
        {{-- <h1>Crear Producto</h1> --}}
        @include('admin.categories.form',[
          'method'=>'patch',
          'url'=> '/admin/categories/' . $category->id,
        ])
      {{-- </div>

    </div>

  </div> --}}
@endsection

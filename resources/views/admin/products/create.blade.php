@extends('layouts.generaladmin')


@section('content')


        @include('admin.products.form',[
          'method'=>'post',
          'url'=> '/admin/products',
        ])

@endsection

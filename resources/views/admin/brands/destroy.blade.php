@extends('layouts.generaladmin')


@section('content')
        @include('admin.brands.form',[
          'method'=>'delete',
          'url'=> '/admin/brands/' . $brand->id,
        ])

@endsection

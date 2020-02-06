@extends('layouts.generaladmin')


@section('content')
        @include('admin.categories.form',[
          'method'=>'delete',
          'url'=> '/admin/categories/' . $category->id,
        ])

@endsection

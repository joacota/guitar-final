
@extends('layouts.generalCarro')


@section('content')


        @include('customer.purchases.form',[
          'method'=>'get',
          'url'=> '/',
        ])

@endsection

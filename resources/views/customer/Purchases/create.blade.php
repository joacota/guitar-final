@extends('layouts.generalCarro')


@section('content')


        @include('customer.purchases.form',[
          'method'=>'post',
          'url'=> '/purchases',
        ])

@endsection

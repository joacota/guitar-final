@extends('layouts.generaladmin')


@section('content')

        @include('admin.brands.form',[
          'method'=>'patch',
          'url'=> '/admin/brands/' . $brand->id,
        ])
      {{-- </div>

    </div>

  </div> --}}
@endsection

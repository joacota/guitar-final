@extends('layouts.generaladmin')


@section('content')

<section>
  <div class="container">
      <div class="row">
          <div class="prductos col-lg-8">
              <h3>Lista de Marcas</h3>

              <div class="table-responsive">
                <table class="table table-bordered">
                <thead>
                  <tr class="bg-secondary">
                    <th scope="col">id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Foto</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Borrar</th>
                  </tr>
                </thead>
                    <tbody>

                        @foreach ($brands as $brand)


                          <tr class="brands">
                            <th scope="row">{{$brand->id}}</th>
                            <td> <b> {{$brand->name}}</b> </td>
                            <td><img src="{{ isset($brand->src) ? Storage::url($brand->src) : '/imagesProducts/musicgeneric.jpg' }}" alt="" width="60px" height="60px"> </td>
                            <td> <a class="editar" href="brands/{{$brand->id}}/edit"><img src="/imagesWebsite/editar.png" alt="" width="20px" height="20px"></a> </td>
                            <td> <a class="borrar" href="brands/{{$brand->id}}/delete"><img src="/imagesWebsite/delete.png" alt="" width="20px" height="20px"></a> </td>
                          </tr>

                      @endforeach

                  </tbody>
                </table>
              </div>

        </div>
      </div>
      <div class="prductos col-lg-4">

      </div>
          <a href="/admin/control1" class="btn btn-outline-secondary">Volver</a>
  </div>


</section>

@stop

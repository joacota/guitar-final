@extends('layouts.generaladmin')


@section('content')

<section>
  <div class="container">
      <div class="row">
          <div class="prductos col-lg-8">
              <h3>Lista de Categorias</h3>

              <div class="table-responsive">
                <table class="table table-bordered">
                <thead>
                  <tr class="bg-secondary">
                    <th scope="col">id</th>
                    <th scope="col">Nombre</th>
                    <th scope="col">Dependencia</th>
                    <th scope="col">Agregar</th>
                    <th scope="col">Editar</th>
                    <th scope="col">Borrar</th>
                  </tr>
                </thead>
                    <tbody>

                        @foreach ($categories as $category)


                          <tr class="categoria">
                            <th scope="row">{{$category->id}}</th>
                            <td> <b> {{$category->name}}</b> </td>
                            <td>{{$category->category_id}}</td>
                            <td> <a class="agregar" href="categories/add/{{$category->id}}"> <b> + </b></a> </td>
                            <td> <a class="editar" href="categories/add/{{$category->id}}/edit"></a> </td>
                            <td> <a class="borrar" href="categories/add"></a> </td>
                          </tr>

                            @foreach ($subcategories as $subcategory)
                              @if($subcategory->category_id == $category->id)
                              <tr class="subcategoria">
                                <th scope="row">{{$subcategory->id}}</th>
                                <td> {{$subcategory->name}} </td>
                                <td>{{$subcategory->category_id}}</td>
                                <td> <a class="agregar" href="categories/add"></a> </td>
                                <td> <a class="editar" href="categories/{{$subcategory->id}}/edit">  <b> Ed </b> </a></td>
                                <td> <a class="borrar" href="categories/{{$subcategory->id}}/delete"> <b> - </b></a> </td>

                              </tr>
                            @endif

                          @endforeach

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

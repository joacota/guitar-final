<div class="container-fluid">

  {{-- <div id="content-wrapper"> --}}

      <section class="row">

          <h3> Carga de Producto </h3>
          <br>
          <br>
      </section>

      <form action="{{ url($url) }}"  method="post" enctype="multipart/form-data">

        @csrf

        @method($method)

      <section class="row">



      <section class="col-12 col-md-6">

            <div class="form-group row ">
              <label class="col-md-2 form-control-label required">
                Nombre
              </label>

              <div class="col-md-6">
                <input
                class="form-control"
                name="name"
                type="text"
                value="{{ old('name', $product->name)}}">
              </div>
              <p class="text-danger">{{ $errors->first('name')}}</p>
              {{-- <div class="col-md-6 form-control-comment">

              </div> --}}
            </div>

            <div class="form-group row ">
              <label class="col-md-2 form-control-label required">
                Descripcion
              </label>

              <div class="col-md-6">
                <textarea class="description form-control" rows="5" cols="46" name="description">{{ old('descrption', $product->description)}}</textarea>
              </div>
              <p class="text-danger">{{ $errors->first('description')}}</p>
              {{-- <div class="col-md-6 form-control-comment">

              </div> --}}
            </div>

            <div class="form-group row ">
              <label class="col-md-2 form-control-label required">
                Especificaciones
              </label>

              <div class="col-md-6">

                <textarea class="Specifications form-control" name="specifications" rows="5" cols="46">{{ old('specifications', $product->specifications)}}</textarea>

              </div>
              <p class="text-danger">{{ $errors->first('specifications')}}</p>
              {{-- <div class="col-md-6 form-control-comment">

              </div> --}}
            </div>




            <div class="form-group row" style="margin-top:70px;">

              <div class="col-md-9 form-control-label boton_editar">
                <button  class="btn btn-dark">Grabar</button>
              </div>

              <div class="col-md-3 " >
                <p><a href="/">Volver a Home!</a></p>
              </div>

            </div>


          </section>

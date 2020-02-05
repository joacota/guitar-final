<div class="container-fluid">

      <section class="row">

          <h3> {{$title}} </h3>
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
                value="{{ old('name', $paymentmethod->name)}}">
              </div>
              <p class="text-danger">{{ $errors->first('name')}}</p>
              {{-- <div class="col-md-6 form-control-comment">

              </div> --}}
            </div>



            <div class="form-group row" style="margin-top:70px;">

              <div class="col-md-3 form-control-label boton_Crear">
                @if($method=='post')
                  <button  class="btn btn-dark">Grabar</button>
                @endif

              </div>


              <div class="col-md-3 form-control-label boton_editar">
                @if($method=='patch')
                  <button  class="btn btn-dark">Grabar</button>
                @endif

              </div>

              <div class="col-md-3 form-control-label boton_Borrar">
                @if($method=='delete')
                  <button  class="btn btn-dark">Eliminar</button>
                @endif
              </div>

              <div class="col-md-2 " >
                <p><a href="/admin/control1" class="btn btn-dark">Volver</a></p>
              </div>

            </div>


          </section>

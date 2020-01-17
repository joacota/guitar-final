<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Productos</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href={{asset("css/index1.css")}}>

  </head>
  <body>

    {{-- <section id="wrapper"> --}}

            <div class="container">

      <div id="content-wrapper">

      {{-- <section id="main"> --}}

            <header class="page-header">
              <h3> Carga de Producto </h3>

            </header>

      <section id="content" class="page-content">

        <form action="{{ url($url) }}"  method="post">
          @csrf

          @method($method)

      <section>

        {{-- <input type="hidden" name="id_customer" value="14">

      <div class="form-group row ">

        <!-- <form action="?action=perfil-usuario" method="post" enctype="multipart/form-data"> -->
            <label class="col-md-3 form-control-label">

            </label>

            <div class="col-md-3 form-control-valign">

                  <div class="foto">
                    <img src="" alt="avatar">

                  </div>

            </div>

            <div class="col-md-6 form-control-valign">

                  <input type="file" name="avatar">
                  <!-- <input type="submit" value="Upload Image" name="submit"> -->

            </div> --}}
        <!-- </form> -->

        <!-- <div class="col-md-3 form-control-comment">


        </div> -->
      </div>



      <div class="form-group row ">
        <label class="col-md-2 form-control-label required">
                  Nombre
              </label>
        <div class="col-md-4">

              <input
                class="form-control"
                name="name"
                type="text"
                value="{{ old('nombre', $product->name)}}"
                        >

        </div>

        <div class="col-md-6 form-control-comment">


        </div>
      </div>

      <div class="form-group row ">
        <label class="col-md-2 form-control-label required">
                Descripcion
              </label>
        <div class="col-md-4">
          <textarea class="description" rows="4" cols="46" name="description">
            {{$product->description}}
        </textarea>


        </div>

        <div class="col-md-6 form-control-comment">


        </div>
      </div>

      <div class="form-group row ">
        <label class="col-md-2 form-control-label required">
                  Especificaciones
              </label>

        <div class="col-md-4">

          <textarea class="Specifications form-control" name="specification" rows="4" cols="46">
            {{$product->specification}}
        </textarea>

        </div>

        <div class="col-md-6 form-control-comment">

        </div>
      </div>





      <div class="form-group row ">
        <label class="col-md-2 form-control-label">
                  Price (ARS)
              </label>
        <div class="col-md-2">

              <input
                class="form-control"
                name="price"
                type="number"
                value="{{ old('nombre', $product->price)}}"
                placeholder="xxxxxx.xx"   >



        </div>

        <div class="col-md-3 form-control-comment">

                    {{-- <label class="opcional "for="">(Ej:: 31/05/1970)</label> --}}

        </div>


      </div>

      <div class="form-group row ">
        <label class="col-md-2 form-control-label">
                  Stock (un)
              </label>
        <div class="col-md-2">

              <input
                class="form-control"
                name="stock"
                type="number"
                value="{{ old('nombre', $product->stock)}}"
                placeholder="xxxxxx.xx"   >



        </div>

        <div class="col-md-3 form-control-comment">

                    {{-- <label class="opcional "for="">(Ej:: 31/05/1970)</label> --}}

        </div>


      </div>

      <div class="form-group row ">
        <label class="col-md-2 form-control-label">
                  Category (un)
              </label>
        <div class="col-md-2">

              <input
                class="form-control"
                name="category_id"
                type="number"
                value="{{ old('nombre', $product->category_id)}}"
                placeholder="x"   >



        </div>

        <div class="col-md-3 form-control-comment">

                    {{-- <label class="opcional "for="">(Ej:: 31/05/1970)</label> --}}

        </div>


      </div>

      <div class="form-group row ">
        <label class="col-md-2 form-control-label">
                  Brands (un)
              </label>
        <div class="col-md-2">

              <input
                class="form-control"
                name="brand_id"
                type="number"
                value="{{ old('nombre', $product->brand_id)}}"
                placeholder="x"   >



        </div>

        <div class="col-md-3 form-control-comment">

                    {{-- <label class="opcional "for="">(Ej:: 31/05/1970)</label> --}}

        </div>


      </div>

<!-- Botones para grabar o editar -->
      <div class="form-group row ">

        {{-- {{ $disabled ?? '' }} --}}
          <div class="col-md-3 form-control-label boton_editar">
            
            <button  class="btn btn-dark">Grabar</button>


          </div>


              <div class="col-md-3 " >
                <p><a href="../index.php">Volver a Home!</a></p>
              </div>

    <!-- <a href="../home.html"><h6>volver a HOME</h6></a> -->

      </div>




</section>
</form>
</section>

  </div>
    </div>



                      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
                      <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
                      <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>
</html>

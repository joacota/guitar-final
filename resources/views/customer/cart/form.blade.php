

<section>
<div class="container-fluid">
  <form action="{{ url($url) }}"  method="get" enctype="multipart/form-data">
{{-- //<form action="{{ url($url) }}"  method="post" enctype="multipart/form-data"> --}}


    @csrf

    @method($method)

<div class="row">
  <h3>{{$title}}</h3>

</div>


  <div class="row">
    <div class="col-lg-12">


    <div class="table-responsive">
      <table class="table table-bordered">
  <thead>
    <tr class="bg-secondary">
      <th scope="col">id</th>
      <th scope="col">Art. nº</th>
      <th scope="col">Foto</th>
      <th scope="col">Articulo</th>
      <th scope="col" width="150px">Descripcion</th>
      <th scope="col">Precio unit.</th>
      <th scope="col">Oferta</th>
      <th scope="col">Precio c/Oferta.</th>
      <th scope="col">Cant.</th>
      <th scope="col">SubTotal</th>
      <th scope="col" class="text-center"><img src="imagesWebsite/plus.png" alt="" width="10px" height="10px"></th>
      <th scope="col" class="text-center"><img src="imagesWebsite/minus.png" alt="" width="10px" height="10px"</th>
      <th scope="col"><img src="imagesWebsite/trash.png" alt="" width="15px" height="15px"> </th>
    </tr>
  </thead>
  <tbody>



      @foreach ($cartProducts as $key => $cartProduct)
{{-- //admin/categories/{id}/edit --}}
{{-- {{Storage::url($product->productpicture[0]->src) }} --}}
<tr class="cartProducts">
  <th scope="row">{{$key+1}}</th>
  <th class="text-center">{{$cartProduct->id}}</th>
  <td><img src="{{ $cartProduct->productpicture->count()>0 ? Storage::url($cartProduct->productpicture[0]->src) : 'storage/imagesProducts/musicgeneric.jpg'}}" alt="" width="60px" height="60px"> </td>
  <td> <b> {{$cartProduct->name}}</b> </td>
  <td width="150px"> {{(strlen($cartProduct->description) > 50) ? substr($cartProduct->description,0,47).'...' : str_pad($cartProduct->description, 50, "_", STR_PAD_RIGHT)}} </td>
  <td class="text-right"> $ {{number_format($cartProduct->price,2)}} </td>
{{-- //debo consultar si la fecha de la oferta es posterior a la actual --}}
@if(isset($cartProduct->offer))
<td> $ {{$cartProduct->offer->name}} </td>
<td class="text-right"> $ {{number_format($cartProduct->price*(1-$cartProduct->offer->factor),2)}} </td>
<td class="text-center"> {{$cartProduct->pivot->qty}} </td>
<td class="text-right"> $ {{number_format($cartProduct->price*$cartProduct->pivot->qty*(1-$cartProduct->offer->factor),2)}} </td>
@else
  <td>  </td>
  <td>  </td>
  <td class="text-center"> {{$cartProduct->pivot->qty}} </td>
  <td class="text-right"> $ {{number_format($cartProduct->price*$cartProduct->pivot->qty,2)}} </td>
@endif
  {{-- <td> {{$cartProduct['cantidad']}} </td>
  <td> $ {{$cartProduct->price*$cartProduct['cantidad']}} </td> --}}
  <td class="text-center"><a href="/cartp/{{$cartProduct->id}}"> <img src="imagesWebsite/plus.png" alt="" width="15px" height="15px"> </td>
  <td class="text-center"> <a href="/cartm/{{$cartProduct->id}}"> <img src="imagesWebsite/minus.png" alt="" width="15px" height="15px"> </a></td>
  <td> <a href="/cartt/{{$cartProduct->id}}"> <img src="imagesWebsite/trash.png" alt="" width="15px" height="15px">  </a>  </td>

</tr>
@endforeach


</tbody>

</table>
</div>



</div>
</div>

<div class="row">
    <div class="col-9">
      <p></p>
    </div>
    <div class="col-3 text-left">
      <p>Total a pagar : $ {{number_format($totalCart,2)}} + IVA </p>
    </div>


</div>


<div class="row">
  <div class="col-2">
    <button type="submit" name="button" class="btn btn-primary">Comprar</button>

  </div>
  <div class="col-9">
    {{-- <button type="button" name="button" class="btn btn-primary">Comprar</button> --}}
  </div>
  <div class="col-1">
    <button type="button" name="button" class="btn btn-dark">Volver</button>
  </div>

</div>


</form>
</div>



</section>

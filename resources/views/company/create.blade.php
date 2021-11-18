@extends('layouts.app')

@section ('content')

<div class="container p-5" id="content">
    <h2 class="pl-5"><i class="fas fa-plus-square"></i> Add New Company</h2>

    @if($errors->any())
    @foreach($errors->all() as $err)
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      {{ $err }}
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
     </button>
    </div>
    @endforeach
    @endif

    @if(Session::has('status'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      {{ Session::get('status') }}
      <button type="button" class="close" data-dismiss="alert" aria-label="Close">
        <span aria-hidden="true">&times;</span>
     </button>
    </div>
    @endif

<form class="p-5" action="{{ route('company.store') }}" method="post">
  @csrf
 <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" name="name" placeholder="Enter Company Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" name="email" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="address">Address</label>
    <textarea class="form-control" name="address" placeholder="Enter address"></textarea>
  </div>
  <button type="submit" class="btn btn-outline-primary">
    <i class="fas fa-check-circle"></i> Save</button>
</form>
</div>



@endsection
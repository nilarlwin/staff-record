@extends('layouts.app')

@section ('content')

<div class="container p-5" id="content">
    <h2 class="pl-5"><i class="fas fa-edit"></i> Edit Staff</h2>

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

<form class="p-5" action="{{ route('employees.update',$employee->id) }}" method="post">
  @csrf
  <div class="row">
  <div class="col-md-6">
 <div class="form-group">
    <label for="name">Name</label>
    <input type="text" class="form-control" id="name" name="name" value="{{ $employee->name }}">
  </div>
  <div class="form-group">
    <label for="staffid">Staff Id</label>
    <input type="text" class="form-control" id="staffid" name="staffid" value="{{ $employee->staffID }}">
  </div>
  
  <div class="form-group">
    <label for="company">company</label>
    <select class="form-control" name="company">
        <option>{{ $employee->company }}</option>
        @foreach ($companies as $company)
        <option>{{ $company->name }}</option>
        @endforeach
    </select>
  </div>
  
  <div class="form-group">
    <label for="password">Password</label>
    <input type="password" class="form-control" id="password" name="password" placeholder="*******">
  </div>
</div>
<div class="col-md-6">
  <div class="form-group">
    <label for="email">Email address</label>
    <input type="email" class="form-control" id="email" name="email" value="{{ $employee->email }}">
  </div>
  <div class="form-group">
    <label for="phone">Phone</label>
    <input type="phone" class="form-control" id="phone" name="phone" value="{{ $employee->phone }}">
  </div>
  <div class="form-group">
    <label for="department">Department</label>
    <input type="text" class="form-control" id="department" name="department" value="{{ $employee->department }}">
  </div>
  <div class="form-group">
    <label for="address">Address</label>
    <textarea class="form-control" name="address">{{ $employee->address }}</textarea>
  </div>
</div>
</div>
<button type="submit" class="btn btn-outline-primary">
    <i class="fas fa-check-circle"></i> Update</button>
</form>
</div>



@endsection
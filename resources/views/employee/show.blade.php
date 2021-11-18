@extends('layouts.app')

@section('content')


<div class="container p-5" id="main">
    <h2><i class="fas fa-users"></i> Staff Lists</h2>
    @if(Session::has('status'))
    <div class="alert alert-success alert-dismissible fade show mt-3" role="alert">
      {{ Session::get('status') }}
     <button type="button" class="close" data-dismiss="alert" aria-label="Close">
      <span aria-hidden="true">&times;</span>
      </button>
     </div>
     @endif
    <table class="table bg-dark border mt-3" id="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Staff ID</th>
      <th scope="col">Phone</th>
      <th scope="col">Company</th>
      <th scope="col">Department</th>
      <th scope="col">Address</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      @php $no=1; @endphp
      @foreach($employees as $employee)
      <th scope="row">{{ $no }}</th>
      <td>{{ $employee->name }}</td>
      <td>{{ $employee->staffID }}</td>
      <td>{{ $employee->phone }}</td>
      <td>{{ $employee->company }}</td>
      <td>{{ $employee->department }}</td>
      <td>{{ $employee->address }}</td>
      <td>
          <a href="{{ route('employees.edit',$employee->id) }}" class="btn btn-success"><i class="fas fa-edit"></i> </a>
          <a href="{{ route('employees.delete',$employee->id) }}" class="btn btn-danger"><i class="fas fa-trash"></i> </a>
        </td>
    </tr>
    @php $no++; @endphp
    @endforeach
  </tbody>
</table>
</div>

@endsection
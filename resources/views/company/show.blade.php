@extends('layouts.app')

@section('content')


<div class="container p-5" id="main">
    <h2><i class="fas fa-stream"></i> Company Lists</h2>
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
      <th scope="col">Email</th>
      <th scope="col">Address</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
      @php $no=1; @endphp
      @foreach($companies as $company)
      <th scope="row">{{ $no }}</th>
      <td>{{ $company->name }}</td>
      <td>{{ $company->email }}</td>
      <td>{{ $company->address }}</td>
      <td>
          <a href="{{ route('company.edit',$company->id) }}" class="btn btn-success"><i class="fas fa-edit"></i> </a>
          <a href="{{ route('company.delete',$company->id) }}" class="btn btn-danger"><i class="fas fa-trash"></i> </a>
        </td>
    </tr>
    @php $no++; @endphp
    @endforeach
  </tbody>
</table>
</div>

@endsection
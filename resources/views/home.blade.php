@extends('layouts.app')

@section('content')
<div class="container p-5" id="main">
 <h2><i class="fas fa-users"></i> Staff Lists</h2>
  <table class="table mt-3 border bg-dark" id="table">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Name</th>
      <th scope="col">Staff ID</th>
      <th scope="col">Phone</th>
      <th scope="col">Company</th>
      <th scope="col">Department</th>
      <th scope="col">Address</th>
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
    </tr>
    @php $no++; @endphp
    @endforeach
  </tbody>
</table>
</div>
@endsection

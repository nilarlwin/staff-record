<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use App\Models\Employee;
use App\Models\Company;

class EmployeeController extends Controller
{
    public function create(){
        $companies = Company::all();
        return view('employee.create',['companies' => $companies]);
    }
    public function store(Request $request){
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'staffid'=>'required',
            'phone'=>'required',
            'company'=>'required',
            'department'=>'required',
            'password'=>'required',
            'address'=>'required'
        ]);
        Employee::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'staffID'=>$request->staffid,
            'phone'=>$request->phone,
            'company'=>$request->company,
            'department'=>$request->department,
            'password'=>Hash::make($request->password),
            'address'=>$request->address
        ]);
        return redirect('employees')->with('status','Staff Created Successfully');
    }
    public function show(){
        $employees = Employee::all();
        return view('employee.show',['employees'=>$employees]);
    }
    public function edit($id){
        $companies = Company::all();
        $employee = Employee::find($id);
        return view ('employee.edit',['employee'=>$employee,'companies'=>$companies]);
    }
    public function update(Request $request,$id){
         $request->validate([
            'name'=>'required',
            'email'=>'required',
            'staffid'=>'required',
            'phone'=>'required',
            'company'=>'required',
            'department'=>'required',
            'password'=>'required',
            'address'=>'required'
         ]);
         Employee::find($id)->update([
            'name'=>$request->name,
            'email'=>$request->email,
            'staffID'=>$request->staffid,
            'phone'=>$request->phone,
            'company'=>$request->company,
            'department'=>$request->department,
            'password'=>Hash::make($request->password),
            'address'=>$request->address
         ]);
         return redirect('employees')->with('status','Staff Updated Successfully');
    }
    public function destroy($id){
        Employee::destroy($id);
        return redirect()->back()->with('status','Staff deleted successfully');
    }
}

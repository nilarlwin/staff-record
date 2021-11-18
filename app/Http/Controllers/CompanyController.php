<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Company;

class CompanyController extends Controller
{
    public function create(){
        return view('company.create');
    }
    public function store(Request $request){
      $request->validate([
          'name'=>'required',
          'email'=>'required',
          'address'=>'required'
      ]);
      Company::create([
          'name'=>$request->name,
          'email'=>$request->email,
          'address'=>$request->address
      ]);
       return redirect('companies')->with('status','Company created successfully');
    }
    public function show(){
       $companies = Company::all();
       return view('company.show',['companies'=>$companies]);
    }
    public function edit($id){
        $company = Company::find($id);
        return view('company.edit',['company'=>$company]);
    }
    public function update($id,Request $request){
        $request->validate([
            'name' =>'required',
            'email'=>'required',
            'address'=>'required'
        ]);
        Company::find($id)->update([
            'name' => $request->name,
            'email' => $request->email,
            'address'=>$request->address
        ]);
        return redirect('companies')->with('status','Company Updated Successfully');
    }
    public function destroy($id){
        Company::destroy($id);
        return redirect()->back()->with('status','Company deleted successfully');
    }
}

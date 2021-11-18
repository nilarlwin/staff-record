<?php

namespace App\Http\Controllers;
use App\Models\User;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;

class UserController extends Controller
{
    public function create(){
        return view('user.create');
    }
    public function store(Request $request){
        $request->validate([
            'name'=>'required',
            'email'=>'required',
            'password'=>'required',
            'image'=>'required'
        ]);
        $file = $request->file('image');
        $fileName =rand().$file->getClientOriginalName();
        $file -> move(public_path('assets/user-profile'),$fileName);
        User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
            'profile'=>$fileName
        ]);
        return redirect('users')->with('status','User Created Successfully');
    }
    public function show(){
        $users = User::all();
        return view('user.show',['users'=>$users]);
    }
    public function index($id){
        $user = User::find($id);
        return view('user.index',['user'=>$user]);
    }
    public function destroy($id){
        User::destroy($id);
        return redirect()->back()->with('status','User Deleted Successfully');
    }
    public function edit($id){
        if($id == auth()->id()){
        $user = User::find($id);
        return view('profile.edit',['user'=>$user]);
         }else{
         return redirect('users');
         }
       }
       public function update(Request $request, $id)
    {
        $request->validate([
            'name' => 'required',
            'email' => 'required',
            'password' =>'required',
            'image' =>'required'
        ]);
        $file = $request->file('image');
        $fileName =rand().$file->getClientOriginalName();
        $file -> move(public_path('assets/user-profile'),$fileName);
        User::find($id)->update([
            'name' =>$request->input('name'),
            'email' =>$request->input('email'),
            'password'=>Hash::make($request->input('password')),
            'profile' =>$fileName
        ]);
        return redirect('users')->with('status','User Updated Successfully');
        
    }
}

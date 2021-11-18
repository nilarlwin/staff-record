<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\CompanyController;
use App\Http\Controllers\EmployeeController;
use App\Http\Controllers\UserController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('auth.login');
});

Auth::routes(['register'=>false]);

Route::middleware('auth')->group(function(){
Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
Route::get('/company',[CompanyController::class,'create'])->name('company.create');
Route::post('/company',[CompanyController::class,'store'])->name('company.store');
Route::get('/companies',[CompanyController::class,'show'])->name('company.show');
Route::get('/companies/{id}',[CompanyController::class,'edit'])->name('company.edit');
Route::post('/companies/{id}',[CompanyController::class,'update'])->name('company.update');
Route::get('/companies/{id}/delete',[CompanyController::class,'destroy'])->name('company.delete');

Route::get('/employee',[EmployeeController::class,'create'])->name('employees.create');
Route::post('/employee',[EmployeeController::class,'store'])->name('employees.store');
Route::get('/employees',[EmployeeController::class,'show'])->name('employees.show');
Route::get('/employees/{id}',[EmployeeController::class,'edit'])->name('employees.edit');
Route::post('/employees/{id}',[EmployeeController::class,'update'])->name('employees.update');
Route::get('/employees/{id}/delete',[EmployeeController::class,'destroy'])->name('employees.delete');

Route::get('/user',[UserController::class,'create'])->name('users.create');
Route::post('/user',[UserController::class,'store'])->name('users.store');
Route::get('users',[UserController::class,'show'])->name('users.show');
Route::get('users/{id}',[UserController::class,'index'])->name('users.index');
Route::get('user/{id}/delete',[UserController::class,'destroy'])->name('users.delete');
Route::get('/user/{id}/edit',[UserController::class,'edit'])->name('users.edit');
Route::post('/user/{id}/edit',[UserController::class,'update'])->name('users.update');
});
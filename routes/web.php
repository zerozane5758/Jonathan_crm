<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\Auth\RegisterController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\LeadController;
use App\Http\Controllers\ProjectController;
use App\Http\Controllers\CustomerController;

// Login
Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login');
Route::post('/login', [LoginController::class, 'login'])->name('login.post');
Route::post('/logout', [LoginController::class, 'logout'])->name('logout');

// Register
Route::get('/register', [RegisterController::class, 'showRegistrationForm'])->name('register');
Route::post('/register', [RegisterController::class, 'register'])->name('register.post');

// Lead (Admin and Manager)
Route::resource('leads', LeadController::class)->middleware(['auth']);

// Product (Admin and Manager)
Route::resource('products', ProductController::class)->middleware(['auth']);

// Customer (Admin and Manager)
Route::get('/customers', [CustomerController::class, 'index'])->middleware(['auth'])->name('customers.index');

// Project (Manager only)
Route::get('/projects', [ProjectController::class, 'index'])->middleware(['auth', 'role:manager'])->name('projects.index');
Route::post('/projects', [ProjectController::class, 'store'])->middleware(['auth', 'role:manager'])->name('projects.store');
Route::post('/projects/{project}/approve', [ProjectController::class, 'approve'])->middleware(['auth', 'role:manager'])->name('projects.approve');
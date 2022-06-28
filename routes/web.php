<?php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\AdminController;
use App\Http\Controllers\Categories;
use App\Http\Controllers\ContactController;
use App\Http\Controllers\Admin_Product;
//front end 
Route::get('/', [HomeController::class, 'index']);
Route::get('/layout', [HomeController::class, 'layout']);

//backend
Route::get('/login', [AdminController::class, 'index']);
Route::post ('/admin-dashboard',[AdminController::class, 'dashboard']); 
route::get ('/admin-layout',[AdminController::class, 'admin_layout']);

Route::get('danh-muc/{slug}',[Categories::class,'index'])->name('category');

//web
Route::get('/web-index', [HomeController::class, 'web_index']);
Route::get('/web-about', [HomeController::class, 'web_about']);
Route::get('/web-contact', [HomeController::class, 'web_contact']);
Route::get('/web-delivery', [HomeController::class, 'web_delivery']);
Route::get('/web-news', [HomeController::class, 'web_news']);
Route::get('/search-product', [HomeController::class, 'search_product']);

//contact user
Route::post('/save-contact', [ContactController::class, 'save_contact']);
//detail
Route::get('detail/{id}',[Categories::class,'detail']);
// product
Route::get('/products',[Admin_Product::class,'index'])->name('admin.products');
Route::get('/add-product',[Admin_Product::class,'create'])->name('admin.add_product');
Route::post('/add-product',[Admin_Product::class,'store']);

// //save-mobile
Route::post('/save-mobile', [Categories::class, 'save_mobile']);

// Route::group(['first', 'second'])->group(function () {
Route::get('/add-users','App\Http\Controllers\UsersController@add_users');
Route::get('/all-users','App\Http\Controllers\UsersController@show_users'); //tim kiem DT
Route::get('/all-edit-users','App\Http\Controllers\UsersController@all_users');//them nguoi dung
Route::get('/delete-users/{users_id}','App\Http\Controllers\UsersController@delete_users');//xoa
Route::post('/save-users','App\Http\Controllers\UsersController@save_users');//them
Route::post('/update-users/{users_id}','App\Http\Controllers\UsersController@update_users');//cap nhat
Route::get('/edit-users/{users_id}','App\Http\Controllers\UsersController@edit_users');//sua
Route::post('/dash-add-users','App\Http\Controllers\UsersController@dashboard_users');
Route::get('/pagination-users','App\Http\Controllers\UsersController@pagination');//phan trang

//category{
Route::get('/add-category','App\Http\Controllers\CategoryProduct@add_category_product');
Route::get('/edit-category/{category_id}','App\Http\Controllers\CategoryProduct@edit_category_product');
Route::get('/delete-category/{category_id}','App\Http\Controllers\CategoryProduct@delete_category_product');
Route::get('/all-category','App\Http\Controllers\CategoryProduct@all_category_product')->name('admin.all_category');//
Route::post('/save-category','App\Http\Controllers\CategoryProduct@save_category_product');
Route::post('/update-category/{category_id}','App\Http\Controllers\CategoryProduct@update_category_product');
Route::get('/all-edit-category','App\Http\Controllers\CategoryProduct@show_category');//tim kiem san 

//cusstom
route::get('/all-edit-custom','App\Http\Controllers\CustomController@all_custom');//tât ca
Route::post('/save-custom','App\Http\Controllers\CustomController@save_custom');//them
Route::get('/add-custom','App\Http\Controllers\CustomController@add_custom');
Route::get('/all-custom','App\Http\Controllers\CustomController@show_custom');//tim kiem
Route::post('/update-custom/{custom_id}','App\Http\Controllers\CustomController@update_custom');//cap nhat
Route::get('/edit-custom/{custom_id}','App\Http\Controllers\CustomController@edit_custom');//sua


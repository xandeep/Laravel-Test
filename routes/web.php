<?php

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
    return view('blogs/blogList');
});

Auth::routes();

Route::get('/', 'Blogs@blogs');
Route::get('/blogDetail/{id}', 'Blogs@blogDetail');
Route::get('/admin', 'blogAdmin@blogs');

Route::get('/admin/addBlog', 'blogAdmin@addBlog');
Route::get('/blog/edit/{id}', 'blogAdmin@editBlog');

Route::get('/blog/delete/{id}', 'blogAdmin@deleteBlog');

Route::POST('/getBlogList', 'Blogs@getBlogList');


Route::group(['middleware' => ['web']], function () {
	Route::POST('/admin/addBlog', 'blogAdmin@store');
	Route::POST('/blog/edit/updateBlog', 'blogAdmin@updateBlog');

});

//Route::get('/home', 'HomeController@index')->name('home');
/*
Route::get('/home', function () {
    return view('blogs/admin/blogList');
});
*/

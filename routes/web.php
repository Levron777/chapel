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

Route::get('/', 'MainController@index');

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');

Route::get('/one/{id}', 'OneNewsController@index');

Route::get('/adress', 'AdressController@index');

Route::get('/about', 'AboutController@index');

Route::get('/contacts', 'ContactController@index');

Route::get('/video', 'VideoController@index');

Route::get('/events', 'EventController@index');

Route::get('/journey', 'JourneyController@index');

Route::get('/preaching', 'PreachingController@index');

Route::get('/reading', 'ReadingController@index');

Route::get('/english', 'EnglishController@index');

// Admin routers, main page

Route::get('/admin', 'Admin\AdminController@index')->name('admin')->middleware('auth');

Route::get('/admin/news', 'Admin\NewsController@index')->middleware('auth');

Route::post('/admin/news', 'Admin\AdminController@store')->middleware('auth');

Route::delete('/admin/news/{id}', 'Admin\AdminController@delete')->middleware('auth');

Route::post('/admin/news/{id}/edit', 'Admin\AdminController@edit')->middleware('auth');

Route::post('/admin/news/{id}/save', 'Admin\AdminController@update')->middleware('auth');

// Edit adress page

Route::any('/admin/adress/edit', 'Admin\AdminAdressController@edit')->middleware('auth');

Route::post('/admin/adress/{id}/save', 'Admin\AdminAdressController@update')->middleware('auth');

// Edit about page

Route::any('/admin/about/edit', 'Admin\AdminAboutController@edit')->middleware('auth');

Route::post('/admin/about/{id}/save', 'Admin\AdminAboutController@update')->middleware('auth');

// Edit contacts page

Route::any('/admin/contacts/edit', 'Admin\AdminContactsController@edit')->middleware('auth');

Route::post('/admin/contacts/{id}/save', 'Admin\AdminContactsController@update')->middleware('auth');

// Edit videos page

Route::get('/admin/videos', 'Admin\AdminVideoController@index')->middleware('auth');

Route::post('/admin/videos', 'Admin\AdminVideoController@store')->middleware('auth');

Route::delete('/admin/videos/{id}', 'Admin\AdminVideoController@delete')->middleware('auth');

Route::post('/admin/videos/{id}/edit', 'Admin\AdminVideoController@edit')->middleware('auth');

Route::post('/admin/videos/{id}/save', 'Admin\AdminVideoController@update')->middleware('auth');

// Edit events page

Route::get('/admin/events', 'Admin\AdminEventsController@index')->middleware('auth');

Route::post('/admin/events', 'Admin\AdminEventsController@store')->middleware('auth');

Route::delete('/admin/events/{id}', 'Admin\AdminEventsController@delete')->middleware('auth');

Route::post('/admin/events/{id}/edit', 'Admin\AdminEventsController@edit')->middleware('auth');

Route::post('/admin/events/{id}/save', 'Admin\AdminEventsController@update')->middleware('auth');

// Edit preachings page

Route::get('/admin/preachings', 'Admin\AdminPreachingController@index')->middleware('auth');

Route::post('/admin/preachings', 'Admin\AdminPreachingController@store')->middleware('auth');

Route::delete('/admin/preachings/{id}', 'Admin\AdminPreachingController@delete')->middleware('auth');

Route::post('/admin/preachings/{id}/edit', 'Admin\AdminPreachingController@edit')->middleware('auth');

Route::post('/admin/preachings/{id}/save', 'Admin\AdminPreachingController@update')->middleware('auth');

// Edit english page

Route::any('/admin/english/edit', 'Admin\AdminEnglishController@edit')->middleware('auth');

Route::post('/admin/english/{id}/save', 'Admin\AdminEnglishController@update')->middleware('auth');

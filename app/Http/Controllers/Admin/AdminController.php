<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\News;
use DB;

class AdminController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index()
    {
        return view('admin.main');
    }

    // Saving data entered in the input field by the administrator in the database 
    // (with validation)

    public function store(Request $request)
    {
        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'descriptionInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $news = new News;

        $news->title = $request->input('titleInput');
        $news->description = $request->input('descriptionInput');
        $news->url = $request->input('urlInput');
        $news->rubric = $request->input('rubricInput');
        $news->save();

        return redirect('admin/news');
    }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit($id)
    {
        $oneNewEdit = News::find($id);

        return view('admin.oneNewEdit', [
            'oneNewEdit' => $oneNewEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $oneNewEdit = News::find($id);

        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'descriptionInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $oneNewEdit->title = $request->input('titleInput');
        $oneNewEdit->description = $request->input('descriptionInput');
        $oneNewEdit->url = $request->input('urlInput');
        $oneNewEdit->rubric = $request->input('rubricInput');
        $oneNewEdit->save();

        return redirect('admin/news');
    }

    // Method to delete the selected row from the news table

    public function delete(Request $request, $id)
    {
        $news = News::where('id', $id)->delete();

        return redirect('admin/news');
    }
}

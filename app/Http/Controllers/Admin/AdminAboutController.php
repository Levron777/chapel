<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\About;
use DB;

class AdminAboutController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit()
    {
        $aboutEdit = About::find(1);

        return view('admin.aboutEdit', [
            'aboutEdit' => $aboutEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $aboutEdit = About::find($id);

        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'descriptionInput' => 'required',
            // 'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $aboutEdit->title = $request->input('titleInput');
        $aboutEdit->description = $request->input('descriptionInput');
        // $adressEdit->url = $request->input('urlInput');
        $aboutEdit->rubric = $request->input('rubricInput');
        $aboutEdit->save();

        return redirect('admin/about/edit');
    }
}

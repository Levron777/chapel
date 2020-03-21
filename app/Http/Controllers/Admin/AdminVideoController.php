<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Video;
use DB;

class AdminVideoController extends Controller
{
    // public function __construct()
    // {
    //     $this->middleware('auth');
    // }

    public function index(Request $request)
    {
        $videos = DB::table('video')->orderBy('created_at', 'desc')->paginate(2);

        return view('admin.video', [
            'videos' => $videos,
        ]);
    }

    // Saving data entered in the input field by the administrator in the database 
    // (with validation)

    public function store(Request $request)
    {
        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'linkInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $videos = new Video;

        $videos->title = $request->input('titleInput');
        $videos->link = $request->input('linkInput');
        $videos->url = $request->input('urlInput');
        $videos->rubric = $request->input('rubricInput');
        $videos->save();

        return redirect('admin/videos');
    }

    // Method for redirecting to the edit page of the selected field from the news table

    public function edit($id)
    {
        $videoEdit = Video::find($id);

        return view('admin.videoEdit', [
            'videoEdit' => $videoEdit,
        ]);
    }

    // Method for saving edited data entered by the administrator (with validation)

    public function update(Request $request, $id)
    {
        $videoEdit = Video::find($id);

        $this->validate($request, [
            'titleInput' => 'required|max:255',
            'linkInput' => 'required',
            'urlInput' => 'nullable|url|max:255',
            'rubricInput' => 'required|max:255',
        ]);

        $videoEdit->title = $request->input('titleInput');
        $videoEdit->link = $request->input('linkInput');
        $videoEdit->url = $request->input('urlInput');
        $videoEdit->rubric = $request->input('rubricInput');
        $videoEdit->save();

        return redirect('admin/videos');
    }

    // Method to delete the selected row from the news table

    public function delete(Request $request, $id)
    {
        $news = Video::where('id', $id)->delete();

        return redirect('admin/videos');
    }
}

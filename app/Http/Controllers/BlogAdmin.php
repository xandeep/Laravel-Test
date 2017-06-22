<?php

namespace Blogs\Http\Controllers;

use Illuminate\Http\Request;
use Blogs\Blog;
use Auth;
use Illuminate\Support\Str;

class BlogAdmin extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

     public function blogs()
    {
    
        $blogs = Blog::with('user') ->where('active', 1)->orderBy('id', 'desc')->paginate(2);
        return view('admin/blogList', ['blogs' => $blogs]);
        
    }

    public function addBlog()
    {
        return view('admin/addBlog');
        
    }

    public function editBlog($id)
    {

        $blog = Blog::where('id', $id)->get();
        return view('admin/editBlog' , ['blog' => $blog] );
        
    }

    public function deleteBlog(Request $request, $id)
    {
      
        $blog = Blog::find($id);

        $blog->deleted_at = date('Y-m-d H:i:s');
        $blog->active = '0';

        $blog->save();
       
        $request->session()->flash('alert-success', 'Blog Deleted!');
        return redirect('/admin');
       
        
    }
    

    public function store(Request $request)
    {

        /*
        $this->validate($request, [
        'title' => 'required|unique:posts|max:255',
        'body' => 'required',
        ]);
        */

        $blog = new Blog;

        $blog->title = $request->input('title');
        $blog->body = $request->input('body');
        $status = $request->input('status');
        $blog->active = (isset( $status)) ? 1  : 0;
        $userId = Auth::id();
        $blog->user_id =  $userId;


        $blog->save();

        $request->session()->flash('alert-success', 'Blog Added!');

        return redirect('/admin');

    }

     public function updateBlog(Request $request)
    {

        

        $blog = Blog::find($request->input('blogId'));
       // print_r($blog);

        $blog->title = $request->input('title');
        $blog->body = $request->input('body');
        $status = $request->input('status');
        $active = (isset( $status)) ? 1  : 0;
        $blog->active =  $active;

        $blog->save();

        $request->session()->flash('alert-success', 'Blog Edited!');
        return redirect('/blog/edit/'.$request->input('blogId'));
        
        
    }
}

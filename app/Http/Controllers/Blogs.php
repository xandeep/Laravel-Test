<?php

namespace Blogs\Http\Controllers;

use Illuminate\Http\Request;
use Blogs\Blog;
use Blogs\User;



class Blogs extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
       // $this->middleware('auth');
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
        // $blogs = Blog::all();
         $blogs = Blog::with('user') ->where('active', 1)->orderBy('id', 'desc')->paginate(2);
         //echo '<pre>';
         //print_r($blogs);

        return view('blogList', ['blogs' => $blogs]);
        
    }

    public function blogDetail($id)
    {
        $blog = Blog::with('user')->where('id', $id)->get();
        $blogs = Blog::with('user') ->where('active', 1)->orderBy('id', 'desc')->paginate(12);
        return view('blogDetail', ['blog' => $blog,'blogs' => $blogs]);
        
    }
}

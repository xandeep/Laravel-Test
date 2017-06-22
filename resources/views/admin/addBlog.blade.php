@extends('layouts.app')

@section('content')
<div class="container">

    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif

    <div class="row">
       <div class="span8">
     <form name="addBlog" id ="blog" method ="POST" action ="addBlog">
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" name="title" required class="form-control" id="title" aria-describedby="titleHelp" placeholder="Enter Title">
   
  </div>

  
  <div class="form-group">
    <label for="body">Body</label>
    <textarea class="form-control" id="body" required name="body" rows="8"></textarea>
  </div>
  
   <div class="checkbox">
    <label>
      <input type="checkbox" name="status" checked value="1" > Active
    </label>
  </div>
 
  <button type="submit" class="btn btn-primary">Save Blog</button>
   <a href="../" class=" btn btn-info" role="button">Cancel</a>
  <input type="hidden" name="_token" value="{{ csrf_token() }}">
</form>
    
    </div>
    </div>
</div>


@endsection

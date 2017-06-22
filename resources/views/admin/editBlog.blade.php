@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
       <div class="span8">
     <form name="updateBlog" id ="blog" method ="POST" action ="updateBlog">
  <div class="form-group">
    <label for="title">Title</label>
    <input type="text" name="title" required class="form-control" id="title" aria-describedby="titleHelp" 
    value="<?php echo $blog[0]->title; ?>">
   
  </div>

  
  <div class="form-group">
    <label for="body">Body</label>
    <textarea class="form-control" id="body" required name="body" rows="8">
      <?php echo $blog[0]->body; ?>
    </textarea>
  </div>
  
   <div class="checkbox">
    <label>
      <input type="checkbox" name="status" <?php if($blog[0]->active == 1){echo 'checked';} ?> value="1" > Active
    </label>
  </div>
 
  <button type="submit" class="btn btn-primary">Save Blog</button>
   <a href="../../admin" class=" btn btn-info" role="button">Cancel</a>
  <input type="hidden" name="_token" value="{{ csrf_token() }}">
  <input type="hidden" name="blogId" value="<?php echo $blog[0]->id; ?>" >
</form>
    
    </div>
    </div>
</div>


@endsection

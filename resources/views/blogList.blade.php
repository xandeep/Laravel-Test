@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
       <div class="span8">
       <?php
       if( count($blogs) == 0 ){
          echo 'No blogs are available';
        }
        ?>
       <?php foreach($blogs as $blog){ ?>
              <h1><a href="blogDetail/<?php  echo $blog->id; ?>" > <?php echo $blog->title; ?> </a> </h1>
            <p><?php  echo str_limit($blog->body, 400); ?></p>
            <div>
                <span class="badge badge-success">Posted by -<?php  echo $blog->User->name; ?></span>
                <span class="badge badge-success"><?php echo date_format($blog->created_at, 'g:ia \o\n l jS F Y'); ?></span>
            </div> 
            <hr>

       <?php } ?>

     
    
      {{ $blogs->links() }}
    
    </div>
    </div>
</div>


@endsection

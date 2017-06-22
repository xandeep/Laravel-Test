@extends('layouts.app')

@section('content')

<div class="blog-header">
      <div class="container">
        <h1 class="blog-title"><?php echo $blog[0]->title; ?></h1>
        <p class="lead blog-description"><?php echo date_format($blog[0]->created_at, 'g:ia \o\n l jS F Y'); ?> by   <?php echo $blog[0]->user->name;?></p>
      </div>
    </div>

    <div class="container">

      <div class="row">

        <div class="col-sm-8 blog-main">

          <div class="blog-post">
          

            <p><?php echo $blog[0]->body; ?> </p>
          </div><!-- /.blog-post -->

         
          

        </div><!-- /.blog-main -->

        <div class="col-sm-3 offset-sm-1 blog-sidebar">
          <div class="sidebar-module sidebar-module-inset">
            <h4>Recent Blogs(12)</h4>
            <?php foreach($blogs as $b){ ?>
             <li><a href="<?php echo $b->id; ?>"><?php echo $b->title; ?></a></li>

            <?php } ?>
             
              
          </div>
        
        </div><!-- /.blog-sidebar -->

      </div><!-- /.row -->

    </div><!-- /.container -->

   

   


@endsection
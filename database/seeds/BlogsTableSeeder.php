<?php

use Illuminate\Database\Seeder;

class BlogsTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        //
          DB::table('blogs')->insert([
            'user_id' =>'1',
            'active' => '1',
            'title' => 'Blog Title',
            'body' => 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body',
        ]);

            DB::table('blogs')->insert([
            'user_id' =>'1',
            'active' => '1',
            'title' => 'Blog Title',
            'body' => 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body',
        ]);

              DB::table('blogs')->insert([
            'user_id' =>'1',
            'active' => '1',
            'title' => 'Blog Title',
            'body' => 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body',
        ]);

                DB::table('blogs')->insert([
            'user_id' =>'1',
            'active' => '1',
            'title' => 'Blog Title',
            'body' => 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body',
        ]);

                  DB::table('blogs')->insert([
            'user_id' =>'1',
            'active' => '1',
            'title' => 'Blog Title',
            'body' => 'Blog body Blog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog bodyBlog body',
        ]);
    }
}

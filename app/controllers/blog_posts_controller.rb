class BlogPostsController < ApplicationController
  def index
    @blog_posts = BlogPost.all
    render json: @blog_posts
  end

  def show
    @blog_post = BlogPost.find(params[:id])
    render json: @blog_post
  end

  def create
    @blog_post = BlogPost.new(blog_post_params)
    if @blog_post.save
      WordsCountJob.perform @blog_post
      render json: @blog_post, status: :created
    else
      render json: @blog_post.errors, status: :unprocessable_entity
    end
  end

  def blog_post_params
    params.require(:blog_post).permit(:post, :author_id)
  end
end

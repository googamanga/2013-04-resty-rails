class PostsController < ApplicationController
  # GET /posts
  def index
    @posts = Post.all
    render :status => 200, :inline => @posts.to_json
  end

  # GET /posts/1
  def show
    @post = Post.find(params[:id])
    render :status => 201, :inline => @post.to_json
  end


  # POST /posts
  def create
    @post = Post.new(params[:post])
    if @post.save()
      render :status => 201, :inline => "<p>Created Post: #{@post.to_s}</p>"
    else
      render :status => 400, :nothing => true
    end
  end

  # PUT /posts/1
  def update
    @post = Post.update(params[:id], params[:post])
    if @post.save()
      render :status => 204, :inline => @post.to_json
    else
      render :status => 400, :nothing => true
    end
  end

  # DELETE /posts/1
  def destroy
    Post.find(params[:id]).destroy
    render :status => 204, :nothing => true
  end
end
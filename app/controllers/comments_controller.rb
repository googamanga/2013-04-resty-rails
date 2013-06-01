class CommentsController < ApplicationController
  # GET /comments
  def index
    @comments = Comment.all
    render :status => 200, :inline => @comments.to_json
  end

  # GET /comments/1
  def show
    @comment = Comment.find(params[:id])
    render :status => 201, :inline => @comment.to_json
  end


  # POST /comments
  def create
    @comment = Comment.new(params[:comment])
    if @comment.save()
      render :status => 201, :inline => "<p>Created Comment: #{@comment.to_s}</p>"
    else
      render :status => 400, :nothing => true
    end
  end

  # PUT /comments/1
  def update
    @comment = Comment.update(params[:id], params[:comment])
    if @comment.save()
      render :status => 204, :inline => @comment.to_json
    else
      render :status => 400, :nothing => true
    end
  end

  # DELETE /comments/1
  def destroy
    Comment.find(params[:id]).destroy
    render :status => 204, :nothing => true
  end
end

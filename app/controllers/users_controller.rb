class UsersController < ApplicationController
# GET /User
  def index
    @users = User.all
    render :status => 200, :inline => @users.to_json
  end

  # GET /User/1
  def show
    @user = User.find(params[:id])
    render :status => 201, :inline => @user.to_json
  end

  # POST /User
  def create
    @user = User.new(params[:user])
    if @user.save()
      render :status => 201, :inline => "<p>Created User: #{@user.to_s}</p>"
    else
      render :status => 400, :nothing => true
    end
  end

  # PUT /User/1
  def update
    @user = User.update(params[:id], params[:user])
    if @user.save()
      render :status => 204, :inline => @user.to_json
    else
      render :status => 400, :nothing => true
    end
  end

  # DELETE /User/1
  def destroy
    User.find(params[:id]).destroy
    render :status => 204, :nothing => true
  end
end

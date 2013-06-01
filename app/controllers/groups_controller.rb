class GroupsController < ApplicationController
    # GET /groups
  def index
    @groups = Group.all
    render :status => 200, :inline => @groups.to_json
  end

  # GET /groups/1
  def show
    @group = Group.find(params[:id])
    render :status => 201, :inline => @group.to_json
  end


  # POST /groups
  def create
    @group = Group.new(params[:group])
    if @group.save()
      render :status => 201, :inline => "<p>Created Group: #{@group.to_s}</p>"
    else
      render :status => 400, :nothing => true
    end
  end

  # PUT /groups/1
  def update
    @group = Group.update(params[:id], params[:group])
    if @group.save()
      render :status => 204, :inline => @group.to_json
    else
      render :status => 400, :nothing => true
    end
  end

  # DELETE /groups/1
  def destroy
    Group.find(params[:id]).destroy
    render :status => 204, :nothing => true
  end
end
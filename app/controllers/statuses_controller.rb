class StatusesController < ApplicationController
# GET /statuses
  def index
    @statuses = Status.all
    render :status => 200, :inline => @statuses.to_json
  end

  # GET /statuses/1
  def show
    @status = Status.find(params[:id])
    render :status => 201, :inline => @status.to_json
  end


  # POST /statuses
  def create
    @status = Status.new(params[:status])
    if @status.save()
      render :status => 201, :inline => "<p>Created Status: #{@status.to_s}</p>"
    else
      render :status => 400, :nothing => true
    end
  end

  # PUT /statuses/1
  def update
    @status = Status.update(params[:id], params[:status])
    if @status.save()
      render :status => 204, :inline => @status.to_json
    else
      render :status => 400, :nothing => true
    end
  end

  # DELETE /statuses/1
  def destroy
    Status.find(params[:id]).destroy
    render :status => 204, :nothing => true
  end
end

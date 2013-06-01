class SubscriptionsController < ApplicationController
# GET /Subscriptions
  def index
    @subscriptions = Subscription.all
    render :status => 200, :inline => @subscriptions.to_json
  end

  # GET /Subscriptions/1
  def show
    @subscription = Subscription.find(params[:id])
    render :status => 201, :inline => @subscription.to_json
  end

  # POST /Subscriptions
  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save()
      render :status => 201, :inline => "<p>Created Subscription: #{@subscription.to_s}</p>"
    else
      render :status => 400, :nothing => true
    end
  end

  # PUT /Subscriptions/1
  def update
    @subscription = Subscription.update(params[:id], params[:subscription])
    if @subscription.save()
      render :status => 204, :inline => @subscription.to_json
    else
      render :status => 400, :nothing => true
    end
  end

  # DELETE /Subscriptions/1
  def destroy
    Subscription.find(params[:id]).destroy
    render :status => 204, :nothing => true
  end
end

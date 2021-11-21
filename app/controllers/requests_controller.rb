class RequestsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  # GET /requests or /requests.json
  def index
    @requests = Request.page params[:page]
  end

  # GET /requests/1 or /requests/1.json
  def show
    @request = Request.find_by(title: params[:id])
    @user = User.all
    @proposals = @request.proposals.order(created_at: :desc)
    @awarded_proposal = Proposal.where(id: @request.awarded_proposal).first
  end

  # GET /requests/new
  def new
    @request = Request.new
  end

  # GET /requests/1/edit
  def edit
    @request = Request.find_by(title: params[:id])
      if current_user != @request.user
    flash[:error] = "You are not the owner of this task!"
    redirect_to @request
   end
  end

  # POST /requests or /requests.json
  def create
    @request = Request.new(request_params)
    @request.user = current_user
     if @request.save
     redirect_to @request
     else
       render :new
     end
  end

  # PATCH/PUT /requests/1 or /requests/1.json
  def update
    @request = Request.find_by(title: params[:id])
     if current_user == @request.user
      @request.update(request_params)
      else
      flash[:error] = "You are not the owner of this task!"
      end
      redirect_to @request
  end

  # DELETE /requests/1 or /requests/1.json
  def destroy
    @request = Request.find_by(title: params[:id])
    if current_user == @request.user
    @request.destroy
    else
      flash[:error] = "You are not the owner of this task!"
      end
    redirect_to :myrequests
  end

  def myrequests
    @requests = Request.where(user_id: current_user).order(created_at: :asc)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_request
      @request = Request.find_by(title: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def request_params
      params.require(:request).permit(:title, :category_id, :requestoption_id, :streetname, :landmark, :housenumber, :description, :date, :time, :open, :awarded_proposal)
    end
end

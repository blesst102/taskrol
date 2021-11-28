class ProposalsController < ApplicationController
	before_action :authenticate_user!

  
  def create
    if current_user.has_any_role?(:admin, :certified, :krol)
		@request = Request.find_by(title: params[:request_id])
		@proposal = @request.proposals.new(proposal_params)
    @proposal.user_id = current_user.id
    if @proposal.save
      BidMailer.bid_made(@request.user,@proposal.user,@proposal.description).deliver
        redirect_to @proposal.request, notice: "Message was successfully sent to requester."
      else
        redirect_to @proposal.request, notice: "You can only submit one proposal for a request"
    end
  else
    redirect_to root_path, notice: "You are not a certified tasker(KROL) to bid on this request."
  end
	end

	private

    def proposal_params
      params.require(:proposal).permit(:status, :description, :arrival_duration, :user_id) 
    end

end
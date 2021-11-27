class ProposalsController < ApplicationController
	before_action :authenticate_user!

  
  def create
		@request = Request.find_by(title: params[:request_id])
		@proposal = @request.proposals.new(proposal_params)
    @proposal.user_id = current_user.id
    
    if @proposal.save
      BidMailer.bid_made(@request.user,@proposal.user,@proposal.description).deliver
        redirect_to @proposal.request, notice: "Message was successfully sent to requester."
      else
        redirect_to @proposal.request, notice: "You can only submit one proposal for a request"
    end
	end

	private

    def proposal_params
      params.require(:proposal).permit(:status, :description, :arrival_duration, :user_id) 
    end

end
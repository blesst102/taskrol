module ReviewsHelper
    def awarded_proposal
     @request = Request.find_by(awarded_proposal: params[:id])
    end
end

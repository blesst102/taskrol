class BidMailer < ActionMailer::Base
    def bid_made(request_user,proposal_user,description)
      @request_user = request_user
      @proposal_user = proposal_user
      @description = description
        mail(to: request_user.email, 
             from: "sales@taskrol.com" ,
             subject: "Bid Made",
             )
    
       end
  end
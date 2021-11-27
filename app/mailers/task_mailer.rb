class TaskMailer < ActionMailer::Base
    def task_made(user)
      @user = user
        mail(to: @user.email, 
             from: "sales@taskrol.com" ,
             subject: "Request Made",
             body: "You have successfilly submitted your request on taskrol.com. A number of certified Krols(taskers) will respond soon thank you"
             )
    
       end
  end
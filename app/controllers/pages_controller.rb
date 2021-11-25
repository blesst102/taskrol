class PagesController < ApplicationController
  def index
    #@available = Request.all.where('open = ?', 'false')
    @requests = Request.all.order(id: :desc)
    @featured = User.all.where('photo = ?', 'Certified')
  end

  def category

  end 

  def location

  end 
  def terms
    
  end

  def about_us
    
  end

  def contact_us
    
  end

  def faqs
    
  end
end

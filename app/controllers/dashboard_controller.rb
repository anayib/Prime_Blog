class DashboardController < ApplicationController
  
  def dashboard
    
    @authors = Author.all
    @strategies = Strategy.all
    @tips = Tip.all

  end

end

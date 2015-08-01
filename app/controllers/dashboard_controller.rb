class DashboardController < ApplicationController
  def index
    @eyes = Eye.where(created_by: current_user.id)

    puts "Eyes located for current_user"
    puts @eyes
  end
end

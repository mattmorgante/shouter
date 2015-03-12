class DashboardsController < ApplicationController
  def show 
    # shouts of my user and all users im following
    # controllers should only be creating one object
    @dashboard = Dashboard.new(current_user)
  end 

  # solid principles - an object shouldn't have to change for more than one reason 
  # otherwise will create bugs 

  # open/closed principle - object is open for extension, but closed for modification

  # all subclasses should be defined as the same as their parent class 



  # def show 
  #   @text_shout = TextShout.new
  #   @photo_shout = PhotoShout.new
  #   @shouts = current_user.shouts
  # end 
end

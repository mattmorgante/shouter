class Timeline 
  include ActiveModel::Model 

  def initialize user
    @user = user
  end 

  def shouts 
    Shout.where(user_id: @user.followed_user_ids + [@user.id])
  end 

end 
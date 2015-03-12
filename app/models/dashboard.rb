class Dashboard 
  # doens't inherit from active record. It's just an extraction of existing data
  # easier to modify home page over time
  def initialize user 
    @user = user
  end 

  def new_text_shout
    TextShout.new
  end 

  def new_photo_shout
    PhotoShout.new
  end

  def timeline 
    Timeline.new(@user)
  end 

end 
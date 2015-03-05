class PhotoShout < ActiveRecord::Base
  has_attached_file :image, styles: { 
    shout: "200X200"
  }
end

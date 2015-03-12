require 'digest/md5'

module ShoutsHelper
  def gravatar user, size = 48
    digest = Digest::MD5.hexdigest(user.email)
    image_tag("http://gravatar.com/avatar/#{digest}?s=#{size}")
  end 

  def shouterize text 
    # takes in some text and makes hashtags searchable 
    link_hashtags(strip_tags(text)).html_safe
  end 

  # don't use this method b/c its after private 
  private 

  def link_hashtags text 
    #gsub 
    text.gsub(/#(\w+)/) { |match| link_to(match, hashtag_path($1)) }
  end 
end

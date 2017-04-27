module ApplicationHelper
  def gravatar_for(user, options = { size:150 } )
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    #default_url = "http://4.bp.blogspot.com/-SRSVCXNxbAc/UrbxxXd06YI/AAAAAAAAFl4/332qncR9pD4/s1600/default-avatar.jpg"
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: "user.username", class: "img-circle")
  end
end

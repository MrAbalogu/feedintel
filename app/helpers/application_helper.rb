module ApplicationHelper



    def user_avatar(user, options = {})
        if user.photo.file.nil?
          image_tag user.avatar_url, options
        else
          image_tag user.photo.thumb.url, options
        end
  end
end

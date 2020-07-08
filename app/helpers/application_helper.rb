module ApplicationHelper
  def user_avatar_image(user)
    if user.photo.attached?
      cl_image_tag(current_user.photo.key, transformation: [
        { width: 800, height: 800, gravity: 'face', radius: 'max', crop: 'fill' }
      ], class: "avatar dropdown-toggle", id: "navbarDropdown", data: { toggle: "dropdown" }, 'aria-haspopup': true, 'aria-expanded': false)
    else
      image_tag('default_avatar.png', class: "avatar dropdown-toggle", id: "navbarDropdown", data: { toggle: "dropdown" }, 'aria-haspopup': true, 'aria-expanded': false)
    end
  end

  def user_image(user)
    if user.photo.attached?
      cl_image_tag(current_user.photo.key, transformation: [
        { width: 800, height: 800, gravity: 'face', radius: 'max', crop: 'fill' }
      ], class: "avatar-large")
    else
      image_tag('default_avatar.png', class: "avatar-large")
    end
  end

  def producer_banner(producer)
    if producer.banner.attached?
      cl_image_path(producer.banner.key)
    else
      "https://images.unsplash.com/photo-1507598641400-ec3536ba81bc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80"
    end
  end
end

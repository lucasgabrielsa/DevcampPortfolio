module ApplicationHelper
  def sample_helper
    "<p>my litle helper, created by Lucas Gabriel</p>".html_safe
  end

  def sample_helper_better
    content_tag(:div, "My Content inside div", class:"my-class")
  end

  def login_helper(classe='')
    if current_user.is_a?(GuestUser)
      (link_to "Login", new_user_session_path, class: classe).html_safe +
      (link_to "Register", new_user_registration_path, class: classe)      
    else
       (link_to "Logout", destroy_user_session_path, method: :delete, class: classe).html_safe
    end
  end
end

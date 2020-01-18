module ApplicationHelper
  def sample_helper
    "<p>my litle helper, created by Lucas Gabriel</p>".html_safe
  end

  def sample_helper_better
    content_tag(:div, "My Content inside div", class:"my-class")
  end

  def login_helper(classe='')
    if current_user.is_a?(GuestUser)
      (link_to "Login", new_user_session_path, class: classe).html_safe + " " +
      (link_to "Register", new_user_registration_path, class: classe)      
    else
       (link_to "Logout", destroy_user_session_path, method: :delete, class: classe).html_safe
    end
  end

  def nav_helper(style, tag_type) 
nav_links = <<NAV
<#{tag_type}><a href="#{root_path}" class="#{style} #{active?(root_path)}">Home</a></#{tag_type}>
<#{tag_type}><a href="#{about_path}" class="#{style} #{'active' if current_page?(about_path)}">About</a></#{tag_type}>
<#{tag_type}><a href="#{blogs_path}" class="#{style} #{'active' if current_page?(blogs_path) || current_page?(new_blog_path) || current_page?(edit_blog_path(id:'')) || current_page?(blog_path(id:''))}">Blog</a></#{tag_type}>
<#{tag_type}><a href="#{contact_path}" class="#{style} #{'active' if current_page?(contact_path)}">Contact</a></#{tag_type}>
<#{tag_type}><a href="#{portfolios_path}" class="#{style} #{'active' if current_page?(portfolios_path)}">Portfolio</a></#{tag_type}>
NAV
    nav_links.html_safe
  end


  def active? path
    "active" if current_page? path
  end
end

# nav_helper model 
# <%= link_to "Home", root_path, class:"nav-link #{'active' if current_page?(root_path)}"%>
# <%= link_to "About", about_path, class:"nav-link #{'active' if current_page?(about_path)}" %>
# <%= link_to "Blog", blogs_path, class:"nav-link #{'active' if current_page?(blogs_path)}" %>
# <%= link_to "Contact", contact_path, class:"nav-link #{'active' if current_page?(contact_path)}" %>
# <%= link_to "Portfolio", portfolios_path, class:"nav-link #{'active' if current_page?(portfolios_path)}" %>
# <%= login_helper('nav-link') %>


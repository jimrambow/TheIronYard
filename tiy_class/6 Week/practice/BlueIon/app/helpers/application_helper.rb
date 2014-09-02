module ApplicationHelper
    def login_links
    if user_signed_in?
      (link_to "Log Out", destroy_user_session_path, method: :delete)
    end
  end
end

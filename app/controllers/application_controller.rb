class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :debug

  def after_sign_out_path_for(resource_or_scope)
    root_path
  end

  def after_sign_in_path_for(resource_or_scope)
    if request.referer == new_user_session_url || request.referer == new_user_registration_url
      # super
      user_path(current_user)
    else
      # devise uses stored_location_for to delete and
      # return session["#{scope}_return_to"] if present
      stored_location_for(resource_or_scope) || request.referer || user_path(current_user)
    end
  end

  private

  def debug
    "debug requests early on, here"
  end
end

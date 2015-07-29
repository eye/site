require 'json'

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def github
    # auth = request.env["omniauth.auth"]
    # info = {
    #   provider: auth.provider,
    #   uid: auth.uid,
    #   email: auth.info.email,
    #   name: auth.info.name,
    #   image: auth.info.image
    # }
    # raise info.inspect
    @user = User.from_omniauth(request.env["omniauth.auth"])

    if @user.persisted?
      sign_in_and_redirect @user, :event => :authentication
      set_flash_message(:notice, :success, :kind => "GitHub") if is_navigational_format?
    else
      session["devise.github_data"] = request.env["omniauth.auth"]
      redirect_to new_user_registration_url
    end
  end
end
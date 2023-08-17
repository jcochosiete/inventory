class Users::SessionsController < Devise::SessionsController
    before_action :authenticate_user!

    # GET /resource/sign_in
    # def new
    #   super
    # end
    ...
  end

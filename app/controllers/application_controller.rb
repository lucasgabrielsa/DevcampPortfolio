# frozen_string_literal: true

class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern

    # def current_user
    #     super || OpenStruct.new(first_name:'Guest User', last_name: '', email:'guest@g1.com')
    # end

    # before_action :set_source   

    # def set_source 
    #     session[:source] = params[:q] if params[:q]
    # end

    # All this code is in the Whitelist module
    # before_action :config_permitted_parameters, if: :devise_controller?

    # def config_permitted_parameters
    #     devise_parameter_sanitizer.permit(:sign_up, keys:[:name])
    #     devise_parameter_sanitizer.permit(:account_update, keys:[:name])        
    # end
end

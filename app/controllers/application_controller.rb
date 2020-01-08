# frozen_string_literal: true

class ApplicationController < ActionController::Base
    include DeviseWhitelist
    include SetSource
    include CurrentUserConcern
    include DefaultPageContent

    before_action :set_copyright

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

    def set_copyright
        @copyright = DevcampViewTool::Renderer.copyright 'Lucas Gabriel', 'BTL Technology'
    end

end

module DevcampViewTool
    class Renderer
      def self.copyright name, msg
        "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
      end
    end
  end

module DefaultPageContent 
    extend ActiveSupport::Concern
    
    included do 
        before_action  :set_defaults
    end

    def set_defaults 
        @page_title = 'DevCampPortfolio | Learning Rails'
        @seo_keywords = "rails ruby ruby-on-rails"
    end
end
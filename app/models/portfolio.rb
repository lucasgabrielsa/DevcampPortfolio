class Portfolio < ApplicationRecord

    validates_presence_of(:title, :body, :main_image, :thumb_image) 

    def self.angular
        where(title: "Portlfolio Angular")
    end

    scope :angular_scope, -> { where(title: "Portlfolio Angular") }
end

module CurrentUserConcern 
    extend ActiveSupport::Concern

    def current_user
        super || guest_user
    end

    def guest_user
        # OpenStruct.new(
        #     first_name:'Guest User', 
        #     last_name: '', 
        #     email:'guest@g1.com')
        guest = GuestUser.new(
            first_name:'Guest', 
            last_name: 'User', 
            email:'guest@example.com'
        )
        guest
    end

end
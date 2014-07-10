class User < ActiveRecord::Base
    has_many :videos
    
    has_secure_password

    validates_confirmation_of :password
    validates_presence_of :password, :on => :create
    validates_presence_of :email
    validates_uniqueness_of :email

    def self.authenticate(email, password)
        user = find_by_email(email)
        if user && user.authenticate(password)
            user
        else
            nil
        end
    end
end

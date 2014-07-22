class User < ActiveRecord::Base
    has_many :videos

    has_secure_password

    validates_confirmation_of :password
    validates_presence_of :password, :on => :create
    validates_presence_of :name
    validates_uniqueness_of :name

    def self.authenticate(name, password)
        user = find_by_name(name)
        if user && user.authenticate(password)
            user
        else
            nil
        end
    end
end

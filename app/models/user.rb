class User < ApplicationRecord
    has_many :questions
    
    validates :uid, presence: true, uniqueness: :true
    validates :pass, presence: true
    
    def self.authenticate(uid, pass)
        user = find_by(uid: uid)
        if user and BCrypt::Password.new(user.pass) == pass
            true
        else
            false
        end
    end
end

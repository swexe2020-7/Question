class User < ApplicationRecord
<<<<<<< HEAD
    has_many :tweets
    has_many :likes
    has_many :like_tweets, through: :likes, source: :tweet    
    
    validates :uid, presence: true, uniqueness: :true
    validates :pass, presence: true    
=======
    has_many :questions
    
    validates :uid, presence: true, uniqueness: :true
    validates :pass, presence: true
>>>>>>> 55cad86ef181f7731cfda939ffb93d5c4808eae8
    
    def self.authenticate(uid, pass)
        user = find_by(uid: uid)
        if user and BCrypt::Password.new(user.pass) == pass
            true
        else
            false
        end
    end
end

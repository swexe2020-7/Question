class Home < ApplicationRecord
   
    validates :message, presence: true
    validates :message, length: {maximum: 1000}
end

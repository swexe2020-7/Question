class Reply < ApplicationRecord
     validates :hennshin, presence: true
    validates :hennshin, length: {maximum: 1000}
end

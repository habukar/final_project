class Order < ApplicationRecord
    has_one :review
    validates :name, presence: true, length: {minimum: 1}
    validates :request, presence: true, length: {minimum: 1}

end

class Order < ApplicationRecord
    validates :name, presence: true, length: {minimum: 15}
    validates :request, presence: true, length: {minimum: 1000}

end

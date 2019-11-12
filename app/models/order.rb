class Order < ApplicationRecord
    validates :name, presence: true, length: {minimum: 15}
end

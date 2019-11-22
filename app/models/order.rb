class Order < ApplicationRecord
    belongs_to :user
    has_many :reviews, dependent: :destroy
    validates :name, presence: true, length: {minimum: 1}
    validates :request, presence: true, length: {minimum: 1}

end

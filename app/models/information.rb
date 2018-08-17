class Information < ApplicationRecord
    belongs_to :user
    validates :name, presence: true, length: {minimum: 3, maximum: 1000}
    validates :city, presence: true, length: {minimum: 3, maximum: 100}
    
end

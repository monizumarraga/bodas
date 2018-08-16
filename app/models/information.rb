class Information < ApplicationRecord
    belongs_to :user
    validates :info, presence: true, length: {minimum: 3, maximum: 1000}
end

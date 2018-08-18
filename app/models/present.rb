class Present < ApplicationRecord
    has_one :image, dependent: :destroy
    belongs_to :user
end

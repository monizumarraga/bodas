class User < ApplicationRecord
  has_one :information, dependent: :destroy
  has_one :image, dependent: :destroy
  has_many :details, dependent: :destroy
  has_many :presents, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

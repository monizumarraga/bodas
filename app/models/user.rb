class User < ApplicationRecord
  has_one :information, dependent: :destroy
  has_one :image, dependent: :destroy
  has_many :details, dependent: :destroy
  has_many :presents, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  
  def self.search(param)
    if param
      param.strip!
      param.downcase!
      to_send_back=(name_matches(param) + email_matches(param)).uniq
      return nil unless to_send_back
      
    else 
      to_send_back=User.all
      
    end
    to_send_back
  end
  
  def self.name_matches(param)
    informationmatches('name', param)
  end
  
  def self.email_matches(param)
    matches('email', param)
  end
  
  def self.matches (field_name, param)
    User.where("lower(#{field_name}) like ?", "%#{param}%")
  end
  
  def self.informationmatches (field_name, param)
    User.where(id: Information.where("lower(#{field_name}) like ?", "%#{param}%").pluck(:user_id))
  end
end


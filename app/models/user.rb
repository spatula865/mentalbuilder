class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :thermometers
  has_many :pssfours
  has_many :zatsudans 
  has_many :ifthens
  has_many :weapons

end

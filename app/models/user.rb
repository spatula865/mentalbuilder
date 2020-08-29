class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :thermometers, dependent: :destroy #追記 ユーザーが削除されたら、ツイートも削除されるようになります。すでに書いてある場合は追記しなくて大丈夫です。
  has_many :pssfours, dependent: :destroy 
  has_many :zatsudans, dependent: :destroy 
  has_many :ifthens, dependent: :destroy 
  has_many :weapons, dependent: :destroy 
  
  
  validates :name, presence: true #追記
  validates :profile, length: { maximum: 200 } #追記


end

class User < ApplicationRecord
  has_many :tests
  has_many :services
  has_many :dermoesthetics
  has_many :packages
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

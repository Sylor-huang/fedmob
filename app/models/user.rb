class User < ApplicationRecord
  include SearchAble
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable
  validates :email, uniqueness: {:message=> "邮箱已被使用"},presence: {message: "邮箱不能为空"}
  validates :password,presence: {message: "密码不能为空"}, length: {minimum: 6,message: "密码不得少于6位"}
  
  has_many :articles ,dependent: :destroy
end

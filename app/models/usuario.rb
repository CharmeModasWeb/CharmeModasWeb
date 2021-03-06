class Usuario < ApplicationRecord
  has_many :comentarios, dependent: :destroy
  has_many :pedidos
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :nome, presence: true
  validates :admin, default: false
end

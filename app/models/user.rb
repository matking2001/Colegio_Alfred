class User < ApplicationRecord
  rolify :before_add => :before_add_for_reports
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # Relación con reportes
  has_many :reports    
end

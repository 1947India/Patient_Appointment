class User < ApplicationRecord
  has_many :patient_appointments
  has_many :doctors, through: :patient_appointment
  #has_many :reports

  #has_one_attached  :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         :confirmable
end

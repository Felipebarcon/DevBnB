class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :project, dependent: :destroy

  validates :username, presence: true, uniqueness: true, length: { minimum: 4, maximum: 15 }
  validates :city, presence: true
  geocoded_by :city
  after_validation :geocode, if: :will_save_change_to_city?
end

class Project < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy

  has_one_attached :photo

  validates :name, presence: true, length: { minimum: 6, maximum: 100 }
  validates :description, presence: true, length: { minimum: 6, maximum: 300 }
  validates :price, presence: true
  validates :details, presence: true
end

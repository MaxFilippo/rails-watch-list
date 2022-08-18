class List < ApplicationRecord
  # validates_uniqueness_of :name
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  validates :name, uniqueness: true
  validates :name, presence: true
end

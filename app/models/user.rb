class User < ApplicationRecord
  validates :id_user, presence: true
  has_many :user_files
  has_many :open_files
end
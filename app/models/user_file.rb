class UserFile < ApplicationRecord
  validates :name, presence: true
  validates :id_file, presence: true
  validates :id_user, presence: true
end

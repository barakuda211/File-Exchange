class OpenFile < ApplicationRecord
  validates :id_file, presence: true
  validates :link, presence: true
end

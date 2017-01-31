class Entry < ApplicationRecord
  validates :title, :body, presence: true
  validates :title,        length: { minimum: 3 }
end

class Entry < ApplicationRecord
  validates :title, :body, length: { minimum: 3 }
  validates :title,        presence: true
end

class Message < ApplicationRecord
  validates :content, presence: true
  validates :content, length: {maximum: 200}
end

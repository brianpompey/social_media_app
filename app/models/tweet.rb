class Tweet < ApplicationRecord
  belongs_to :user

  validates :content, presence: true
  validates :content, length: { maximum: 280, too_long: "%{count} characters is the maximum allowed" }
end

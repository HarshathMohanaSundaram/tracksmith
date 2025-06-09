class TimeLog < ApplicationRecord
  belongs_to :topic

  validates_presence_of :time_spent, :description
  validates :time_spent, numericality: { greater_than_or_equal_to: 0 }
  validates :description, length: { minimum: 3, maximum: 200 }
end

class Topic < ApplicationRecord
  belongs_to :user
  has_many :time_logs, dependent: :destroy

  validates :topic, presence: true, length: { minimum: 3, maximum: 100 }
  validates :theme, presence: true, length: { minimum: 3, maximum: 50 }
  validates :skill_set, presence: true, length: { minimum: 3, maximum: 50 }
  validates :estimation, numericality: { greater_than_or_equal_to: 0 }
  validates :xp, numericality: { greater_than_or_equal_to: 0 }

  validates :completed_at, presence: true, if: :completed?

  scope :completed, -> { where(completed: true) }
  scope :in_progress, -> { where(completed: false) }

  def complete!
    update(completed: true, completed_at: Time.current)
  end

  def in_progress?
    !completed
  end
end

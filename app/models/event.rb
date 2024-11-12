class Event < ApplicationRecord
  belongs_to :users

  include ActiveModel::Attributes
  attribute :tickets_still_avaliable, :integer, default: :capacity # this will work as consuming of another service

  validates :name, presence: true,
  length: { in: 12..100 },
  format: { with: /[A-Za-z0-9]/, message: "only numbers or letters" }
  validates :description, presence: true, length: { maximum: 255 }
  validates :date, presence: true
  validates :capacity, presence: true
  validate :date_is_not_past
  # callbacks
  before_validation :normalize_name
  # scopes
  scope :still_avaliable_tickets, -> { where("avalible_tickets = ?", true) }
  scope :nextndays, ->(n_day) { where("date >= ?", n_day.days) }
  private

  def date_is_not_past
    if date.present? && date < Date.today  # If the date is not in the future
        errors.add(:date, "cannot be in the past")  # Add an error if the event date is in the past
    end
  end
  def normalize_name
    self.name= name.strip.downcase if name.present?
  end
end

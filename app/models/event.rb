class Event < ActiveRecord::Base

  belongs_to :user

  validates :name, presence: true, uniqueness: true
  validates :startDate, presence: true
  validates :endDate, presence: true
  validates :players, presence: true
  validates :scoreType, presence: true
  validates :flights, presence: true
  validates :cut, presence: true
  validates :hometown, presence: true
end

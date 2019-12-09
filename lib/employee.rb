class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, lower_limit: 40, upper_limit: 200}
  validates_associated :store
end

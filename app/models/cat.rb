class Cat < ApplicationRecord
  COLORS = ["White", "Green", "Red", "Orange", "Brown", "Yellow", "Blue"].freeze
  validates :sex, inclusion: ["M", "F"]
  validates :color, inclusion: COLORS
  validates :birth_date, :color, :name, :sex, :description, presence: true

  def age
    today = Date.today
    ((today -self[:birth_date]) / 365).to_i
  end
end

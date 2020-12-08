class Recipe < ApplicationRecord
  belongs_to :user

  validates :name, presence: true, uniqueness: { scope: :user_id, case_sensitive: true }
  validates :description, presence: true
  validates :user, presence: true

  def to_s
    name
  end
end
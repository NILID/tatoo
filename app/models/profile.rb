class Profile < ApplicationRecord
  belongs_to :user

  delegate :username, to: :user

  COLORS = %w[black red white]
  WORK_TYPES = %w[handwork induction rotary]

  def color_name
    color? ? color : 'any'
  end
end

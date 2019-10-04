class Profile < ApplicationRecord
  belongs_to :user

  delegate :username, to: :user

  COLORS = %w[black red white]
  WORK_TYPES = %w[handwork induction rotary]

  def color_name
    color? ? color : 'any'
  end

  def profile_img
    if pic_num.present?
      "#{pic_num}.png"
    else
      color == 'black' ? "#{rand(1..2)}.png" : "#{rand(3..4)}.png"
    end
  end
end

class Student < ActiveRecord::Base

  extend FriendlyId
  friendly_id :slug_candidates, use: :slugged

  def slug_candidates
    [
      [:first_name, :middle_name, :last_name]
    ]
  end

end

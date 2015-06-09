class Review < ActiveRecord::Base
  belongs_to :project
  belongs_to :user

  validates :project_id, uniqueness: { scope: :user_id }
  validates :star, :numericality => { :greater_than_or_equal_to => 1 }
end

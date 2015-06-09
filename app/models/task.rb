class Task < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, use: [:scoped, :finders], :scope => :project

  def should_generate_new_friendly_id?
    slug.blank? || title_changed?
  end

  belongs_to :project

  validates :title, presence: true, length: {maximum: 50}
  validates :video, presence: true
  validates :project, presence: true

  validates :slug, uniqueness: { scope: :project_id }

  def next
  	project.tasks.where("tag > ? AND header = ?", tag, false).order(:tag).first
  end

  def prev
  	project.tasks.where("tag < ? AND header = ?", tag, false).order(:tag).first
  end

end

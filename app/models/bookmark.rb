class Bookmark < ActiveRecord::Base
  belongs_to :topic
  belongs_to :user

  before_save :fix_url

  def fix_url
    # regex logic for adding http if not there
  end
end

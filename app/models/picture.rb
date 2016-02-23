class Picture < ActiveRecord::Base
  validates :imgur_id, uniquness: true, presence: true
  validates :title, presence: true

  def imgur_link
    "https://"

end

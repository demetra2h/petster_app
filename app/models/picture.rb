class Picture < ActiveRecord::Base
  belongs_to :user
  validates :imgur_id, uniqueness: true, presence: true
  validates :title, presence: true

  def imgur_link
    "http://www.imgur.com/#{self.imgur_id}"
end

  def fragment_id
    "picture-#{self.id}"
  end
end

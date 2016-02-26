class Picture < ActiveRecord::Base

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/

  belongs_to :user
  # validates :imgur_id, uniqueness: true, presence: true
  validates :title, presence: true

  def imgur_link
    "https://www.i.imgur.com/#{self.imgur_id}"
  end

  def fragment_id
    "picture-#{self.id}"
  end
end

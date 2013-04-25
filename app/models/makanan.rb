class Makanan < ActiveRecord::Base
  has_attached_file :photo, styles: { big:"300x300", small: "150x150>", thumb: "25x25>" }
  validates :photo, presence: true
  attr_accessible :deskripsimakanan, :namamakanan, :daerah_id, :photo
  belongs_to :daerah
end

class Daerah < ActiveRecord::Base
  attr_accessible :deskripsidaerah, :namadaerah, :photo
  has_attached_file :photo, styles: { big:"300x300", small: "150x150>", thumb: "25x25>" }
  validates :photo, presence: true
  has_many :budaya
  has_many :makanan
  has_many :konten
end

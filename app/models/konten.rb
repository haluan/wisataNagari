class Konten < ActiveRecord::Base
  belongs_to :daerah
  attr_accessible :deskripsi, :namawisata, :tempat, :photo, :daerah_id, :photo
  has_attached_file :photo, styles: { big:"300x300", small: "150x150>", thumb: "25x25>" }
  validates :photo, presence: true
  validates :deskripsi, :namawisata, :tempat, presence: true
end

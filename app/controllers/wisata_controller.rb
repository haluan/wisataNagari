class WisataController < ApplicationController
  
  def index
    @kontens = Konten.all
  end
  
  def makanan
    @makanans=Makanan.all
  end
  def daerah
    @daerahs=Daerah.all
  end
  
  def kebudayaan
    @budayas=Budaya.all
  end
    
end

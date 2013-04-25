module ApplicationHelper
  
  def options
    @options = Daerah.find(:all, 
   :order => "namadaerah").
   collect do |s|
      [s.namadaerah, s.id]
   end
  end
end

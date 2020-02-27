class Project
  attr_accessor :backer, :title
  
  def initialize(title)
    @title = title
    @backers = []
  end
  
  def backers
    @backers
  end
  
  def add_backer(backer)
    @backer = backer
    @backers << backer
  end
   
   def backer=(backer)
     @backer = backer
     backer.back_project(self) unless backer.backed_projects.include?(self)
   end


end
class Project
 attr_accessor :title
 def initialize(title)
    @title = title
 end
 def add_backer(backer)
    ProjectBacker.new(self, backer)#creates a new ProjectBacker inserting self as the project and using the backer that was taken in
end
def projects
    ProjectBacker.all.select{|projectbacker| projectbacker.project == self}
end 
def backers
    projects.map {|projectbacker| projectbacker.backer}
end
end
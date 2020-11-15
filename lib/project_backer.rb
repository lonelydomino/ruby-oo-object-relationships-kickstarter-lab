class ProjectBacker
    attr_accessor :project, :backer
    @@all = []
def initialize(project,backer)
    @project = project #takes in a project and backer object and assigns them to the variable
    @backer = backer
    @@all << self
end
def self.all
    @@all
end
end
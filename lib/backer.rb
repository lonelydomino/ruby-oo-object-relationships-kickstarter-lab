class Backer
    attr_accessor :name
    
    def initialize(name)
        @name = name
    end
    def back_project(project)
        ProjectBacker.new(project, self)
    end
    def backed_projects
        backers.map {|backer| backer.project}
    end
    def backers
        ProjectBacker.all.select {|projectbacker| projectbacker.backer == self}
    end
end

require 'pry'

class Backer
    attr_accessor :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def back_project(project)
        ProjectBacker.new(project, self)
    end

    def backed_projects
        pb =ProjectBacker.all.select {|project| project.backer == self}
        pb.map {|pb| pb.project}

    end
    


end


    
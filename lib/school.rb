

class School

    attr_accessor :roster, :name


    def initialize(name)
        @name = name
        @roster = {}
    end


    def add_student(student, grade)
        if !@roster[grade]
            @roster[grade] = [student]
        else
            @roster[grade] << student
        end
    end

    def grade(grade_arg)
        @roster[grade_arg]
    end

    def sort
        @roster.each do |grade, students|
            students.sort!
        end
    end
        


end
    

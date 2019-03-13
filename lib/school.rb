require 'pry'

class School
  def initialize(name)
    @name = name
    @roster = {}
  end
  attr_reader :roster, :name
  def add_student(name, grade)
    if self.roster[grade] == nil
      @roster[grade] = [name]
    else
      @roster[grade] << name
    end
  end
  def grade(grade)
    @roster[grade]
  end
  def sort
    roster_by_grade = @roster.sort_by {|k, v| k}.to_h
    roster_by_grade.keys.each {|grade| roster_by_grade[grade].sort!}
    binding.pry
    roster_by_grade
  end
end
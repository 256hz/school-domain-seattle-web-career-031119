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
    sorted_roster = []
    roster_by_grade.keys.each {|grade| sorted_roster << roster_by_grade[grade].sort!}
    binding.pry
    sorted_roster
  end
end
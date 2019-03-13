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
    sorted_roster = @roster.sort_by {|k, v| k}
    sorted_roster = sorted_roster.map {|grade| sorted_roster[grade].sort!}
    sorted_roster
  end
end
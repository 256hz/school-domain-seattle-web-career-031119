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
    binding.pry
    @roster.sort_by{|grade, name| [grade, @roster[grade]]}.to_h
  end
end
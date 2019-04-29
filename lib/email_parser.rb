# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"

class EmailParser

attr_accessor :email_list

@@all = []

  def initialize(email_list)
    @email_list = email_list
  end

  def parse
    @email_list.gsub!(/\s/){|s|","}       #take the @email_list string in a replace all the spaces with commas
    @email_list.gsub!(/,{1,}/){|s|s[0]}   #take the mutated @email list and replace any instance of comma with a single comma
    @email_list.split(",").uniq           #return the unique values of the split string
  end

end

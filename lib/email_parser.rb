require 'pry'
class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end
  
  def parse
    emails.split.map do |email|
      email.split(",")
     end.flatten.uniq
  end  
end


   # if emails.include?(',') == true
    #   emails.split(", ")
    # elsif email.include?(',') == false
    #   emails.split(/\ /)
    # end
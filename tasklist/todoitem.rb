require_relative 'task'

class To_Do_Item < Task

  def initialize
    super
    @date = Date.new(2017,1,1)
  end

  def date
    @date
  end

  def date=(input)
    @date = (input)
  end

  def display_task
    if @done == false
      "Title: #{@title} \n Description: #{@description} \n Status: Not done \n Due Date: " + @date.strftime('%a %b %d %Y')
    else
      "Title: #{@title} \n Description: #{@description} \n Status: Done \n Due Date: " + @date.strftime('%a %b %d %Y')
    end
  end
end

require 'rspec'
require_relative 'todoitem'
require_relative 'task'


# Story: As a developer, I can create a to do item with a due date, which can be changed.
# Hint: Use the Date class
describe 'To_Do_Item' do

  it "should create a new to do item" do
    expect{To_Do_Item.new}.to_not raise_error
  end

  it "should have a due date" do
    an_item = To_Do_Item.new
    expect(an_item.date).to be_a Date
  end

  it "should be able to change the due date" do
    an_item = To_Do_Item.new
    an_item.date = Date.new(2016,6,8)
    expect(an_item.date.year).to eq 2016
    expect(an_item.date.mon).to eq 6
    expect(an_item.date.mday).to eq 8
  end
  # Story: As a developer, I can print an item with a due date with field labels and values.
  it "should display a to do item with field labels and values" do
    an_item = To_Do_Item.new
    expect(an_item.done).to be false
    an_item.title = "Walk the dogs"
    an_item.description = "1 hour"
    an_item.date = Date.new(2016,6,8)
    expect(an_item.display_task).to eq "Title: Walk the dogs \n Description: 1 hour \n Status: Not done \n Due Date: Wed Jun 08 2016"
    an_item.done = true
    expect(an_item.display_task).to eq "Title: Walk the dogs \n Description: 1 hour \n Status: Done \n Due Date: Wed Jun 08 2016"
  end
  
end
#
#
# Story: As a developer with a TaskList, I can list all the not completed items that are due today.
#
# Story: As a developer with a TaskList, I can list all the not completed items in order of due date.
#
# Story: As a developer with a TaskList with and without due dates, I can show all the not completed items in order of due date, and then the items without due dates.
#
# Epic: Anniversary
#
# Story: As a developer, I can create a to do item for an anniversary (a yearly recurring event) .
# Hint: Do not use Date to store the date.
#
# Story: As a developer, I can print an item for an anniversary with field labels and values.
#
# Story: As a developer with a TaskList with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month.
#
# Story: As a developer with a TaskList with a collection of items with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month, then the items without due dates.
#
#

class Tasklist
  def initialize
    @tasks = []
    @to_do_items = []
  end

  def tasks
    @tasks
  end

  def add_task new_task
    @tasks.push(new_task)
  end

  def show_completed
    @tasks.select { |element| element.done == true }
  end

  def show_not_completed
    @tasks.select { |element| element.done == false }
  end

  def to_do_items
    @to_do_items
  end

  def add_to_do_item new_item
    @to_do_items.push(new_item)
  end

  def not_done_due_today
    @to_do_items.select { |element| element.done == false && element.date == Date.today}
  end

  def not_completed_by_date
    @to_do_items.select { |element| element.done == false }.sort_by { |element| element.date }
  end
end #end of Tasklist

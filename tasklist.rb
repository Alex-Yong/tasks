
class TaskList
  def initialize
    @tasklist = []
    @tasklist_dates = []
    @anniversary_dates = []
  end

  def input_tasks(x)
    @tasklist << x
  end

  def completed
    @tasklist.select { |k| k.done == true }
  end

  def incomplete
    @tasklist.select { |k| k.done == false }
  end

  def input_events(y)
    if y.take_due_date == nil
      print 'there is no due date'
    else
      @tasklist_dates << y
    end
  end

  def events
    @tasklist_dates
  end

  def input_anniversary(z)
    if z.take_anniversary_date == nil
      print 'there is no anniversary date'
    else
      @anniversary_dates << z
    end
  end

  def anniversary_array
    @anniversary_dates
  end

  def alert_due_today
    @tasklist_dates.select { |a| a.done == false && a.take_due_date == Date.today }
  end

  def sort_false_due_dates
    @tasklist_dates.select { |a| a.done == false }
  end

  def sort_incomplete_anniversary
    @anniversary_dates.select { |a| a.done == false && a.take_anniversary_month == Date.today.month }
  end

  def sort_false_due_dates_by_date(a)
    sorted = a.sort_false_due_dates
    sorted.sort { |a, b| a.take_due_date <=> b.take_due_date }
  end

  def sort_both_lists(a)
    sorted = a.sort_false_due_dates
    sorted.sort { |a, b| a.take_due_date <=> b.take_due_date } + @tasklist.select { |k| k.done == false }
  end

  def sort_incomplete_due_date_and_anniversary(a)
    sorted = a.sort_false_due_dates
    sorted.sort { |a, b| a.take_due_date <=> b.take_due_date } + @anniversary_dates.select { |a| a.done == false && a.take_anniversary_month == Date.today.month }
  end

  def sort_everything(a)
    sorted = a.sort_false_due_dates
    sorted.sort { |a, b| a.take_due_date <=> b.take_due_date } + @anniversary_dates.select { |a| a.done == false && a.take_anniversary_month == Date.today.month } + @tasklist.select { |k| k.done == false }
  end
end

require 'rspec'
require_relative 'tasklist'
require_relative 'starting_stories'
require_relative 'due_date'

describe "TaskList" do
  it "should exist" do
    expect{ TaskList.new }.to_not raise_error
  end

  it "should be in an array" do
    task = Task.new
    task.title('shopping')
    tasklist = TaskList.new
    expect(tasklist.input_tasks(task)).to match_array [task]
  end

  it "should show completed items" do
    task = Task.new
    task.title('shopping')
    task.finished("yes")
    tasklist = TaskList.new
    tasklist.input_tasks(task)
    expect(tasklist.completed).to match_array [task]
  end

  it "should show incomplete items" do
    task = Task.new
    task.title('shopping')
    tasklist = TaskList.new
    tasklist.input_tasks(task)
    expect(tasklist.incomplete).to match_array [task]
  end

  it "should have an array of items with due dates" do
    test1 = DueDate.new
    test1.due_date('2/2/2016')
    tasklist = TaskList.new
    tasklist.input_events(test1)
    expect(tasklist.events).to match_array [test1]
  end

  it "should list non completed items that are due today" do
    test1 = DueDate.new
    test1.due_date('10/8/2016')
    tasklist = TaskList.new
    tasklist.input_events(test1)
    expect(tasklist.alert_due_today).to match_array []
  end

  it "should list non completed items in order of due date" do
    test1 = DueDate.new
    test1.due_date('10/8/2016')
    test2 = DueDate.new
    test2.due_date('9/8/2016')
    test3 = DueDate.new
    test3.due_date('18/9/2016')
    test3.finished('yes')
    tasklist = TaskList.new
    tasklist.input_events(test1)
    tasklist.input_events(test2)
    tasklist.input_events(test3)
    expect(tasklist.sort_false_due_dates_by_date(tasklist)).to match_array [test2, test1]
  end

  it "should sort both lists and pick incompleted tasks and organize by due dates" do
    test1 = DueDate.new
    test1.due_date('10/8/2016')
    test2 = DueDate.new
    test2.due_date('9/8/2016')
    test3 = DueDate.new
    test3.due_date('18/9/2016')
    test3.finished('yes')
    task1 = Task.new
    task2 = Task.new
    task2.finished('yes')
    tasklist = TaskList.new
    tasklist.input_events(test1)
    tasklist.input_events(test2)
    tasklist.input_events(test3)
    tasklist.input_tasks(task1)
    tasklist.input_tasks(task2)
    expect(tasklist.sort_both_lists(tasklist)).to match_array [test2, test1, task1]
  end
end

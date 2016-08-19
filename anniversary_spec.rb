require 'rspec'
require_relative 'anniversary'


describe Anniversary do
# Story: As a developer, I can create a to do item for an anniversary (a yearly recurring event) .
# Hint: Do not use Date to store the date.
  it "can create an item for a yearly recurring event" do
    test1 = Anniversary.new
    test1.anniversary('2/2')
    expect(test1.take_anniversary_date).to include ({"mon
  end





# Story: As a developer, I can print an item for an anniversary with field labels and values.





# Story: As a developer with a TaskList with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month.





# Story: As a developer with a TaskList with a collection of items with and without due dates and yearly recurring dates, I can list all the not completed items in order of due date and yearly dates for the current month, then the items without due dates.



end

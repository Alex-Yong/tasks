require 'rspec'
require_relative 'due_date'

describe DueDate do
  it "should exist" do
    expect { DueDate.new }.to_not raise_error
  end

  it "should print due date with labels and values" do
    test1 = DueDate.new
    test1.due_date("3/3/2016")
    test1.date_labels_and_values('kick', '2 people')
    expect(test1.take_hash).to eq('2016-03-03{\"kick\"=>\"2 people\"}')
  end
end

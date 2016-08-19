require 'rspec'
require_relative 'starting_stories'

describe "Task" do
  it "should exist" do
    expect { Task.new }.to_not raise_error
  end

  it "has a title i can retrieve" do
    task = Task.new
    expect(task.title("title")).to eq "title"
    expect(task.take_title).to eq "title"
  end

  it "should have a description and i can retrieve it" do
    task = Task.new
    expect(task.description('new description')).to eq "new description"
    expect(task.take_description).to eq "new description"
  end

  it "should have labels and values" do
    task = Task.new
    task.labels_and_values('withdraw money', 20)
    expect(task.hash_list['withdraw money']).to eq(20)
  end

  it "should mark completed task" do
    task = Task.new
    task.labels_and_values('withdraw money', 20)

    expect(task.finished('yes')).to be true
  end

  it "should print task status" do
    task = Task.new
    task.title('shopping')
    task.labels_and_values('withdraw money', 20)
    task.finished('yes')

    expect(task.show).to eq "'hopping complete'
  end
end

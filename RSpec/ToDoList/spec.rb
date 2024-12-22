require_relative './ToDoList.rb'

RSpec.describe "Task" do
  before do
    @todo_list = TodoList.new
  end

  describe '#add_task' do
    it 'adds a task to the todo list' do
      task = Task.new("Buy milk")
      @todo_list.add_task(task)
      expect(@todo_list.tasks).to include(task)
    end

    it 'raises an error when trying to add a task with an empty title' do
      expect { Task.new('') }.to raise_error('Title cannot be empty')
    end
  end

  describe '#remove_task' do
    it 'removes a task from the todo list' do
      task = Task.new("Buy milk")
      @todo_list.add_task(task)
      @todo_list.remove_task(task)
      expect(@todo_list.tasks).not_to include(task)
    end

    it 'does not remove a task that does not exist' do
      task = Task.new("Buy milk")
      @todo_list.remove_task(task)
      expect(@todo_list.tasks).not_to include(task)
    end
  end

  describe '#complete' do
    it 'marks a task as complete' do
      task = Task.new("Buy milk")
      @todo_list.add_task(task)
      task.complete
      expect(task.completed).to be true
    end

    it 'does not mark a task as complete before calling complete' do
      task = Task.new("Buy milk")
      @todo_list.add_task(task)
      expect(task.completed).to be false
    end
  end

  describe 'Task completion and removal' do
    it 'does not remove a task marked as complete by default' do
      task = Task.new("Buy milk")
      @todo_list.add_task(task)
      task.complete
      expect(@todo_list.tasks).to include(task)
    end
  end
end

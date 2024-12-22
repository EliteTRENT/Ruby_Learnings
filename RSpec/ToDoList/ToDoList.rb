class Task
  attr_reader :title, :completed

  def initialize(title)
    raise 'Title cannot be empty' if title.strip.empty?

    @title = title
    @completed = false
  end

  def complete
    @completed = true
  end
end

class TodoList
  attr_reader :tasks

  def initialize
    @tasks = []
  end

  def add_task(task)
    @tasks << task
  end

  def remove_task(task)
    @tasks.delete(task)
  end
end

class MyQueue
  def initialize
    @stack_in = []
    @stack_out = []
  end

  def push(x)
    @stack_in.push(x)
  end

  def pop
    move_to_out if @stack_out.empty?
    @stack_out.pop
  end

  def peek
    move_to_out if @stack_out.empty?
    @stack_out.last
  end

  def empty
    @stack_in.empty? && @stack_out.empty?
  end

  private

  def move_to_out
    while !@stack_in.empty?
      @stack_out.push(@stack_in.pop)
    end
  end
end
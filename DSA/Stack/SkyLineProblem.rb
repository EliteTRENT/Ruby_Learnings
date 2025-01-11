require 'set'

def get_skyline(buildings)
  events = []
  buildings.each { |l, r, h| events << [l, -h, r]; events << [r, 0, 0] }
  events.sort!

  result = []
  heap = [[0, Float::INFINITY]]
  prev_max_height = 0

  events.each do |x, neg_height, r|
    if neg_height < 0
      heap << [-neg_height, r]
    else
      heap.reject! { |_, end_r| end_r <= x }
    end

    cur_max_height = heap.map(&:first).max

    if cur_max_height != prev_max_height
      result << [x, cur_max_height]
      prev_max_height = cur_max_height
    end
  end

  result
end

# Write your code here.
katz_deli = []

def line(queue)
  customers = ""
  queue.each do |name|
    if name == queue.last
      customers += "#{queue.index(name) + 1}. #{name}"
    else
      customers += "#{queue.index(name) + 1}. #{name} "
    end
  end
  if queue.length != 0
    puts "The line is currently: #{customers}"
  else
    puts "The line is currently empty."
  end
end

def take_a_number(queue, name)
  queue.push(name)
  puts "Welcome, #{name}. You are number #{queue.length} in line."
end

def now_serving(queue)
  if queue.length != 0
    puts "Currently serving #{queue.shift}."
  else
    puts "There is nobody waiting to be served!"
  end
end

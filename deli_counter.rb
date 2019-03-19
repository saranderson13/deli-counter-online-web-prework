katz_deli = []

def line(line_array)
  if line_array.length == 0 
    puts "The line is currently empty." 
  else
    compiled_line = ""
    line_array.each_index do |index_number|
      queue_number = index_number + 1
      compiled_line << " #{queue_number}. #{line_array[index_number]}"
    end
    puts "The line is currently:#{compiled_line}"
  end
end

def take_a_number(line_array, new_customer)
  line_array << new_customer
  puts "Welcome, #{new_customer}. You are number #{line_array.length} in line."
end

def now_serving(line_array)
  if line_array.length == 0
    puts "There is nobody waiting to be served!"
  else 
    puts "Currently serving #{line_array[0]}."
    line_array.shift
  end
end

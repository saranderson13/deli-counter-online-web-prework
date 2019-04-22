katz_deli = []

def line(line_array)
  if line_array.length == 0 
    puts "The line is currently empty." 
  else
    compiled_line = ""
    line_array.each.with_index do |element, index_number|
      compiled_line << " #{index_number + 1}. #{element}"
    end
    puts "The line is currently:#{compiled_line}"
  end
end

def take_a_number(line_array, new_customer)
  line_array << new_customer
  puts "Welcome, #{new_customer}. You are number #{line_array.length} in line."
end

def now_serving(line_array)
  puts line_array.length == 0 ? "There is nobody waiting to be served!" : "Currently serving #{line_array.shift}."
end

# Your code goes here
#menu of operations
#chose from the nemue
#the result should be shown
#exit after one calculation
# (+,-,*,/), (exponent, square, cube, square root)
#chose basic or advanced?



def basic_or_advanced
  puts "If you wish to do basic math (+,-,*,/) enter 1, for advanced math (exponents, square, cube, square roots) enter 2"
  gets.chomp.to_i
end

def what_operator(operator_type)
  if operator_type == 1
    puts "you chose basic (+,-,*,/) please indicate which function you would like to run"
    gets.chomp
  else
    puts "you chose basic (exponents, square, cube, square roots) please indicate which function you would like to run"
    gets.chomp
  end
end

def how_many_numbers
  puts "do you need two numbers (maximum) for your math problem? (y/n)"
  gets.chomp
end

def users_choice_one
  puts "What is the first number you wish to use:"
  gets.chomp.to_i
end

def users_choice_two(need_two_num)
  if need_two_num == "y"
    puts "What is the second number you wish to use"
    gets.chomp.to_i
  end
end

def math_time(basic_advanced, math_function, first_num, second_num)
  if basic_advanced == 1
    if math_function == "+"
      return first_num + second_num
    elsif math_function == "-"
      return first_num - second_num
    elsif math_function == "*"
      return first_num * second_num
    else
      return first_num / second_num
    end
  else
    if math_function == "exponents"
      return first_num ** second_num
    elsif math_function == "square"
      return first_num * first_num
    elsif math_function == "cube"
      return first_num * first_num * first_num
    else
      return Math.sqrt(first_num)
    end
  end
end



type_o_math = basic_or_advanced
specific_math_function = what_operator(type_o_math)
need_two_num = how_many_numbers
first_num = users_choice_one
second_num = users_choice_two(need_two_num)
# type_o_math = basic_or_advanced
# specific_math_function = what_operator(type_o_math)
calculation = math_time(type_o_math, specific_math_function, first_num, second_num)
puts "Your answer is #{calculation}"

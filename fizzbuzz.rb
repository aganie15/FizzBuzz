def fizzbuzz
  for i in 1..100
    multiple_of_three = (i % 3 == 0)
    multiple_of_five = (i % 5 == 0)

    if multiple_of_three && !multiple_of_five
      puts 'Fizz'
    elsif !multiple_of_three && multiple_of_five
      puts 'Buzz'
    elsif multiple_of_three && multiple_of_five
      puts 'FizzBuzz'
    else
      puts i
    end
  end
end

fizzbuzz
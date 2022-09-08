def multiple_of(value, multiple)
  return (value % multiple == 0)
end

def fizzbuzz
  puts 'Please enter the maximum value'
  max_value = gets.to_i

  for i in 1..max_value
    output = ''

    if multiple_of(i, 3)
      output = output + 'Fizz'
    end

    if multiple_of(i, 5)
      output = output + 'Buzz'
    end

    if multiple_of(i, 7)
      output = output + 'Bang'
    end

    if multiple_of(i, 11)
      output = 'Bong'
    end

    if multiple_of(i, 13)
      # Find the index of the first occurrence of 'B'
      index_of_b = (output =~ /B/)
      if index_of_b == 0
        output = 'Fezz' + output
      elsif index_of_b
        output = output[0..(index_of_b - 1)] + 'Fezz' + output[index_of_b..]
      else
        output = output + 'Fezz'
      end
    end

    if multiple_of(i, 17)
      # split output on occurrence of capital letters
      word_array = output.split(/(?=[A-Z])/)
      word_array.reverse!
      # concatenate the elements of word_array
      output = word_array * ''
    end

    if output == ''
      puts i
    else
      puts output
    end

  end
end

fizzbuzz
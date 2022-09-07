def fizzbuzz
  for i in 1..100
    output = ''

    multiple_of_three = (i % 3 == 0)
    multiple_of_five = (i % 5 == 0)
    multiple_of_seven = (i % 7 == 0)
    multiple_of_eleven = (i % 11 == 0)
    multiple_of_thirteen = (i % 13 == 0)
    multiple_of_seventeen = (i % 17 == 0)

    if multiple_of_three
      output = output + 'Fizz'
    end

    if multiple_of_five
      output = output + 'Buzz'
    end

    if multiple_of_seven
      output = output + 'Bang'
    end

    if multiple_of_eleven
      output = 'Bong'
    end

    if multiple_of_thirteen
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

    if multiple_of_seventeen
      # split output on occurrence of capital letters
      word_array = output.split(/(?=[A-Z])/)
      word_array = word_array.reverse!
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
def hundreds_in_words(user_number)
  reference = {0 => "",
               1 => "one",
               2 => "two",
               3 => "three",
               4 => "four",
               5 => "five",
               6 => "six",
               7 => "seven",
               8 => "eight",
               9 => "nine",
               10 => "ten",
               11 => "eleven",
               12 => "twelve",
               13 => "thirteen",
               14 => "fourteen",
               15 => "fifteen",
               16 => "sixteen",
               17 => "seventeen",
               18 => "eighteen",
               19 => "nineteen",
               20 => "twenty",
               30 => "thirty",
               40 => "forty",
               50 => "fifty",
               60 => "sixty",
               70 => "seventy",
               80 => "eighty",
               90 => "ninety"}

  tens = [90,80,70,60,50,40,30,20]
  word = ""

  if user_number > 99
    word += reference[(user_number - user_number%100)/100] + " hundred "
    user_number = user_number%100
  end
  if user_number > 19
      word += reference[user_number - user_number%10] + " "

      user_number = user_number%10
  end
  word += reference[user_number]
  word.strip
end

def numbers_in_words(user_number)
  big_numbers = {1 => "",
                 2 => " thousand ",
                 3 => " million ",
                 4 => " billion ",
                 5 => " trillion "
                }


  number_string = user_number.to_s.reverse
  number_strings = number_string.split("").each_slice(3).to_a.map {|i| i.join.reverse}.reverse
  final_words = []
  iterations = (number_string.length/3.0).ceil
  iterations.times do |i|
    final_words << hundreds_in_words(number_strings[i].to_i) + big_numbers[iterations] unless number_strings[i] == '000'
    iterations -= 1
  end
  # leading_number_string = number_strings[0]

  # final_words << hundreds_in_words(number_strings.shift.to_i)

  # final_words << (big_numbers[number_strings.length+1])

  # puts number_strings.length
  # if number_strings.length > 0
  #   numbers_in_words(number_strings.join.to_i)
  # end
  final_words.join("").strip
end

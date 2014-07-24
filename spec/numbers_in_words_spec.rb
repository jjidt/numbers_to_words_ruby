require("rspec")
require("numbers_in_words")

describe("hundreds_in_words") do
  it("takes a number less than 20 and returns the english word") do
    hundreds_in_words(17).should(eq("seventeen"))
  end

  it("takes a number between 21 and 99 and returns the english word") do
    hundreds_in_words(97).should(eq("ninety seven"))
  end

  it("takes a number between 99 and 999 and returns the english word") do
    hundreds_in_words(702).should(eq("seven hundred two"))
  end

  it("takes a multiple of 100 and returns the english word") do
    hundreds_in_words(600).should(eq("six hundred"))
  end
end

describe("numbers_in_words") do
  it("takes a number less than a million and returns the english words") do
    numbers_in_words(97345).should(eq("ninety seven thousand three hundred forty five"))
  end

  it("it takes a number greater than a million without zeros and returns the english words") do
    numbers_in_words(7342952).should(eq("seven million three hundred forty two thousand nine hundred fifty two"))
  end

  it("it takes a number greater than a million with zeros and returns the english words") do
    numbers_in_words(3000700).should(eq("three million seven hundred"))
  end

  it("it takes a number greater greater a billion and returns the english words") do
    numbers_in_words(1343000345).should(eq("one billion three hundred forty three million three hundred forty five"))
  end

  it("takes 1000000 and returns the english word") do
    numbers_in_words(1000000).should(eq("one million"))
  end
end

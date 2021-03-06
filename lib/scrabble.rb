class Scrabble
  attr_reader :point_values
  def initialize
    @point_values = {
     "A"=>1, "B"=>3, "C"=>3, "D"=>2,
     "E"=>1, "F"=>4, "G"=>2, "H"=>4,
     "I"=>1, "J"=>8, "K"=>5, "L"=>1,
     "M"=>3, "N"=>1, "O"=>1, "P"=>3,
     "Q"=>10, "R"=>1, "S"=>1, "T"=>1,
     "U"=>1, "V"=>4, "W"=>4, "X"=>8,
     "Y"=>4, "Z"=>10
   }
  end

   def score(word)
     point_values[word.upcase]
     points = word.upcase.split(//).map do |letter|
       point_values[letter]
     end
     points.reduce(0,:+)
   end

   def score_with_multipliers(word, numbers)
     point_values[word.upcase]
     points = word.upcase.split(//).map_with_index.map do |letter, index|
       point_values[letter] * numbers
   end

 end

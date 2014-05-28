class LineBreak
  def initialize(input)
    @input = input.split(" ")
  end

  def split(length = 80)
    output = [""]
    @input.each do |word|
      if (output.last + " " + word).length < length
        output.last << " #{word}"
      else
        output << "\n#{word}"
      end
    end
    output.join.strip
  end
end
class String
  def toJadenCase
    self.split(" ").map{|w| w.capitalize}.join(" ")
  end
end

str = "here is a test string to capitalize"
p str.toJadenCase

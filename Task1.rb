class Task1
	def initialize
@array = Array.new(4) { Array.new(4) }
@array.each { |mas| mas.map! { |numbers| numbers = rand(-10..10) } }
  end
  def calculate
    sum = 0
    @array.each do |i|
      i.each do |j|
        sum += j if j < 0
        puts j
      end
    end
    puts "\nsum = #{sum}"
  end
end


array = Task1.new
puts array.calculate


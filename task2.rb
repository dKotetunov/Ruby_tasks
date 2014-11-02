class Task2
  def initialize
    @array = Array.new(40){rand(Time.now-60*60*24*365..Time.now).strftime('%d.%m').to_s + ' ' + (rand(66)-20).to_s}
    @average_temp_month = []
  end
  def print_array
    @array.each do |x|
      puts x
    end
  end
  def calc_average_temp_month
    @array.each do |x|
      @average_temp_month << x[3..4]
    end
    @average_temp_month.uniq!
    @average_temp_month.each do |av|
      sum = 0
      count = 0
      @array.each do |x|
        if av == x[3..4]
          sum += x[6..-1].to_i
          count += 1
        end
      end
      puts sum/count.to_f
    end
  end

end

printed_array = Task2.new
printed_array.print_array
puts
printed_array.calc_average_temp_month
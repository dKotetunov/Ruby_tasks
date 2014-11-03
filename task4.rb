class Task4
def initialize
@hash = {'yes' => 23, 'b' => 'travel', 'yesterday' => 34,
        5 => '234', :yesss => :fg,
        try: {'yesterday1'=> 34, 'yesteryear' => 2014},
        key: [{'yes' => 23, 'b' => 'travel'}],
        'yesterday1'=> 34, 'yesteryear' => 2014}
end


  def keys_values
    @hash.inject({}){|result, (key, value)|
      new_key = case key
                  when String then key.to_sym
                  else key
                end
      new_value = case value
                    when Hash then keys_values
                    else value
                  end
      result[new_key] = new_value
      result
    }
  end
end
puts "Symbolized hash:"
change_keys = Task4.new
puts change_keys.keys_values


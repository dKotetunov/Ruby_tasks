class Task3


  h = {
      'yes' => 23,
       'b' => 'travel',
       'yesterday' => 34,
       5 => '234',
       :yesss => :fg,
       try: 30,
       key: 'some value',
       'yesterday1' => 34,
       'yesteryear' => 2014
      }

  h1 = h.select {|k| k =~ /^(yes)/}
  puts h1
  puts h1.count
end
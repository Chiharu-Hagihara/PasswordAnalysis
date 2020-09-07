print "必要なパスワードの長さを指定してください。"
pass_size = gets.to_i
a = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + %w{~ ! @ # $ % ^ & * ( ) - +}
pass = Array.new(pass_size){a[rand(a.size)]}.join
puts "生成したパスワード: "+pass
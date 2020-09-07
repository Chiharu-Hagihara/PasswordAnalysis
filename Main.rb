# frozen_string_literal: true

puts '36桁のパスワードを自動生成しています・・・'
sleep 5

pass_size = 36

# a = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + %w{~ ! @ # $ % ^ & * ( ) - +}
a = ('0'..'9').to_a
pass = Array.new(pass_size) { a[rand(a.size)] }.join
puts ''
puts '生成したパスワード: ' + pass
puts ''

puts '10秒後にパスワード自動解析を開始します。'
sleep 10

solved = false
result = '00000000000000000000000000000000000'
while solved
  p result.succ
  result = p result.succ
  next unless result == pass do
    solved = true
    puts '解析が終わりました。'
    puts 'パスワードは' + result + 'です。'
  end
end


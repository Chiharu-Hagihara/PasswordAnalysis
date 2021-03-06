# frozen_string_literal: true

puts '8桁のパスワードを自動生成しています・・・'
sleep 5

pass_size = 8

# a = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a + %w{~ ! @ # $ % ^ & * ( ) - +}
a = ('0'..'9').to_a
pass = Array.new(pass_size) { a[rand(a.size)] }.join
puts ''
puts '生成したパスワード: ' + pass
puts ''

puts '10秒後にパスワード自動解析を開始します。'
sleep 10
puts '解析中・・・・・・・・・・・・・・・・・・・・・・・・'

solved = false
result = '0000'
until solved
  result = result.succ
  if result == pass
    solved = true
    puts '解析が終わりました。'
    puts 'パスワードは' + result + 'です。'
    end
end


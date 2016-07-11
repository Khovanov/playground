# 1. программа ищет рациональные приближения иррационального числа "Пи", 
# такие как 22/7, 355/120, 355/113. 
# Точность поиска задаётся константно в начале программы, например 8 цифр после точки.
# Узнать больше о рациональных приближениях иррациональных чисел можно в Wiki

PRECISION = 5
range = 1..1000
pi = Math::PI.round(PRECISION)
ary = []
range.map do |divider|
  n = 0
  loop do
    n += 1
    dividend = divider*3+n
    result = (dividend.to_f/divider).round(PRECISION)
    ary.push "#{dividend}/#{divider}=#{result}" if result == pi
    break if result >= pi
  end
end
puts ary


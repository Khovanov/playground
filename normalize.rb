# 2. Программа получает на входе массив из 16 рандомных целых чисел 
# от 0 до 16 и возвращает массив строго с той же суммой всех чисел 
# но допустимой разницей между двумя соседними не более 1.
# Иными словами, если представить значения массива в виде графика из 16 колонок, 
# программа должна нормализовать его, убрав резкие переходы.
 
ary = Array.new(16) { rand(16) }
total = ary.inject(0) { |sum, elem| sum + elem}
midle = (total.to_f/16).round - 1
normal = ary.map { |elem|  elem > midle ? "#{elem}->#{midle+1}" : "#{elem}->#{midle}"}
puts normal
puts total


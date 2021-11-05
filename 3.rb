## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:



instruction = []
instruction_num = 0
sum = 0
f = File.open('data/3.txt', 'r')
for line in f
    instruction[instruction_num] = line.split("\t").map(&:to_i)
    sum += instruction[instruction_num].max - instruction[instruction_num].min
    instruction_num += 1
end

puts sum
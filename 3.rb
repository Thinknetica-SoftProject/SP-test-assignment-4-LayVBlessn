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

code = 0 # инициализируем переменную, которая будет хранить код от двери

File.open("data/3.txt", "r") do |file| # открываем файл со входными данными
  for line in file.readlines() # бежим по каждой строчке текстового документа
    values = line.split.map(&:to_i)      # при помощи метода split удаляем пробелы и добавляем в массив values значения из массива строк,
                                          # проводя явное преобразование к integer
    code += values.max - values.min  # формируем код от замка
  end
end

puts code


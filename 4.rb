## Задача №4:
#
# В соседнем районе рождественские эльфы готовят подарки для жителей города.
# Для каждого подарка (файл data/4.txt) нужно найти сколько оберточной бумаги потребуется.
# Формула рассчета: 2*ш*д + 2*д*в + 2*в*ш + площадь наименьшей стороны
# Например, на подарок размером 2х3х4 требуется 2*6 + 2*12 + 2*8 = 52 + 6 кв. см.
#
# Сколько всего оберточной бумаги нужно купить эльфам?
#
## Требования к решению:
# - Входные данные находятся в файле data/4.txt
# - В значениях данные длины, ширины и высоты не упорядочены и могут идти в любом порядке, однако
# длина всегда наименьшее число из трех, высота - среднее, ширина - самое большое.
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:

paper = 0 # инициализируем переменную, которая будет хранить сколько оберточной бумаги надо купить

File.open("data/4.txt", "r") do |file| # открываем файл со входными данными
  for line in file.readlines # бежим по каждой строчке текстового документа
    values = line.split('x').map(&:to_i).sort # удаляем "х" и добавляем в массив упорядочные размера подарка
    paper += (2 * values[0] * values[2] + 2 * values[0] * values[1] + 2 * values[1] * values[2] + values[0]*values[1]) #считаем, сколько оберточной
  end                                                                                  # бумаги потребуется на подарок с определенными размерами
end

puts paper


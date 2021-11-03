## Задача №1:
#
# Джон Макклейн пытается найти этаж на котором заложена бомба и у него есть список инструкций (в файле data/1.txt):
#
# (- Джон должен подняться на этаж выше
# ) - Джон должен опуститься на этаж ниже
#
# Поиск начинается с нулевого этажа. 
#
# На каком этаже находится бомба?
#
## Требования к решению:
# - Входные данные находятся в файле data/1.txt
# - Результат должен быть выведен в консоль командой puts
#
#
## Решение:

floor = 0 # инициализируем переменную, в которой будем хранить этаж, на котором по итогу будет находиться бомба
input = "" # инициализируем переменную, в которой будет записана информация из файла data/1.txt

File.open("data/1.txt", "r") do |file| #Открываем файл со входными данными
  input = file.read() # Записываем содержимое в переменную
  for i in (0...input.length) # Бежим по строке, проверяя, какой символ нам встречается,
    if (input[i] == "(")      #и в зависимости от него, либо прибавляем 1 к переменной floor, либо убавляем на 1
      floor += 1
    elsif (input[i] ==")")
      floor -= 1
    end
  end
end

puts floor


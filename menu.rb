def menu
	
	choise_menu = ["1", "2", "3", "4", "5"]

	while true

		system("clear")

		puts "Программы работы с массивом:"
		puts "\t1 - Сортировка массива методом пузырька (авторская)"
		puts "\t2 - Подсчет количества серий положительных элементов массива"
		puts "\t3 - Подсчет количества элементов массива, которые больше предыдущего элемента"
		puts "\t4 - Отобразить массив в обратном порядке (авторский)"
		puts "\t5 - Разбить массив на подмассивы с количеством элементов 2^n"
		puts "\t0 - Выход"
		print "Введите номер программы для её запуска: "

		point = gets.chomp

		if point == "0"
			exit
		elsif choise_menu.include?(point)
			return point	
		else
			redo	
		end		
	end	
end

def sort_bubble_my(param_array)

	puts "Показываем работу метода:"

	for x in 1..param_array.length do		
		for i in 1..param_array.length-1 do

			if param_array[-i] < param_array[-i-1]

			 	tmp = param_array[-i]
			 	param_array[-i] = param_array[-i-1]
			 	param_array[-i-1] = tmp

			 	print "#{param_array}\n"
			end
		end
		puts "-"
	end	

	puts "Нажмите любую клавишу ..."
	a = gets.chomp
end

def series_of_positive(param_array)

	series   = 0
	old_elem = -1

	for i in 0..param_array.length-1 do

		elem = param_array[i]

		if elem < 0 && old_elem >= 0
			series += 1
		end

		old_elem = elem
			
	end

	puts "\nКоличество серий из положительных элементов = #{series}\n"
	puts "\nНажмите любую клавишу ..."
	a = gets.chomp
end

def next_more(param_array)

	quantity_more = 0

	for i in 1..param_array.length-1 do

		if param_array[i-1] < param_array[i]
			quantity_more += 1
		end
	end

	puts "\nКоличество элементов массива, которые больше предыдущего элемента = #{quantity_more}\n"
	puts "\nНажмите любую клавишу ..."
	a = gets.chomp
end

def reverse_array(param_array)

	for i in 1..param_array.length do

		param_array << param_array[-i]
		param_array.delete_at(-i-1)

	end

	print "\n#{param_array}\n"
	puts  "\nНажмите любую клавишу ..."
	a = gets.chomp
end

def pyramid_max(param_array)

	param_array.sort!
	param_array.uniq!
	param_array.reverse!

	number_row = (param_array.length/2).to_i

	print "\n #{param_array[0..0].to_s.rjust((number_row+2)*2)} \n"

	for i in 1..number_row do

		print " ".rjust((number_row-i)*2) + param_array[0..i*2-1].to_s + "\n"

	end

	puts  "\nНажмите любую клавишу ..."
	a = gets.chomp
end

while true

	point = menu

	print "\n\nВведите массив: "
	data = gets.chomp.split(" ").map(&:to_i)

	if data.length == 0
		puts "\nэто Пустой массив."
		puts "Нажмите любую клавишу ..."
		a = gets.chomp
		redo
	end	

	case point
		when "1"
			sort_bubble_my(data)
		when "2"
			series_of_positive(data)
		when "3"
			next_more(data)
		when "4"
			reverse_array(data)
		when "5"
			pyramid_max(data)	
	end	
end
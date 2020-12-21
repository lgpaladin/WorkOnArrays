def menu
	
	choise_menu = ["1", "2", "3", "4", "5"]

	while true

		system("clear")

		puts "Программы работы с массивом:"
		puts "\t1 - Сортировка массива методом пузырька (авторская)"
		puts "\t2 - Сортировка массива методом пузырька (из интернета)"
		puts "\t3 - Подсчет количества участков с возрастанием значений массива"
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

	puts "---"

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

#while true

	point = menu

	print "\n\nВведите массив: "
	data = gets.chomp.split(" ").map(&:to_i)

	case point
		when data.length == 0
			puts data.length
#			redo
		when "1"
			sort_bubble_my(data)
    	when "2"
    		#	sort_bubble(data)
		when "3"
			#	m3(data)
		when "4"
			#	m4(data)
		when "5"
			#	m5(data)
	end	
#end
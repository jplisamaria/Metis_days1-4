num_of_lockers = 26
num_of_students = num_of_lockers
lockers = [false] * num_of_lockers

num_of_students.times do |student_index|
  lockers.each_with_index do |locker_state, lockers_index|
    if (lockers_index + 1) % (student_index +1 ) == 0
      lockers[lockers_index] = !locker_state
    end
  end
end

lockers.each_with_index do |locker_state, lockers_index|
  if locker_state == true
    puts "#{lockers_index +1}          OPEN"
  else
    puts "#{lockers_index +1} closed"
  end
end


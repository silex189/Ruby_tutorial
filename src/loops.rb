# While statement
count = 1
while count < 5
  puts "Saludations #{count} times"
  count += 1
end

# Ruby while modifier, it performs a do while
begin
  puts "Extra saludations #{count} times"
  count += 1
end while count < 5

# Ruby until statement, executes code while conditional is false, equal to while not
until count == 0
  puts "Reducing count #{count}"
  count -= 1
end

# Ruby until modifier, it performs a do while not
begin
  puts "Increasing count #{count}"
  count += 1
end until count > 3

# For loop, it declares its variable and use a range for deciding its iterations
for i in 0..5
  puts "Counting #{i}"
end

# Each loop, functional way to perform a for loop
(0..5).each do |iterator|
  puts "Classical each form #{iterator}"
end

# Same loop than each, using brackets instead of do keyword
(0..5).each { |iterator|
  puts "Counting each #{iterator}"
}

$age = 0
# break keyword stops a loop
(1..50).each { |age|
  $age = age
  if age == 33
    puts "It found my age."
    break
  end
}
puts "That's my age again: #{$age}"

# Ruby next statement, jumps to the next loop iteration
(0..10).each { |iterator|
  if iterator % 2 == 0
    next
  end
  puts "Odd numbers: #{i}"
}

# Ruby redo statement, restarts the iteration of a loop
restart = false
(0..2).each do |iterator|
  if restart
    puts "Restarting this loop"
    redo # It can result in an endless loop
  end
  puts "Continuing the normal flow..."
end

# Ruby retry statement, it allows to execute again a block of code if an error occurred
$connection = 'BAD'

def my_flaky_method
  if $connection == 'BAD'
    $connection = 'GOOD'
    throw Errno "An error occurred."
  end
  puts "Everything went fine."
end

begin
  my_flaky_method
rescue
  retry # It will executing this block of code again if an error is captured by rescue keyword
end
## CONTROL STRUCTURES

age = 72
height = 170
counter = 10
message = nil
# score = 'A' 

# CONDITIONAL STATEMENTS
# 1.0 if - else

message = if age  < 18
     'You are not old enough'
 elsif age > 49
        # You can nest another if statement inside of another.
        if age > 49 && age < 71
        'Old enough, but stay at home'
        else
            'You really need to rest'
        end
 else
     'You are eligible!'

end

puts message


# 2.0 unless- 
# considered as the opposite of the 'if statement'
# You can still nest another block of 'if statement'
message = unless height >= 168
        if height > 163 && height <= 167 # You can still nest
            puts 'You can stick around for other games'
        end
    puts 'You cannot ride this rollercoaster!'
end
# 3.0 case - when
case score = 'BB'  # Can also be used as a default
    when 'A'
        puts 'Good Job'
    when 'B'
        puts 'Good Job, Improve'
    when 'C'
        puts 'Fair Job, Retake'
    when 'D'
        puts 'Retake'
    else  # this is the default to handle something unexpected
        puts 'Cannot recognize score'
end


# LOOPS - used to perfom things that are repetitive.
# 4.0 while
while counter > 0
    puts "Count: #{counter}"
    counter -= 2
end

# 5.0 times
10.times do |i|
    puts 'Hallo!'
end

# scenario 2
bye = 5
bye.times{|i| puts 'Guten Tag'} #Oneliner in use

## For Loop
animals = ['Lion', 'Buffalo', 'Elephant']
for a in animals
    puts a 
end

# Another Method
animals.each do |a|
    puts a 
end

## ARRAY METHODS (shovel, push, include?, reverse)
grades = [99, 57, 87, 90, 35, 20, 66, 78, 18, 100]

#shovel (<<)- add item at end of the array
pp grades
grades << 85
pp grades
# push
grades.push(20, 35, 70)
pp grades
# inlude? - returns a boolean value
puts grades.include?(70)
# reverse - does not change the original array
x = grades.reverse
pp x
pp grades 
# uniq- this removes the repetitive items and returns the a cleaner array
pp grades.uniq

## HASH METHODS (keys, values, delete)
student = {
    name: "Jane Doe",
    age: 22,
    email: "jane.doe@mail.com",
    hasGraduated: false,
    height: 165.5,
    carModel: nil
}

pp student.keys
pp student.values

student.delete(:carModel)
pp student
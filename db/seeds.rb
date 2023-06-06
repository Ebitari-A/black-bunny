puts "Cleaning database..."

User.destroy_all
Restaurant.destroy_all
Time_slot.destroy_all
Reservation.destroy_all

puts "Creating users..."

user1 = User.create(email: 'admin@test.com', password: '123456')

puts "Finished creatings users!"

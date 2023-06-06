puts "Cleaning database..."


# Reservation.destroy_all
# TimeSlot.destroy_all
Restaurant.destroy_all
User.destroy_all

puts "Creating users..."

user1 = User.create!(email: 'emilija@gmail.com', password: '123456')

puts "Finished creatings users!"

Restaurant.create!(name: 'Heritage', address: '20 Rupert Street', max_capacity: 90, opening_time_start: Time.zone.parse("06:00 PM"), opening_time_end: Time.zone.parse("00:00 AM"), user: user1)

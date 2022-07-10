# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
 Doctor.create!(first_name: 'Zephania',
 last_name: 'Nkwenti',
 specialty: 'Ophtamology',
 email: 'zeph@doctor.com'); 
 Doctor.create!(first_name: 'Anangsong',
 last_name: 'Desmond',
 specialty: 'Pediatric',
 email: 'anangson@doctor.com'); 
 Doctor.create!(first_name: 'Nsah',
 last_name: 'larissa',
 specialty: 'Neurologist',
 email: 'nsah@doctor.com'); 
 Doctor.create!(first_name: 'Ndangoh',
 last_name: 'Eveline',
 specialty: 'General',
 email: 'ndangoh@doctor.com'); 
 Doctor.create!(first_name: 'Koudoum',
 last_name: 'laurance',
 specialty: 'Dermatologist',
 email: 'koudom@doctor.com'); 
 Doctor.create!(first_name: 'Nsoh',
 last_name: 'Awah',
 specialty: 'Dentist',
 email: 'Awah@doctor.com'); 




 User.create!(first_name: 'Zephania',
 last_name: 'Nkwenti',
 password: '1234',
 email: 'zeph@doctor.com'); 

 User.create!(first_name: 'Anangsong',
 last_name: 'Desmond',
 password: '1234',
 email: 'anangson@doctor.com'); 


 User.create!(first_name: 'Nsah',
 last_name: 'larissa',
 password: '1234',
 email: 'nsah@doctor.com'); 

 User.create!(first_name: 'Ndangoh',
 last_name: 'Eveline',
 password: '1234',
 email: 'ndangoh@doctor.com');

 User.create!(first_name: 'Koudoum',
 last_name: 'laurance',
 password: '1234',
 email: 'koudom@doctor.com');

 User.create!(first_name: 'Nsoh',
 last_name: 'Awah',
 password: '1234',
 email: 'Awah@doctor.com'); 

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

doctors = [

  { 
      name: 'John Doe',
      location: 'Lagos, Nigeria',
      specialization: "Consultancy For Ear, Nose & Throat Surgeon",
      fees: '25000',
      email: 'johndoe@gmail.com',
      about: 'A Consultant Ear, Nose & Throat Surgeon with over 27 years clinical experience in treating and managing various ear, nose and throat infections.',
      photo: 'https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg'

},
{ 
      name: 'John Doe',
      location: 'Lagos, Nigeria',
      specialization: "Consultancy For Ear, Nose & Throat Surgeon",
      fees: '25000',
      email: 'johndoe@gmail.com',
      about: 'A Consultant Ear, Nose & Throat Surgeon with over 27 years clinical experience in treating and managing various ear, nose and throat infections.',
      photo: 'https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg'

},
{ 
      name: 'Mary Rowland',
      location: 'London UK',
      specialization: 'Consultant Ophthalmologist',
      fees: '35000',
      email: 'maryrow@gmail.com',
      about: 'A Consultant Ophthalmologist who is experienced in medical and surgical management of the eye and visual system..',
      photo: 'https://www.proheadshots.ca/wp-content/uploads/2016/02/doctors-headshot.jpg'
},

{ 
      name: 'Anne Hathaway',
      location: 'Texas US',
      specialization: "Public Health Opthalmology",
      fees: '30000',
      email: 'annehat@gmail.com',
      about: 'I am a Professor of Public Health Opthalmology with 38 years experience in the practice of medicine. The treatment and correction of all eyes related ailments is my specialty. My services include Medical, Surgical and Optical.',
      photo: 'https://www.pinnaclecare.com/wp-content/uploads/2017/12/bigstock-African-young-doctor-portrait-28825394.jpg'

}

]

doctors.each do |obj|
  doctor = Doctor.create(obj);
end

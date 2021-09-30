# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Doctor.destroy_all
Patient.destroy_all
Appointment.destroy_all

meredith = Doctor.create({name: "Meredith Grey", department: "Internal"})
hawkeye = Doctor.create({name: "Hawkeye Pierce", department: "Surgery"})
leonard = Doctor.create({name: "Leonard 'Bones' McCoy", department: "Cardiac"})
phillip = Doctor.create({name: "Phillip Chandler", department: "Brain"})
michaela = Doctor.create({name: "Michaela Quinn", department: "Leg"})

homer = Patient.create({name: "Homer Simpson", age: 38})
bart = Patient.create({name: "Bart Simpson", age: 10})
marge = Patient.create({name: "Marge Simpson", age: 36})
lisa = Patient.create({name: "Lisa Simpson", age: 8})
maggie = Patient.create({name: "Maggie Simpson", age: 1})

Appointment.create([
  {date: DateTime.new(2016, 03, 15, 18, 00, 0), patient: homer, doctor: hawkeye, notes: "Good"},
  {date: DateTime.new(2016, 01, 11, 20, 20, 0), patient: bart, doctor: meredith, notes: "Fine"},
  {date: DateTime.new(2016, 04, 22, 14, 00, 0), patient: marge, doctor: michaela, notes: "Healthy"},
  {date: DateTime.new(2017, 10, 30, 15, 00, 0), patient: lisa, doctor: phillip, notes: "Okay"},
  {date: DateTime.new(2016, 07, 11, 16, 00, 0), patient: maggie, doctor: leonard, notes: "Not good"},
  {date: DateTime.new(2016, 05, 31, 17, 00, 0), patient: homer, doctor: hawkeye, notes: "Meh"},
  {date: DateTime.new(2017, 06, 03, 10, 00, 0), patient: marge, doctor: meredith, notes: "Sheeesh"}
])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create nome: 'José', cod: '201521234', admin: :admin, ativo: :ativo, email: 'admin@teste.com', password: 123456
puts 'Admin Criado'
User.create nome: 'Edna', cod: '20152123', admin: :normal, ativo: :ativo, email: 'normal@teste.com', password: 123456
puts 'Admin Criado'
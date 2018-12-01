# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create nome: 'José', cod: '201521234', admin: :admin, ativo: :ativo, 
            email: 'admin@teste.com', password: 123456
puts 'User Admin Criado'
User.create nome: 'Edna', cod: '20152123', admin: :normal, ativo: :ativo,
            email: 'normalativo@teste.com', password: 123456
puts 'User normal ativo Criado'
User.create nome: 'Edna', cod: '20152124', admin: :normal, ativo: :inativo,
            email: 'normalinativo@teste.com', password: 123456
puts 'User normal inativo Criado'

Bloco.create descricao: 'Prédio Administrativo Mª Cordeiro de Castro'
Bloco.create descricao: 'Prédio Novo Entrada do Campus/Lado Esquerdo'
Bloco.create descricao: 'Prédio Orlando  Cassique - Térreo'
Bloco.create descricao: 'Prédio Orlando  Cassique - 1º Andar'
Bloco.create descricao: 'Prédio Orlando  Cassique - 2º Andar'
puts 'Blocos Criados'

5.times do
    Espaco.create numero_sala: Random.rand(1..5), descricao: 'Sala Ampla', 
              capacidade: Random.rand(40..60), disponivel: :disponivel,
              bloco_id: Random.rand(1..5)
end
5.times do
    Espaco.create numero_sala: Random.rand(1..5), descricao: 'Sala Ampla', 
              capacidade: Random.rand(40..60), disponivel: :disponivel,
              bloco_id: Random.rand(1..5)
end

# 4.times do
#     Turma.create curso: 'Sistemas de Informação', ingresso: Random.rand(2013..2018), turno: 'Manhã', tipo: 'Regular' 
# end    
# 4.times do
#     Turma.create curso: 'Pedagogia', ingresso: Random.rand(2013..2018), turno: 'Tarde', tipo: 'Regular' 
# end
# 4.times do
#     Turma.create curso: 'Matematica', ingresso: Random.rand(2013..2018), turno: 'Manhã', tipo: 'Regular' 
# end
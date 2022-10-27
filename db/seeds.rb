# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:Faker::s     eed command (or created alongside the database with db:Faker::s     etup).
#
# Examples:Faker::
     #
#   movies = Movie.create([{ name:Faker::      'Star Wars' }, { name:Faker::      'Lord of the Rings' }])
#   Character.create(name:Faker::      'Luke', movie:Faker::      movies.first)


puts "Cadastrando cidadãos..."
45.times do |i|
    Cidadao.create!(
        nome: Faker::Name.first_name,     
        sobrenome: Faker::Name.last_name,   
        cpf: Faker::CPF.pretty,    
        cns: Faker::Number.number(digits: 15),
        email: Faker::Internet.email,
        data_nascimento: Faker::Date.between(from: '1990-09-23', to: '2002-09-25'),    
        telefone: Faker::PhoneNumber.phone_number ,
        status: true
    )

    puts "Cadastrando Enderecos...."

    Cidadao.all.each do |cidadao|
        Endereco.create!(
        cep: Faker::Address.zip_code,
        logradouro: Faker::Address.street_name,
        complemento: Faker::Number.number(digits: 2),
        bairro: Faker::Address.street_address,
        cidade: Faker::Address.city ,     
        uf: "SP",
        codigo_ibge: Faker::Number.number(digits: 7),  
        cidadao: cidadao
          )
        end
    puts "Dados cadastrados com sucesso"
end
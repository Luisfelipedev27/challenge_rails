require 'rails_helper'

RSpec.describe Cidadao, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  context 'Criar cidadãos' do
    it 'com todos os atributos' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212123",
        status: true) 
      expect(cidadao).to be_valid  
    end
  end

  context 'Não pode criar cidadãos' do  # (almost) plain English
    it 'sem passar os valores' do   #
      expect { Cidadao.create! }.to raise_error(ActiveRecord::RecordInvalid)  
    end

    it 'sem passar nome' do   #
      cidadao = Cidadao.new(
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'sem passar sobrenome' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        cpf: '12345678909',
        cns: '123456711917113',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'sem passar cpf' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cns: '123456711917113',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'sem passar cns' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'sem passar email' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'sem passar email corretamente' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        email: "exemplohotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid 
    end

    it 'sem passar data de nascimento' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        email: "example@hotmail.com",
        telefone: "2121212121",
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'sem passar telefone' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'passando telefone < 10 caracteres' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        telefone: "212121245",
        status: true) 
      expect(cidadao).not_to be_valid  
    end

    it 'sem passar status' do   #
      cidadao = Cidadao.new(
        nome: 'Luis',
        sobrenome: "Felipe",
        cpf: '12345678909',
        cns: '123456711917113',
        email: "example@hotmail.com",
        data_nascimento: Time.now,
        telefone: "2121212121"
        ) 
      expect(cidadao).not_to be_valid  
    end
  end
end

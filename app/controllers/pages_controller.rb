class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def cidadao_params
    params.require(:cidadao).permit(:nome, :sobrenome, :cpf, :cns, :email, :data_nascimento, :telefone, :status, :photo, endereco_attributes: [:cep, :logradouro, :complemento, :bairro, :cidade, :uf, :codigo_ibge])
  end
end

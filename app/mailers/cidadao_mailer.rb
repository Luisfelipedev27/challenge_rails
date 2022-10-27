class CidadaoMailer < ApplicationMailer
  # default from: 'luisfelipe1582@hotmail.com'

  def email_cadastro
    @cidadao = params[:cidadao]
    mail(to: @cidadao.email, subject: 'Munícipes - Cadastro Realizado')
  end

  def email_cadastro_atualizado
    @cidadao = params[:cidadao]
    mail(to: @cidadao.email, subject: 'Munícipes - Cadastro Atualizado')
  end

  # def email_cadastro
  #   mail to: "user@gmail.com", subject: 'Bem vindo ao site'
  # end
end

class HomeController < ApplicationController
  def dashboard
    
    @quantidade_em_estoque = Part.total_em_estoque
    @total_clientes = Cliente.total_clientes
    @total_servicos = Servico.total_servicos
    @total_ordens_concluidas = OrdemServico.total_ordens_concluidas
    @total_funcionarios = Funcionario.total_funcionarios
    @valor_total_em_estoque = Part.valor_total_em_estoque

  end
end

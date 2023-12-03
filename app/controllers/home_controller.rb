class HomeController < ApplicationController
  def dashboard
    
    @quantidade_em_estoque = Part.total_em_estoque

  end
end

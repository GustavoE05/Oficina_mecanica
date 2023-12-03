class OrdemServicosController < ApplicationController
  before_action :set_ordem_servico, only: %i[ show edit update destroy ]

  # GET /ordem_servicos or /ordem_servicos.json
  def index
    @ordem_servicos = OrdemServico.all
    @equipes = Equipe.all
    @veiculos = Veiculo.all
    @clientes = Cliente.all
    @servicos = Servico.all
    @parts = Part.all
    @ordem_servico = OrdemServico.new
    
  end

  # GET /ordem_servicos/1 or /ordem_servicos/1.json
  def show
  end

  # GET /ordem_servicos/new
  def new
    @ordem_servico = OrdemServico.new
  end

  # GET /ordem_servicos/1/edit
  def edit
  end

  # POST /ordem_servicos or /ordem_servicos.json
  def create
    @ordem_servico = OrdemServico.new(ordem_servico_params)
    @ordem_servico.cliente = Cliente.find(params[:ordem_servico][:cliente_id])
    @ordem_servico.veiculo = Veiculo.find(params[:ordem_servico][:veiculo_id])
    @ordem_servico.equipe = Equipe.find(params[:ordem_servico][:equipe_id])
    #@ordem_servico.created_at = time.now

    respond_to do |format|
      if @ordem_servico.save
        format.html { redirect_to ordem_servico_url(@ordem_servico), notice: "Ordem servico was successfully created." }
        format.json { render :show, status: :created, location: @ordem_servico }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ordem_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ordem_servicos/1 or /ordem_servicos/1.json
  def update
    respond_to do |format|
      if @ordem_servico.update(ordem_servico_params)
        format.html { redirect_to ordem_servico_url(@ordem_servico), notice: "Ordem servico was successfully updated." }
        format.json { render :show, status: :ok, location: @ordem_servico }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ordem_servico.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ordem_servicos/1 or /ordem_servicos/1.json
  def destroy
    @ordem_servico.destroy!

    respond_to do |format|
      format.html { redirect_to ordem_servicos_url, notice: "Ordem servico was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ordem_servico
      @ordem_servico = OrdemServico.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
  
    def ordem_servico_params
      params.require(:ordem_servico).permit(:cliente_id, :veiculo_id, :equipe_id, :conclusao, servico_ids: [], part_ids: [])
    end

end

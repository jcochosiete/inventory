class ColaboratorsController < ApplicationController
  before_action :set_colaborator, only: %i[ show edit update destroy ]

  # GET /colaborators or /colaborators.json
  def index
    @colaborators = Colaborator.all
  end

  # GET /colaborators/1 or /colaborators/1.json
  def show
  end

  # GET /colaborators/new
  def new
    @colaborator = Colaborator.new
  end

  # GET /colaborators/1/edit
  def edit
  end

  # POST /colaborators or /colaborators.json
  def create
    @colaborator = Colaborator.new(colaborator_params)

    respond_to do |format|
      if @colaborator.save
        format.html { redirect_to colaborator_url(@colaborator), notice: "Colaborator was successfully created." }
        format.json { render :show, status: :created, location: @colaborator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @colaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /colaborators/1 or /colaborators/1.json
  def update
    respond_to do |format|
      if @colaborator.update(colaborator_params)
        format.html { redirect_to colaborator_url(@colaborator), notice: "Colaborator was successfully updated." }
        format.json { render :show, status: :ok, location: @colaborator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @colaborator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /colaborators/1 or /colaborators/1.json
  def destroy
    @colaborator.destroy

    respond_to do |format|
      format.html { redirect_to colaborators_url, notice: "Colaborator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_colaborator
      @colaborator = Colaborator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def colaborator_params
      params.require(:colaborator).permit(:name, :lastname, :profile, :status, :email, :phone, :adress)
    end
end

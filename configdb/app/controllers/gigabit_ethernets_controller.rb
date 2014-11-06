class GigabitEthernetsController < ApplicationController
  before_action :set_gigabit_ethernet, only: [:show, :edit, :update, :destroy]

  # GET /gigabit_ethernets
  # GET /gigabit_ethernets.json
  def index
    @gigabit_ethernets = GigabitEthernetCondition.new(search_params).gigabit_ethernets
  end

  # GET /gigabit_ethernets/1
  # GET /gigabit_ethernets/1.json
  def show
  end

  # GET /gigabit_ethernets/new
  def new
    @gigabit_ethernet = GigabitEthernet.new
  end

  # GET /gigabit_ethernets/1/edit
  def edit
  end

  # POST /gigabit_ethernets
  # POST /gigabit_ethernets.json
  def create
    @gigabit_ethernet = GigabitEthernet.new(gigabit_ethernet_params)

    respond_to do |format|
      if @gigabit_ethernet.save
        format.html { redirect_to @gigabit_ethernet, notice: 'Gigabit ethernet was successfully created.' }
        format.json { render :show, status: :created, location: @gigabit_ethernet }
      else
        format.html { render :new }
        format.json { render json: @gigabit_ethernet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gigabit_ethernets/1
  # PATCH/PUT /gigabit_ethernets/1.json
  def update
    respond_to do |format|
      if @gigabit_ethernet.update(gigabit_ethernet_params)
        format.html { redirect_to @gigabit_ethernet, notice: 'Gigabit ethernet was successfully updated.' }
        format.json { render :show, status: :ok, location: @gigabit_ethernet }
      else
        format.html { render :edit }
        format.json { render json: @gigabit_ethernet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gigabit_ethernets/1
  # DELETE /gigabit_ethernets/1.json
  def destroy
    @gigabit_ethernet.destroy
    respond_to do |format|
      format.html { redirect_to gigabit_ethernets_url, notice: 'Gigabit ethernet was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gigabit_ethernet
      @gigabit_ethernet = GigabitEthernet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gigabit_ethernet_params
      params.require(:gigabit_ethernet).permit(:device_id, :name, :description, :speed)
    end

    def search_params
      params.permit(:device_id, :name)
    end
end

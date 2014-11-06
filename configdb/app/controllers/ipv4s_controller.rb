class Ipv4sController < ApplicationController
  before_action :set_ipv4, only: [:show, :edit, :update, :destroy]

  # GET /ipv4s
  # GET /ipv4s.json
  def index
    @ipv4s = Ipv4Condition.new(search_params).ipv4s
  end

  # GET /ipv4s/1
  # GET /ipv4s/1.json
  def show
  end

  # GET /ipv4s/new
  def new
    @ipv4 = Ipv4.new
  end

  # GET /ipv4s/1/edit
  def edit
  end

  # POST /ipv4s
  # POST /ipv4s.json
  def create
    @ipv4 = Ipv4.new(ipv4_params)

    respond_to do |format|
      if @ipv4.save
        format.html { redirect_to @ipv4, notice: 'Ipv4 was successfully created.' }
        format.json { render :show, status: :created, location: @ipv4 }
      else
        format.html { render :new }
        format.json { render json: @ipv4.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ipv4s/1
  # PATCH/PUT /ipv4s/1.json
  def update
    respond_to do |format|
      if @ipv4.update(ipv4_params)
        format.html { redirect_to @ipv4, notice: 'Ipv4 was successfully updated.' }
        format.json { render :show, status: :ok, location: @ipv4 }
      else
        format.html { render :edit }
        format.json { render json: @ipv4.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ipv4s/1
  # DELETE /ipv4s/1.json
  def destroy
    @ipv4.destroy
    respond_to do |format|
      format.html { redirect_to ipv4s_url, notice: 'Ipv4 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ipv4
      @ipv4 = Ipv4.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ipv4_params
      params.require(:ipv4).permit(:gigabit_ethernet_id, :address, :primary)
    end

    def search_params
      params.permit(:gigabit_ethernet_id)
    end
end

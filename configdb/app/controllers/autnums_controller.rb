class AutnumsController < ApplicationController
  before_action :set_autnum, only: [:show, :edit, :update, :destroy]

  # GET /autnums
  # GET /autnums.json
  def index
    @autnums = Autnum.all
  end

  # GET /autnums/1
  # GET /autnums/1.json
  def show
  end

  # GET /autnums/new
  def new
    @autnum = Autnum.new
  end

  # GET /autnums/1/edit
  def edit
  end

  # POST /autnums
  # POST /autnums.json
  def create
    @autnum = Autnum.new(autnum_params)

    respond_to do |format|
      if @autnum.save
        format.html { redirect_to @autnum, notice: 'Autnum was successfully created.' }
        format.json { render :show, status: :created, location: @autnum }
      else
        format.html { render :new }
        format.json { render json: @autnum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autnums/1
  # PATCH/PUT /autnums/1.json
  def update
    respond_to do |format|
      if @autnum.update(autnum_params)
        format.html { redirect_to @autnum, notice: 'Autnum was successfully updated.' }
        format.json { render :show, status: :ok, location: @autnum }
      else
        format.html { render :edit }
        format.json { render json: @autnum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autnums/1
  # DELETE /autnums/1.json
  def destroy
    @autnum.destroy
    respond_to do |format|
      format.html { redirect_to autnums_url, notice: 'Autnum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autnum
      @autnum = Autnum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autnum_params
      params.require(:autnum).permit(:asn, :name)
    end
end

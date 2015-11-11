class MongorecordsController < ApplicationController
  before_action :set_mongorecord, only: [:show, :edit, :update, :destroy]

  # GET /mongorecords
  # GET /mongorecords.json
  def index
    @mongorecords = Mongorecord.all
  end

  # GET /mongorecords/1
  # GET /mongorecords/1.json
  def show
  end

  # GET /mongorecords/new
  def new
    @mongorecord = Mongorecord.new
  end

  # GET /mongorecords/1/edit
  def edit
  end

  # POST /mongorecords
  # POST /mongorecords.json
  def create
    @mongorecord = Mongorecord.new(mongorecord_params)

    respond_to do |format|
      if @mongorecord.save
        format.html { redirect_to @mongorecord, notice: 'Mongorecord was successfully created.' }
        format.json { render :show, status: :created, location: @mongorecord }
      else
        format.html { render :new }
        format.json { render json: @mongorecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mongorecords/1
  # PATCH/PUT /mongorecords/1.json
  def update
    respond_to do |format|
      if @mongorecord.update(mongorecord_params)
        format.html { redirect_to @mongorecord, notice: 'Mongorecord was successfully updated.' }
        format.json { render :show, status: :ok, location: @mongorecord }
      else
        format.html { render :edit }
        format.json { render json: @mongorecord.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mongorecords/1
  # DELETE /mongorecords/1.json
  def destroy
    @mongorecord.destroy
    respond_to do |format|
      format.html { redirect_to mongorecords_url, notice: 'Mongorecord was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mongorecord
      @mongorecord = Mongorecord.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mongorecord_params
      params[:mongorecord]
    end
end

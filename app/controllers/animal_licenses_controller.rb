class AnimalLicensesController < ApplicationController
  before_action :only_allow_signed_in_users, except: [:index, :show]
  before_action :set_animal_license, only: [:show, :edit, :update, :destroy]

  # GET /animal_licenses
  # GET /animal_licenses.json
  def index
    @animal_licenses = AnimalLicense.all
  end

  # GET /animal_licenses/1
  # GET /animal_licenses/1.json
  def show
  end

  # GET /animal_licenses/new
  def new
    @animal_license = AnimalLicense.new
  end

  # GET /animal_licenses/1/edit
  def edit
  end

  # POST /animal_licenses
  # POST /animal_licenses.json
  def create
    @animal_license = AnimalLicense.new(animal_license_params)

    respond_to do |format|
      if @animal_license.save
        format.html { redirect_to @animal_license, notice: 'Animal license was successfully created.' }
        format.json { render :show, status: :created, location: @animal_license }
      else
        format.html { render :new }
        format.json { render json: @animal_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /animal_licenses/1
  # PATCH/PUT /animal_licenses/1.json
  def update
    respond_to do |format|
      if @animal_license.update(animal_license_params)
        format.html { redirect_to @animal_license, notice: 'Animal license was successfully updated.' }
        format.json { render :show, status: :ok, location: @animal_license }
      else
        format.html { render :edit }
        format.json { render json: @animal_license.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /animal_licenses/1
  # DELETE /animal_licenses/1.json
  def destroy
    @animal_license.destroy
    respond_to do |format|
      format.html { redirect_to animal_licenses_url, notice: 'Animal license was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_animal_license
      @animal_license = AnimalLicense.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def animal_license_params
      params.require(:animal_license).permit(:name, :number_of_pets, :all_licensed)
    end
end

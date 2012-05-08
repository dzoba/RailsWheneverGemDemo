class SpecialNumbersController < ApplicationController
  # GET /special_numbers
  # GET /special_numbers.json
  def index
    @special_numbers = SpecialNumber.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @special_numbers }
    end
  end

  # GET /special_numbers/1
  # GET /special_numbers/1.json
  def show
    @special_number = SpecialNumber.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @special_number }
    end
  end

  # GET /special_numbers/new
  # GET /special_numbers/new.json
  def new
    @special_number = SpecialNumber.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @special_number }
    end
  end

  # GET /special_numbers/1/edit
  def edit
    @special_number = SpecialNumber.find(params[:id])
  end

  # POST /special_numbers
  # POST /special_numbers.json
  def create
    @special_number = SpecialNumber.new(params[:special_number])

    respond_to do |format|
      if @special_number.save
        format.html { redirect_to @special_number, notice: 'Special number was successfully created.' }
        format.json { render json: @special_number, status: :created, location: @special_number }
      else
        format.html { render action: "new" }
        format.json { render json: @special_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /special_numbers/1
  # PUT /special_numbers/1.json
  def update
    @special_number = SpecialNumber.find(params[:id])

    respond_to do |format|
      if @special_number.update_attributes(params[:special_number])
        format.html { redirect_to @special_number, notice: 'Special number was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @special_number.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_numbers/1
  # DELETE /special_numbers/1.json
  def destroy
    @special_number = SpecialNumber.find(params[:id])
    @special_number.destroy

    respond_to do |format|
      format.html { redirect_to special_numbers_url }
      format.json { head :no_content }
    end
  end
end

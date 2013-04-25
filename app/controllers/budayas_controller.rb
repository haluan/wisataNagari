class BudayasController < ApplicationController
  # GET /budayas
  # GET /budayas.json
  
  def index
    @budayas = Budaya.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @budayas }
    end
  end

  # GET /budayas/1
  # GET /budayas/1.json
  def show
    @budaya = Budaya.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @budaya }
    end
  end

  # GET /budayas/new
  # GET /budayas/new.json
  def new
    
    @budaya = Budaya.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @budaya }
    end
  end

  # GET /budayas/1/edit
  def edit
    @budaya = Budaya.find(params[:id])
  end

  # POST /budayas
  # POST /budayas.json
  def create
    @budaya = Budaya.new(params[:budaya])
    
    respond_to do |format|
      if @budaya.save
        format.html { redirect_to @budaya, notice: 'Budaya was successfully created.' }
        format.json { render json: @budaya, status: :created, location: @budaya }
      else
        format.html { render action: "new" }
        format.json { render json: @budaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /budayas/1
  # PUT /budayas/1.json
  def update
    @budaya = Budaya.find(params[:id])

    respond_to do |format|
      if @budaya.update_attributes(params[:budaya])
        format.html { redirect_to @budaya, notice: 'Budaya was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @budaya.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /budayas/1
  # DELETE /budayas/1.json
  def destroy
    @budaya = Budaya.find(params[:id])
    @budaya.destroy

    respond_to do |format|
      format.html { redirect_to budayas_url }
      format.json { head :no_content }
    end
  end
end

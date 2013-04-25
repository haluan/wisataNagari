class MakanansController < ApplicationController
  # GET /makanans
  # GET /makanans.json
  def index
    @makanans = Makanan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @makanans }
    end
  end

  # GET /makanans/1
  # GET /makanans/1.json
  def show
    @makanan = Makanan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @makanan }
    end
  end

  # GET /makanans/new
  # GET /makanans/new.json
  def new
    @makanan = Makanan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @makanan }
    end
  end

  # GET /makanans/1/edit
  def edit
    @makanan = Makanan.find(params[:id])
  end

  # POST /makanans
  # POST /makanans.json
  def create
    @makanan = Makanan.new(params[:makanan])

    respond_to do |format|
      if @makanan.save
        format.html { redirect_to @makanan, notice: 'Makanan was successfully created.' }
        format.json { render json: @makanan, status: :created, location: @makanan }
      else
        format.html { render action: "new" }
        format.json { render json: @makanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /makanans/1
  # PUT /makanans/1.json
  def update
    @makanan = Makanan.find(params[:id])

    respond_to do |format|
      if @makanan.update_attributes(params[:makanan])
        format.html { redirect_to @makanan, notice: 'Makanan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @makanan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /makanans/1
  # DELETE /makanans/1.json
  def destroy
    @makanan = Makanan.find(params[:id])
    @makanan.destroy

    respond_to do |format|
      format.html { redirect_to makanans_url }
      format.json { head :no_content }
    end
  end
end

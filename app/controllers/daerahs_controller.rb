class DaerahsController < ApplicationController
  # GET /daerahs
  # GET /daerahs.json
  def index
    @daerahs = Daerah.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @daerahs }
    end
  end

  # GET /daerahs/1
  # GET /daerahs/1.json
  def show
    @daerah = Daerah.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @daerah }
    end
  end

  # GET /daerahs/new
  # GET /daerahs/new.json
  def new
    @daerah = Daerah.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @daerah }
    end
  end

  # GET /daerahs/1/edit
  def edit
    @daerah = Daerah.find(params[:id])
  end

  # POST /daerahs
  # POST /daerahs.json
  def create
    @daerah = Daerah.new(params[:daerah])

    respond_to do |format|
      if @daerah.save
        format.html { redirect_to @daerah, notice: 'Daerah was successfully created.' }
        format.json { render json: @daerah, status: :created, location: @daerah }
      else
        format.html { render action: "new" }
        format.json { render json: @daerah.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /daerahs/1
  # PUT /daerahs/1.json
  def update
    @daerah = Daerah.find(params[:id])

    respond_to do |format|
      if @daerah.update_attributes(params[:daerah])
        format.html { redirect_to @daerah, notice: 'Daerah was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @daerah.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /daerahs/1
  # DELETE /daerahs/1.json
  def destroy
    @daerah = Daerah.find(params[:id])
    @daerah.destroy

    respond_to do |format|
      format.html { redirect_to daerahs_url }
      format.json { head :no_content }
    end
  end
end

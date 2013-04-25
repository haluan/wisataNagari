class KontensController < ApplicationController
  # GET /kontens
  # GET /kontens.json
  def index
    @kontens = Konten.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @kontens }
    end
  end

  # GET /kontens/1
  # GET /kontens/1.json
  def show
    @konten = Konten.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @konten }
    end
  end

  # GET /kontens/new
  # GET /kontens/new.json
  def new
    @konten = Konten.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @konten }
    end
  end

  # GET /kontens/1/edit
  def edit
    @konten = Konten.find(params[:id])
  end

  # POST /kontens
  # POST /kontens.json
  def create
    @konten = Konten.new(params[:konten])

    respond_to do |format|
      if @konten.save
        format.html { redirect_to @konten, notice: 'Konten was successfully created.' }
        format.json { render json: @konten, status: :created, location: @konten }
      else
        format.html { render action: "new" }
        format.json { render json: @konten.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /kontens/1
  # PUT /kontens/1.json
  def update
    @konten = Konten.find(params[:id])

    respond_to do |format|
      if @konten.update_attributes(params[:konten])
        format.html { redirect_to @konten, notice: 'Konten was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @konten.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /kontens/1
  # DELETE /kontens/1.json
  def destroy
    @konten = Konten.find(params[:id])
    @konten.destroy

    respond_to do |format|
      format.html { redirect_to kontens_url }
      format.json { head :no_content }
    end
  end
end

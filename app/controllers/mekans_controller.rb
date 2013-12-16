class MekansController < ApplicationController
  # GET /mekans
  # GET /mekans.json
  def index
    @mekans = Mekan.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @mekans }
    end
  end

  # GET /mekans/1
  # GET /mekans/1.json
  def show
    @mekan = Mekan.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @mekan }
    end
  end

  # GET /mekans/new
  # GET /mekans/new.json
  def new
    @mekan = Mekan.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @mekan }
    end
  end

  # GET /mekans/1/edit
  def edit
    @mekan = Mekan.find(params[:id])
  end

  # POST /mekans
  # POST /mekans.json
  def create
    @mekan = Mekan.new(params[:mekan])

    respond_to do |format|
      if @mekan.save
        format.html { redirect_to @mekan, notice: 'Mekan was successfully created.' }
        format.json { render json: @mekan, status: :created, location: @mekan }
      else
        format.html { render action: "new" }
        format.json { render json: @mekan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /mekans/1
  # PUT /mekans/1.json
  def update
    @mekan = Mekan.find(params[:id])

    respond_to do |format|
      if @mekan.update_attributes(params[:mekan])
        format.html { redirect_to @mekan, notice: 'Mekan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @mekan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mekans/1
  # DELETE /mekans/1.json
  def destroy
    @mekan = Mekan.find(params[:id])
    @mekan.destroy

    respond_to do |format|
      format.html { redirect_to mekans_url }
      format.json { head :no_content }
    end
  end
end

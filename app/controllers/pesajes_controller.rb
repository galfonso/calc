class PesajesController < ApplicationController
  # GET /pesajes
  # GET /pesajes.json
  def index
    @pesajes = Pesaje.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @pesajes }
    end
  end

  # GET /pesajes/1
  # GET /pesajes/1.json
  def show
    @pesaje = Pesaje.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @pesaje }
    end
  end

  # GET /pesajes/new
  # GET /pesajes/new.json
  def new
    @pesaje = Pesaje.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @pesaje }
    end
  end

  # GET /pesajes/1/edit
  def edit
    @pesaje = Pesaje.find(params[:id])
  end

  # POST /pesajes
  # POST /pesajes.json
  def create
    @pesaje = Pesaje.new(params[:pesaje])

    respond_to do |format|
      if @pesaje.save
        format.html { redirect_to @pesaje, notice: 'Pesaje was successfully created.' }
        format.json { render json: @pesaje, status: :created, location: @pesaje }
      else
        format.html { render action: "new" }
        format.json { render json: @pesaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /pesajes/1
  # PUT /pesajes/1.json
  def update
    @pesaje = Pesaje.find(params[:id])

    respond_to do |format|
      if @pesaje.update_attributes(params[:pesaje])
        format.html { redirect_to @pesaje, notice: 'Pesaje was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @pesaje.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pesajes/1
  # DELETE /pesajes/1.json
  def destroy
    @pesaje = Pesaje.find(params[:id])
    @pesaje.destroy

    respond_to do |format|
      format.html { redirect_to pesajes_url }
      format.json { head :no_content }
    end
  end
end

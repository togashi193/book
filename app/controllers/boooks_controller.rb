class BoooksController < ApplicationController
  # GET /boooks
  # GET /boooks.json
  def index
    @boooks = Boook.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @boooks }
    end
  end

  # GET /boooks/1
  # GET /boooks/1.json
  def show
    @boook = Boook.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @boook }
    end
  end

  # GET /boooks/new
  # GET /boooks/new.json
  def new
    @boook = Boook.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @boook }
    end
  end

  # GET /boooks/1/edit
  def edit
    @boook = Boook.find(params[:id])
  end

  # POST /boooks
  # POST /boooks.json
  def create
    @boook = Boook.new(params[:boook])

    respond_to do |format|
      if @boook.save
        format.html { redirect_to @boook, notice: 'Boook was successfully created.' }
        format.json { render json: @boook, status: :created, location: @boook }
      else
        format.html { render action: "new" }
        format.json { render json: @boook.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /boooks/1
  # PUT /boooks/1.json
  def update
    @boook = Boook.find(params[:id])

    respond_to do |format|
      if @boook.update_attributes(params[:boook])
        format.html { redirect_to @boook, notice: 'Boook was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @boook.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /boooks/1
  # DELETE /boooks/1.json
  def destroy
    @boook = Boook.find(params[:id])
    @boook.destroy

    respond_to do |format|
      format.html { redirect_to boooks_url }
      format.json { head :no_content }
    end
  end
end

class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :edit, :update, :destroy]

  # GET /clients
  # GET /clients.json
  def index
    @clients = Client.all.sort_by(&:job_count)
    @clients_index = true
    @no_top_nav = true
  end

  # GET /clients/1
  # GET /clients/1.json
  def show
    @clients_show = true
    @no_top_nav = true
  end

  # GET /clients/new
  def new
    @client = Client.new(client_params)
    @clients_new = true
    @no_top_nav = true
  end

  # GET /clients/1/edit
  def edit
    @clients_edit = true
    @no_top_nav = true
  end

  # POST /clients
  # POST /clients.json
  def create
    @client = Client.create(client_params)
    respond_to do |format|
      if @client.save
        format.html { redirect_to clients_path, notice_success: 'Client created!' }
        format.json { render action: 'show', status: :created, location: @client }
      else
        format.html { render action: 'new' }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /clients/1
  # PATCH/PUT /clients/1.json
  def update
    respond_to do |format|
      if @client.update(client_params)
        format.html { redirect_to @client, notice_success: 'Client updated!' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.json
  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_client
      @client = Client.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def client_params
      params.fetch(:client, {}).permit(:name, :contact)
    end
end

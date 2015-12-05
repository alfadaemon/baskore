class GameLogsController < ApplicationController
  before_action :set_game_log, only: [:show, :edit, :update, :destroy]

  # GET /game_logs
  # GET /game_logs.json
  def index
    @game_logs = GameLog.all
  end

  def game
    @game_logs = GameLog.where(game_id: params[:game_id])
    @game_points = GameLog.select(:game_id, :player_id, :event, 'SUM(count) as count').where(game_id: params[:game_id], event: GameLog::POINTS).group(:player_id)#.sum(:count)

    respond_to do |format|
      format.html { }
      format.json { render :game}
    end
  end

  # GET /game_logs/1
  # GET /game_logs/1.json
  def show
  end

  # GET /game_logs/new
  def new
    @game_log = GameLog.new
  end

  # GET /game_logs/1/edit
  def edit
  end

  # POST /game_logs
  # POST /game_logs.json
  def create
    @game_log = GameLog.new(game_log_params)

    respond_to do |format|
      if @game_log.save
        format.html { redirect_to @game_log, notice: 'Game log was successfully created.' }
        format.json { render :show, status: :created, location: @game_log }
      else
        format.html { render :new }
        format.json { render json: @game_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /game_logs/1
  # PATCH/PUT /game_logs/1.json
  def update
    respond_to do |format|
      if @game_log.update(game_log_params)
        format.html { redirect_to @game_log, notice: 'Game log was successfully updated.' }
        format.json { render :show, status: :ok, location: @game_log }
      else
        format.html { render :edit }
        format.json { render json: @game_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /game_logs/1
  # DELETE /game_logs/1.json
  def destroy
    @game_log.destroy
    respond_to do |format|
      format.html { redirect_to game_logs_url, notice: 'Game log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_game_log
      @game_log = GameLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def game_log_params
      params.require(:game_log).permit(:game_id, :player_id, :period, :event, :count)
    end
end

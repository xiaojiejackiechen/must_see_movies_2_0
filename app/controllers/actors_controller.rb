class ActorsController < ApplicationController
  before_action :set_actor, only: %i[show edit update destroy]

  # GET /actors
  def index
    @q = Actor.ransack(params[:q])
    @actors = @q.result(distinct: true).includes(:characters,
                                                 :movies).page(params[:page]).per(10)
  end

  # GET /actors/1
  def show
    @character = Character.new
  end

  # GET /actors/new
  def new
    @actor = Actor.new
  end

  # GET /actors/1/edit
  def edit; end

  # POST /actors
  def create
    @actor = Actor.new(actor_params)

    if @actor.save
      redirect_to @actor, notice: "Actor was successfully created."
    else
      render :new
    end
  end

  # PATCH/PUT /actors/1
  def update
    if @actor.update(actor_params)
      redirect_to @actor, notice: "Actor was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /actors/1
  def destroy
    @actor.destroy
    redirect_to actors_url, notice: "Actor was successfully destroyed."
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_actor
    @actor = Actor.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def actor_params
    params.require(:actor).permit(:actor_name, :actor_number, :dob, :bio,
                                  :image)
  end
end

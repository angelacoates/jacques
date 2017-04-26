class NotesController < ApplicationController
  before_action :set_note, only: [:show, :update, :destroy]

  # GET /api/notes
  # GET /api/notes.json
  def index
    @notes = Note.all
  end

  # GET /api/notes/1
  # GET /api/notes/1.json
  def show
  end

  # POST /api/notes
  # POST /api/notes.json
  def create
    @note = Note.new(note_params)

    if @note.save
      render :show, status: :created, location: @note
    else
      render :error, status: :bad_request
    end
  end

  # PATCH/PUT /api/notes/1
  # PATCH/PUT /api/notes/1.json
  def update
    if @note.update(note_params)
      render :show, status: :ok, location: @note
    else
      render json: @note.errors, status: :unprocessable_entity
    end
  end

  # DELETE /api/notes/1
  # DELETE /api/notes/1.json
  def destroy
    @note.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      params.permit(:title, :body)
    end
end

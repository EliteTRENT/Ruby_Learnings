class NotesController < ApplicationController
  before_action :set_note, only: %i[show edit update destroy]

  # GET /notes or /notes.json
  def index
    @notes = Note.all
    @note = Note.new
  end

  # GET /notes/1 or /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    @note = Note.new
    render partial: "notes/form", locals: { note: @note }
  end

  # GET /notes/1/edit
  def edit
  end

  # POST /notes or /notes.json
  def create
    @note = Note.new(note_params)

    respond_to do |format|
      if @note.save
        format.turbo_stream
        format.html { redirect_to notes_path, notice: "Note was successfully created." }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace("new_note", partial: "notes/form", locals: { note: @note }) }
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1 or /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@note, partial: "notes/note", locals: { note: @note }) }
        format.html { redirect_to notes_path, notice: "Note was successfully updated." }
      else
        format.turbo_stream { render turbo_stream: turbo_stream.replace(@note, partial: "notes/form", locals: { note: @note }) }
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1 or /notes/1.json
  def destroy
    @note = Note.find(params[:id])
    @note.destroy!

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove(@note) }
      format.html { redirect_to notes_path, notice: "Note was successfully deleted." }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_note
    @note = Note.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def note_params
    params.require(:note).permit(:title, :content)
  end
end

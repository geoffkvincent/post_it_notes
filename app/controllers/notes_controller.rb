class NotesController < ApplicationController
  before_action :set_note, only: [:show,]
  def index
    @notes = Note.all
  end

  def show
  end

  def new
    @page = Note.new
  end

  def create
    @page = Note.new(note_params)

    if @page.save
      redirect_to notes_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  
end

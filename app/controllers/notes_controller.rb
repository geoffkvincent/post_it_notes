class NotesController < ApplicationController
  before_action :set_params, only [:show,]
  def index
    @notes = Note.all
  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_params
    @note = Note.find(params[:id])
  end

  
end

class WordsController < ApplicationController
  def show
  end

  def new
    @word = Word.new(type_id: params[:id])
  end

  def create
    @word = Word.new(params_word)
    if @word.save
      redirect_to type_path(@word.type_id)
    else
      render :new
    end
  end

  def edit
  end

  private
  
  def params_word
    params.require(:word).permit(:title, :answer, :type_id)
  end
end

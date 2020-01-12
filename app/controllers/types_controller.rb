class TypesController < ApplicationController
  def index
    @types = Type.all
  end

  def show
    @type = Type.find(params[:id])
    @words = Word.where(type_id: params[:id])
  end

  def new
    @type = Type.new
  end

  def create
    @type = Type.new(params_type)
    if @type.save
      redirect_to @type
    else
      render :new
    end
  end

  def edit
    @type = Type.find(params[:id])
  end

  def update
    @type = Type.find(params[:id])
    @type.assign_attributes(params_type)
    if @type.save
      redirect_to @type
    else
      render :edit
    end
  end

  private
  
  def params_type
    params.require(:type).permit(:name)
  end
end

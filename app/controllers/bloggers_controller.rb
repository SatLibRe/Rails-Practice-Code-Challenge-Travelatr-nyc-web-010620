class BloggersController < ApplicationController
  def index
  end

  def new
      @blogger = Blogger.new
  end

  def create
    @blogger = Blogger.new(blogger_params)
    if  @blogger.save
      redirect_to blogger_path(@blogger)
    else 
      flash.now[:message] = @blogger.errors.full_messages[0]
      render :new
    end 
  end

  def update
  end

  def edit
  end

  def show
    @blogger = Blogger.find(params[:id])
  end

  def delete
  end


private
  def blogger_params
    params.require(:blogger).permit(:name, :bio, :age)
  end
end

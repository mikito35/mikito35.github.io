class IllustController < ApplicationController
before_action :ensure_editor, {only: [:create, :edit, :update, :del]}

  def index
    @illusts = Illust.all.order(created_at: :desc)
  end

  def show
    @illust = Illust.find_by(id: params[:id])
  end
  
  def showtp
    @illust = Illust.find_by(id: params[:id])
  end

  def new
    
  end

  def create
    @illust = Illust.new(
      title: params[:title],
      name: params[:name],
      model: params[:model],
    )
    if @illust.save
      image = params[:image]
      File.binwrite("public/illusts/#{@illust.name}", image.read)
      redirect_to("/illust/index")
    else
      render("/illust/new")
    end
  end

  def edit
    @illust = Illust.find_by(id: params[:id])
  end

  def update
    @illust = Illust.find_by(id: params[:id])
    @illust.title = params[:title]
    @illust.model = params[:model]
    
    if params[:image]
      @illust.name = params[:name]
      image = params[:image]
      File.binwrite("public/illusts/#{@illust.name}", image.read)
    end
    
    if params[:imagetp]
      @illust.transparent = "#{params[:name]}tp"
      image = params[:imagetp]
      File.binwrite("public/illusts/#{@illust.name}tp", image.read)
    end
    
    if @illust.save
      redirect_to("/illust/show/#{@illust.id}")
    else
      render("illust/edit")
    end
  end

  def del
    @illust = Illust.find_by(id: params[:id])
    @illust.destroy
    redirect_to("/illust/index")
  end

  def ensure_editor
    if session[:editor_id] == nil
      redirect_to("/")
    end
  end
end

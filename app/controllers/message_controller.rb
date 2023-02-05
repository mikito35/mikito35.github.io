class MessageController < ApplicationController
  before_action :ensure_editor, {only: [:answer, :update, :del]}

  def index
    @messages = Message.all.order(created_at: :desc)
  end

  def show
    @message = Message.find_by(id: params[:id])
  end

  def new
    @message = Message.new
  end
  
  def create
    @message = Message.new(
      name: params[:name],
      content: params[:content],
      answer: "未回答"
    )
    if @message.save
      flash[:notice] = "送信できました"
      redirect_to("/message/index")
    else
      render("message/new")
    end
  end

  def answer
    @message = Message.find_by(id: params[:id])
  end

  def update
    @message = Message.find_by(id: params[:id])
    @message.answer = params[:answer]
    if @message.save
      flash[:notice] = "回答できました"
      redirect_to("/message/show/#{@message.id}")
    else
      render("message/answer")
    end
  end

  def del
    @message = Message.find_by(id: params[:id])
    @message.destroy
    flash[:notice] = "削除しました"
    redirect_to("/message/index")
  end

  def ensure_editor
    if session[:editor_id] == nil
      redirect_to("/")
    end
  end

end

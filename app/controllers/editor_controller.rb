class EditorController < ApplicationController

  def login_form

  end

  def login
    @editor = Editor.find_by(name: params[:name])
    if @editor && @editor.authenticate(params[:password])
      session[:editor_id] = @editor.id
      redirect_to("/")
    else
      render("editor/login_form")
    end
  end

  def logout
    session[:editor_id] = nil
    redirect_to("/")
  end
end

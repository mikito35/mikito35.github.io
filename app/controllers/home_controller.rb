class HomeController < ApplicationController
  def top
    @illusts = Illust.all.order(created_at: :desc)
  end
end

class MainMenuController < ApplicationController
  before_action :authenticate_user!

  def index
    # 必要に応じてデータを取得
  end
end


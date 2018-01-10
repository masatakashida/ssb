class ApplicationController < ActionController::Base
  #protect_from_forgery with: :exception

  # エラー処理
  def render_error
	render json: { status: 'error' }
  end

  # 成功した場合 'ok' で統一
  def render_200
    render json: { status: 'ok' }
  end
  
end

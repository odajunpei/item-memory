class ApplicationController < ActionController::Base

  $tax_rate = 1.08 #税率のグローバル変数
  $potage = 800 #送料のグローバル変数

  #ログアウト時のパス
  def after_sign_out_path_for(resource)
      root_path
  end
end

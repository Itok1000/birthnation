class ApplicationController < ActionController::Base
  add_flash_types :success, :danger
  # add_flash_types とは、
  # フラッシュメッセージのタイプを追加するメソッド
end

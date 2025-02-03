class OgpCreator
    require "mini_magick"
    BASE_IMAGE_PATH = "./app/assets/images/ogp.png"  # 実際の画像ファイル名に変更
    GRAVITY = "center"
    TEXT_POSITION = "0,-50" # 国名を少し上に配置
    TEXT_POSITION_DESCRIPTION = "0,50" # 記念日の説明を少し下に配置
    FONT = "./app/assets/fonts/RocknRollOne-Regular.ttf" # 使用するフォントのパス
    FONT_SIZE = 80
    FONT_SIZE_DESCRIPTION = 30 # 記念日の説明のフォントの大きさは30に変更
    INDENTION_COUNT = 16
    ROW_LIMIT = 8

    def self.build(text)
      texts = text.split("\n") # 1行目: 国名, 2行目: 記念日
      country_text = prepare_text(texts[0])
      description_text = texts[1] || ""
      image = MiniMagick::Image.open(BASE_IMAGE_PATH)
      image.combine_options do |config|
        config.font FONT
        config.fill "orange"
        config.gravity GRAVITY
        config.pointsize FONT_SIZE
        config.draw "text #{TEXT_POSITION} '#{country_text}'" # 　国名
        config.pointsize FONT_SIZE_DESCRIPTION # 記念日の説明フォントサイズを変更を反映させる
        config.draw "text #{TEXT_POSITION_DESCRIPTION} '#{description_text}'" # 記念日の名前
      end
    end

    private
    def self.prepare_text(text)
      text.to_s.scan(/.{1,#{INDENTION_COUNT}}/)[0...ROW_LIMIT].join("\n")
    end
end

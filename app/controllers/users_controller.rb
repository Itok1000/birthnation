class UsersController < ApplicationController
  def new; end

  def submit
    @user = User.new(user_params)
    if @user.save
      redirect_to result_path(id: @user.id)
    else
      redirect_to new_users_path, danger: "名前が記載されているのを確認してください"
    end
  end

  def result
    @user = User.find(params[:id])
    @national_day = @user.find_closest_national_day

    # 動的OGP画像のURLを設定
    ogp_image = @national_day.present? ? ogp_image_url(@national_day.country_name) : default_ogp_image_url

    # metaタグの設定
    set_meta_tags(
      title: "#{@user.name}さんの誕生日に近い国の誕生日",
      description: @national_day.present? ? "#{@national_day.country_name}です！" : "関連する建国記念日は見つかりませんでした。",
      og: {
        title: "#{@user.name}さんの誕生日に近い国の誕生日",
        description: @national_day.present? ? "#{@national_day.country_name}です！" : "関連する建国記念日は見つかりませんでした。",
        image: ogp_image,
        url: request.original_url,
        type: "website"
      },
      twitter: {
        card: "summary_large_image",
        title: "#{@user.name}さんの誕生日に近い国の誕生日",
        description: @national_day.present? ? "#{@national_day.country_name}です！" : "関連する建国記念日は見つかりませんでした。",
        image: ogp_image
      }
    )
  end  

  private

  def ogp_image_url(text)
    images_ogp_url(text: text)
  end

  def default_ogp_image_url
    ActionController::Base.helpers.asset_path("default_ogp.png")
  end

  def user_params
    params.require(:user).permit(:name, :birth_month, :birth_day)
  end
end

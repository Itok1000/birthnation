# README

# サービス概要
![birthnation](app/assets/images/default_ogp.png)
サービスURL: **https://living-whippet-itok1000-8f99f3fa.koyeb.app/**

あなたの誕生月日と同じ日あるいは近い日に生まれた国家を探してみよう！

誕生月日を入力するだけで誕生日と同じ日あるいは近い日に生まれた国家が見つかるだけのミニアプリです

# 想定されるユーザー層
・今日誕生日の人

・国際意識に興味がある人

# サービスコンセプト
今年の1月19日に29歳の誕生日を迎えた際、20代最後で誕生日をコンセプトにしたミニアプリを作りたいと考え、計画しました

卒業制作で作ったアプリは、ジョージア料理をテーマにした[診断アプリ](https://gamarjoba.jp/)ですが、内容がマニアックであったことの課題点と反省点がありました
その反省を生かすために、誰でも触りやすい、結果がわかりやすいをモットーに作成しました

また私個人は幼いころから、世界の国旗や、世界の異文化に興味があります
その一方、誰かの誕生日に「誕生日おめでとう」だけでなくそこから話題を膨らませるのかどんなプレゼントを送ればいいのか考え悩むこともありました

そこで誰かの誕生日を知って、国の誕生日あるいは国にとって重要出来事の話題が共有できたらいいということを思いつきました

今後、APIを用いて結果を表示する方法も検討しております

# サービスの利用イメージ
|・Xにてシェア共有|
| :------------------------------------------------------------------------------------------------: |
|[![Image from Gyazo](https://i.gyazo.com/f3e760daa1833b30c7ad4c00b7bd6a4d.gif)](https://gyazo.com/f3e760daa1833b30c7ad4c00b7bd6a4d)|
|[![Image from Gyazo](https://i.gyazo.com/403459cbe68a30e3740ac84c892af325.png)](https://gyazo.com/403459cbe68a30e3740ac84c892af325)|
|<p align="left">誕生日日の月日を入力して結果出力後、Xでのシェア機能を用いて、多くの人に共有できます。誕生日から反映される結果は誕生日の前後3日以内からランダムで出力されます|

# ユーザーの獲得について
・X(旧Twitter)を用いてWebアプリ上でリリース公開します

・[Facebook](https://ja-jp.facebook.com/people/%E4%BC%8A%E8%97%A4%E5%81%A5%E5%A4%AA/pfbid0qTUGyTWXz25SVuS13YzG1G9jjtxvKQS9i6cuABJtmjcE3wD2pyQQmEQHQA8XquTgl/)と[instagram](https://www.instagram.com/uotiatnek2525/?igsh=OGQ5ZDc2ODk2ZA%3D%3D&utm_source=qr)も個人で使用しているので、本リリース後はこちらのSNSで告知も検討します


# サービスの差別化ポイント・推しポイント
ミニアプリですが、誕生日を入力するだけで結果が出るというシンプルな構成なので、わかりやすいです
誕生日から国の誕生日、その国にとって重要な出来事を知ることにより、国際意識、誕生日から生まれる話題のふくらみに繋がります

# 実装機能
|ログインなしで利用可能|
| -------- |
|Xにてシェア共有|
|動的OGP(画像加工・合成)|

|今後予定してる機能|
| -------- |
|・API機能の実装|

# ■ 技術スタック
|ツール| 内容 |
| -------- | -------- |
|フロントエンド|Rails 7.2.2.1, Node.js|
|CSSフレームワーク|Tailswind, CANVA, DaisyUI|
|バックエンド|Rails 7.2.2.1, (ruby 3.2.3 (2024-01-18 revision 52bb2ac0a6) [x86_64-linux])|
|インフラ|Koyeb|
|データベース|PostgreSQL|
|開発環境|Docker|
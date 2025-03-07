# graduation_work

# サービス概要

1人ディズニーが好きな人が映えやいいねなどを気にせずに、自分の行動を記録し振り返ることができるサービスです。
また、他の人の行動記録などを見てまだ知らないことを新発見出来るようなサービスです。

# このサービスへの思い・作りたい理由

友人や家族と行くディズニーだけでなく1人で行くディズニーも楽しいと思っており、その時の写真や行動を残しておいてもバラバラになってしまい思い出そうとしても曖昧になってしまうことがありました。
こういったことを解消するために、1つのアプリの中でその日の行動や写真・思い出などを記録したいと思い作成にいたりました。\
検索機能に関しては、X(Twitter)等で調べると関係のない事までヒットすることが多くなったので純粋にディズニーの情報を知り、1人時間をより充実させたいと考え追加しました。
1人ディズニーでは収集した情報の多さで充実度に差がでることがあるので、本アプリでは他のアプリとは異なり投稿する際にディズニーへ行った目的を選択することで、検索時に必要な情報をより簡単に探せるようにしたいと考えています。


# ユーザー層について

+ 1人ディズニーをする人や1人ディズニーに興味のある人
+ ディズニーでの1人時間を充実させて、その思い出を自分で思い返すためだけに記録に残したい人
+ 同じ目的で訪れた人の記録を見たい人

# サービスの利用イメージ

マイページにログインして自分の記録(日付、写真、どんな行動(時間ごとなど)、どんな体験・経験など)がつけられます。\
また検索機能で他の人の記録を見られるようになっており、ブックマーク機能でお気に入りの記録を見るのが簡単にできるようになっています。

# ユーザーの獲得について

1人ディズニーを楽しむ人の多くはXやInstagramで情報収集していることが多いのでそういったところで、自分が使っているのを見せつつ宣伝するのが良いのでないかと考えています。\
(最終的には外部連携機能もつけてより使いやすいようにします)

# サービスの差別化ポイント・推しポイント

似たようなサービス➡Instagram、X\
差別化のポイントい➡いいねのような機能はつけない、また時間ごとのざっくりとした行動記録をつけられる（行動記録はつけたい人だけにする）、検索機能ではマルチ検索機能を使って検索がしやすいようになっている\
   
   - 時間ごとのざっくりとした行動記録とは、下記のような表を時間と行動を入力して1日どんな行動をしたか後になっても振り返ることができるようにするものです。\
     いらないように感じるかもしれないのですが、後々になってどんな行動をしたか見たい時があるので導入したいです。\
        〇時ー(何のアトラクションに乗った)\
        〇時ー(どこレストランで食事した)\
        〇時ー(何のアトラクションに乗った)\
     上記のようなタイムスケジュールに関してはディズニー公式のアプリでは翌日になると消えてしまうのでこのアプリで残すことで振り返り可能になると考えています。

# 機能候補

現状作ろうと思っている機能は、ログイン機能、投稿機能、検索機能、ブックマーク機能、外部連携機能、行動記録機能です。
 + MVP時 ➡ ログイン機能、投稿機能、検索機能(行動の目的をラジオボタン方式で検索とワードでの検索)、ブックマーク機能、行動記録機能(細かい時間の設定とかは出来なくても一日にどんな順でパークのショップやアトラクションに訪れたか表示できるようにはしておきたいです。)
 + 本リリース時 ➡ ログイン機能、投稿機能、検索機能、マルチ検索機能、オートコンプリート、ブックマーク機能、外部連携機能、行動記録機能(実際に訪れた際の大体の時間の設定やクリックすると並んだ時間や有料または無料のパスの使用の有無等が確認できるようにしたいです。)

# 機能の実装方針予定

使用するAPIはGoogleAPIを使用しようと考えています。\
    ログイン機能では、Google Sign-In APIを使用することでGoogleアカウントで簡単にログイン・認証が可能になるのではないかと考えています。\
    Firebase Firestoreを使用することができれば、行動記録機能における時間や行動(場所)、詳細(詳細から待ち時間等が見られる)などのポストを時間順で投稿されていく形にできるのではないかと考えています。

# ER図画像リンク
   https://i.gyazo.com/7405bf2af0f8486f945cbebd7ed2ac40.png

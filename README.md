## <div>■ サービス概要</div>
<div>為替（ドル円）の予想ツール</div>
<div>過去の経済指標の結果の傾向を分析</div>
<div>リアルタイムの複数の指標結果から今後の為替の動向を予想</div>

## <div>■ このサービスへの思い・作りたい理由</div>
<div>過去FXを行い、３００万程度損失を出し退場した経歴がある。</div>
<div>その際は単一の経済指標の結果から売買を決めており、他の経済指標結果の傾向や重要度など関連性を考慮せずに行っていた。</div>
<div>そこで、それぞれの経済指標結果の関連性など分析したいと思い、サイトを探したが結果を表示しているサイトはいくつもあったが分析するサイトは見つからなかったので、自分で作ることにした。</div>
<div>作成後、FXにリベンジしたいと考えている。</div>

## <div>■ ユーザー層について</div>
<div>FX・株取引を行うすべてのユーザー。FX・株取引を行う人の一人としてこういったツールが欲しいと思ったため。</div>

## <div>■サービスの利用イメージ</div>
<div>絶対に勝てるトレード手法は存在しないが、一つの参考データとして提供できればと思う。</div>

## <div>■ ユーザーの獲得について</div>
<div>トレードのライブ配信している人にDMなど送る（FX・株業界では悪質なアフィリエイトが蔓延しているので使用してもらうのは難しいかも？）</div>

## <div>■ サービスの差別化ポイント・推しポイント</div>
<div>それぞれの経済指標の結果を表示するサイトは数多くあるが、それぞれ関連付けて為替にどう影響してくるかなどを予測するようなサイトは見かけない。</div>

## <div>■ 機能候補</div>
### <div>メイン機能</div>
<div>下記の経済指標を取得し指標発表後のドル円チャートの推移の傾向を比較して、今後の動向を予想する。</div>
<div>また、経済指標毎にユーザー各自で重要度を設定できるようにして、独自の設定をできるようにする。</div>
<div>・ドル円レート</div>
<div>・消費者物価指数</div>
<div>・FF金利</div>
<div>・GDP</div>
<div>・国債利回り</div>
<div>・失業率</div>
<div>・小売売上高</div>
<div>・鉱工業生産指数</div>

### <div>サブ機能</div>
<div>・ユーザー毎に成績や自分の設定を公表できるようにする</div>
<div>・ユーザーの成績ランキング</div>
<div>・自分も使用する予定なので自分の成績表示</div>
<div>・データのグラフかや、データのcsvで出力できるようにする</div>
<div>・経済指標から他の経済指標を予測する</div>
<div>・アラート機能：ユーザーが設定した条件に基づいて、経済指標の変化や市場の動きに関するアラートを受け取る</div>
<div>・ユーザー同士のコミニュケーションが取れる掲示板</div>
<div>・一定期間毎のトレンド予想をアンケート形式にし、現在どちらの目線の人が多いか可視化する</div>

## <div>■ 機能の実装方針予定</div>
<div>Alpha Vantage API を使用して為替レート・経済指標結果データを取得する</div>
<div>chat GPT も使用していきたい</div>

## <div>■ 技術スタック</div>
### <div>開発環境</div>
<div>Docker</div>

### <div>サーバサイド</div>
<div>Ruby on Rails 7系</div>
<div>Ruby 3.2.2 Rails 7.0.4.3</div>

### <div>フロントエンド</div>
<div>HotWire</div>

### <div>CSSフレームワーク</div>
<div>bootstrap5系</div>

### <div>WebAPI</div>
<div>Alpha Vantage API</div>

### <div>インフラ</div>
<div>Webアプリケーションサーバ: Fly.io</div>
<div>ファイルサーバ: AWS S3</div>
<div>セッションサーバ: Redis（Redis by Upstash）</div>
<div>データベースサーバ: PostgreSQL（Fly Postgres）</div>

### <div>その他</div>
<div>VCS: GitHub</div>
<div>CI/CD: GitHubActions</div>

# 画面遷移図

Figma：https://www.figma.com/file/ashYLYvN3BcOAAoW77L4zI/Untitled?type=whiteboard&node-id=0-1&t=3nXwDlamndeIOtBn-0

## READMEに記載した機能
###  ユーザー管理システム
- [x] ユーザー登録機能
- [x] ログイン機能
- [x] パスワード変更機能
- [x] メールアドレス変更機能
- [x] プロフィール画像変更機能
- [x] 分析機能の個別設定（重要度割合）機能
- [x] ユーザーフォロー機能
- [x] ユーザーフォロー解除
- [x] DM機能
### 分析システム
- [x] 経済指標の相関分析、予測
- [x] 過去データcsvファイルで出力機能
- [x] 重要度設定によるカスタマイズ分析
- [x] 経済指標データの取得、グラフ化
- [x] ユーザー成績/履歴表示

###  通知システム
- [x] アラート設定

###  コミュニケーションシステム(未ログインでも閲覧可）
- [x] いいね機能
- [x] いいね解除機能
- [x] トレンド予想のアンケート投票機能
- [x] 週or月で新しい掲示板自動作成機能

###  パフォーマンス・ランキングシステム(未ログインでも閲覧可）
- [x] ユーザー成績ランキング

## 未ログインでも閲覧または利用できるページ
- [x] コミュニケーションシステム
- [x] パフォーマンス・ランキングシステム

## メールアドレス・パスワード変更確認項目
直接変更できるものではなく、一旦メールなどを介して専用のページで変更する画面遷移になっているか？
- [x] メールアドレス
- [x] パスワード








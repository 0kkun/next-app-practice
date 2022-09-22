## 概要

reactのnextjs練習用アプリ

## 新規プロジェクトの作成方法

- nextアプリの生成

```
$ yarn create next-app --typescript
# ディレクトリ名はfrontendを指定すること。
# http://localhost:3000 を開く
```

- git管理方法メモ

frontend配下にある.gitディレクトリを削除し、git initを行う。


## アプリケーション仕様

- アクターは匿名ユーザー、購入者、出品者
- ユースケースは「商品を検索」、「商品を購入」、「商品を出品」、「出品者のプロファイルを表示」、「サインイン」
- 購入者と出品者のアカウントの違いはありません

- 基本的には API からコンテンツを取得し、静的サイト生成(SSG)を行い、配信するページをあらかじめ生成します。また必要に応じて、インクリメンタル静的再生成(ISR)によってページを定期的に更新します。

## 構成

- TypeScript を用いた型安全なアプリケーション
- ESLint/Prettier を用いた、コーディング規約準拠のコードフォーマット ▶ Storybook を使用し、コンポーネント指向で開発
- 各種ライブラリ(バリデーション等)を使用した生産性の高い開発
- ユニットテスト、結合テスト、UI テストのテスト自動化

## API

- JSON Serverを使ってAPIを用意している。
- フレームワークはexpressを使用。(コードは`/server`配下)
- 本アプリで使用しているAPI一覧は下記

| API | パス | HTTPメソッド | 説明 |
|---|---|---|---|
| 認証API | /auth/signin | POST | サインイン |
| 認証API | /auth/signout | POST | サインアウト |
| ユーザーAPI | /users | GET | 一覧取得 |
| ユーザーAPI | /users/{id} | GET | 個別取得 |
| ユーザーAPI | /users/me | GET | 認証済のユーザーを取得 |
| プロダクトAPI | /products | GET, POST | 一覧取得, 新規追加 |
| プロダクトAPI | /products/{id} | GET | 個別取得 |
| 購入API | /purchases | POST | 商品購入 |

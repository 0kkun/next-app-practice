/** @type {import('next').NextConfig} */
const nextConfig = {
  reactStrictMode: true,
  compiler: (() => {
    let compilerConfig = {
    // styledComponentsの有効化
    styledComponents: true,
    }
    if (process.env.NODE_ENV === 'production') {
      compilerConfig = {
        ...compilerConfig,
        // 本番環境ではReact Testing Libraryで使用するdata-testid属性を削除
        reactRemoveProperties: { properties: ['^data-testid$'] },
      }
    }
    return compilerConfig
  })(),
  // rewrites機能を使ってCORSでのCookie送信を避けることができる
  // 例) http://nextjsのホスト/api/proxy/signinとリクエストを送った場合に は http://json-serverのホスト/signinと変換される
  async rewrites() {
    return [
      {
        // ex. /api/proxy
        source: `${process.env.NEXT_PUBLIC_API_BASE_PATH}/:match*`,
        // ex. http://localhost:8000
        destination: `${process.env.API_BASE_URL}/:match*`,
      },
    ]
  },
}

module.exports = nextConfig

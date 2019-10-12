require "sinatra"
require "json"

# 受け取った各クエリーパラメータの文字列長を返すだけのAPI
get "/" do
  response.headers["Content-Type"] = "application/json; charset=utf-8"
  ret = {}
  params.each do |k, v|
    ret[k] = v.length
  end
  return JSON.generate(ret)
end

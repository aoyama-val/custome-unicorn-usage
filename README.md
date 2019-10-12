# URLの最大長を上げたカスタムunicornを使うアプリケーションのサンプル

## セットアップ

```
bundle install --path ./vendor
```

## unicorn起動

```
bundle exec unicorn -p 9000
```

## リクエストを投げてみる

```
curl -vsi "localhost:9000/?a=$(ruby -e 'puts "x"*33333')&b=$(ruby -e 'puts "x"*22222')"
```

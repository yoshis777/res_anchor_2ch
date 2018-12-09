# ResAnchor2ch
文字列中の全ての2chのアンカータグを解析し、リンク化します。  
Rails用です。application_helperの中に暗黙的にメソッドが追加されます。

#### 入力内容
```
>>14 >>15
このようにアンカータグを指定のパスへのリンクにします。
```
#### 実行結果
<img src="https://i.imgur.com/AdOrqDY.png" width="350px">
<img src="https://i.imgur.com/YGFrFYF.png" width="300px">

## Installation
Add this line to your application's Gemfile:Gemfileへ以下を記入してください

```ruby
gem 'res_anchor_2ch'
```

And then execute: ターミナルで以下を実行してください。
```bash
$ bundle install
```

Or install it yourself as:　あるいは以下でも可能です
```bash
$ gem install res_anchor_2ch
```
## Usage
viewの中で以下を記述すれば、リンク化されます。
```ruby
<p>
<%= replace_anchar_to_link(">>14 >>15\nこのようにアンカータグを指定のパスへのリンクにします。", "/responses/") %>
</p>

※simple_formatメソッドに通すことで、改行が適用されます。
<p>
<%= simple_format((replace_anchar_to_link(">>14 >>15\nこのようにアンカータグを指定のパスへのリンクにします。", "/responses/")) %>
</p>
```

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

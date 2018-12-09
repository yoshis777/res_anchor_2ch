require "res_anchor_2ch/engine"

module ResAnchor2ch
  module ViewHelper
    def replace_anchar_to_link(text, path_to)
      # テキストをescapeする
      escaped_text = ERB::Util.html_escape(text)
      # テキストから抽出する
      anchars = extract_2ch_anchar(escaped_text, true)

      # 抽出した分だけテキストをリンクに置換する
      if anchars.present?
        anchars.each do |anchar|
          linkto = ""
          linkto << "<a href=" << path_to << anchar[1] << " target=\"_blank\">" << anchar[0] << "</a>"
          escaped_text.gsub!(anchar[0], linkto)
        end
      end
      # HTML化する
      escaped_text.html_safe
    end

    private

    # 正規表現にマッチした文字列を指定のurlに置き換える
    # 返り値：配列
    def extract_matched_text(text, regex)
      matched_all = text.scan(regex)
      matched_all.present? ? matched_all : nil
    end

    # テキストから2chのアンカー(>>1とか)を抽出する
    # 返り値：配列([["&gt;&gt;1", "1"], ["&gt;&gt;2", "2"], ["&gt;&gt;3", "3"]])
    def extract_2ch_anchar(text, is_escaped_html)
      # 正規表現：「>>で始まり数字が続き、数字以外直前まで」（数字を抽出する）
      regex = is_escaped_html ? /(&gt;&gt;(\d+))([^\d]|$)/ : /(\>\>(\d+))[^\d]([^\d]|$)/
      extract_matched_text(text, regex)
    end
  end
end

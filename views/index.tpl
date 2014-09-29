<!DOCTYPE html>
<html>
  <head>
    <title>Beego GuestBook</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <link rel="stylesheet" href="/static/css/main.css" type="text/css" />
  </head>
  <body>
    <div id="main">
      <h1>ゲストブック</h1>
      <div id="form-area">
        <p>書き込みをどうぞ。</p>
        <form action="/post" method="post">
          <table>
            <tr>
              <th>名前</th>
              <td>
                <input type="text" size="20" name="name" />
              </td>
            </tr>
            <tr>
              <th>コメント</th>
              <td>
                <textarea rows="5" cols="40" name="comment"></textarea>
              </td>
            </tr>
          </table>
          <p><button type="submit">送信</button></p>
        </form>
      </div>
      <div id="entries-area">
        <h2>これまでの書き込み</h2>
        {{range $key, $val := .greetings}}
        <div class="entry">
          <h3>{{$val.Name}} さんの書き込み({{$val.CreateAt|dateformat}}):</h3>
          <p>{{$val.Comment|htmlquote|nl2br|str2html}}</p>
        </div>
        {{end}}
      </div>
    </div>
  </body>
</html>
iw2014_demo
===========

「ネットワーク運用自動化のためのサービス・運用設計」- Internet Week 2014 のサンプルコードです。

ファイル構成
------------

* configdb/
  * rails で作成した ネットワーク管理データベースのサンプル
  * デバイス / インターフェイス / BGP の簡易な情報を格納

* rest_client.py
  * python から、ネットワーク管理データベースに接続するサンプル
  
* add_item.py
  * python から、zabbix に監視項目を追加するためのサンプル
  * パラメーターはネットワーク管理データベースから取得する

* icinga2/
  * Icinga2 の設定を自動追加するサンプル

タグ
----

発表スライドと連動して、```git tag``` を打っています。
GitHubのWeb UI上でタグを切り替えたり、```git checkout``` することで そのスライド時点でのサンプルコードを参照できます。

* GitHubで見る
  * [tag v1.0 の例](https://github.com/codeout/iw2014_demo/tree/v1.0)
* ```git tag```
  * tag v1.0 の例

    ```shell
    git clone https://github.com/codeout/iw2014_demo.git
    cd iw2014_demo
    git checkout v1.0
    ```


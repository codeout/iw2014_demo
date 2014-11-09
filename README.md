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

|tag  |概要                               |
|-----|-----------------------------------|
|v1.0 |Device モデルの初期実装            |
|v1.1 |見た目を美しく                     |
|v1.2 |GigabitEthernet モデルを追加       |
|v1.3 |Ipv4, Ipv6 モデルを追加            |
|v1.4 |Autnum, Peer モデルを追加          |
|v1.5 |API を検索可能に                   |
|v2.0 |Zabbix に監視項目を追加するサンプル|
|v3.0 |Icinga に監視項目を追加するサンプル|
|v4.0 |Icinga にメッセージキューを持たせる|
|v5.0 |デバイスを操作するAPI を追加       |

License
-------

Copyright (c) 2014 Shintaro Kojima. Code released under the MIT license.

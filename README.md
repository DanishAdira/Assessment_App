# メロンの品質評価アプリケーション

## 全体のシステム構成図

## 実行準備

1. 網目検出モデル，メロン検出モデルのインストール

minelab-shareから次のファイルをダウンロードしてください。
```bash
"\\minelab-share\homes\Danish_Adira\Application\model\best_model.pth"
"\\minelab-share\homes\Danish_Adira\Application\model\yolo-seg.pt"
```

   ファイルを以下のように配置してください。
  
![Image](https://github.com/user-attachments/assets/eca837a3-1c48-4ca3-a595-577ae6d2d93f)

2. Dockerの環境構築
   
Dockerのイメージを作成します。

```bash
docker build -t gr_app .
```
イメージ名(gr_app)は任意

Dockerのコンテナを起動します。

- 初回
```bash
docker run -p 7860:7860 --name gr_app01 gr_app
```
- 2回目以降
```bash
docker start gr_app01 
```
コンテナ名(gr_app01)は任意

## 実行手順
Dockerコンテナを起動した状態で，実行サーバの7860ポートにアクセスするとアプリケーションを立ち上げることができます。
```bash
localhost:7860
```
もしくは
```bash
[ip address]:7860
```

## 動作確認



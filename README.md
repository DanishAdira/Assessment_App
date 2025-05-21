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
  
![Image](https://github.com/user-attachments/assets/8bff64cf-49ee-419e-9dc0-8f2a2ca01a9d)

2. Dockerの環境構築
   
Dockerのイメージを作成します。

```bash
docker build -t gr_app .
```
イメージ名(gr_app)は任意

Dockerのコンテナを起動します。

```bash
docker run -p 7860:7860 --name gr_app01 gr_app
```
コンテナ名(gr_app01)は任意



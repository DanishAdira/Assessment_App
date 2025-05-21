# メロンの品質評価アプリケーション

## 全体のシステム構成図

## 実行準備

1. 網目検出モデル，メロン検出モデルのインストール
   
- minelab-shareから次のファイルをダウンロード
```bash
"\\minelab-share\homes\Danish_Adira\Application\model\best_model.pth"
"\\minelab-share\homes\Danish_Adira\Application\model\yolo-seg.pt"
```
- ファイルを以下のように配置
- 

3. Dockerの環境構築
イメージ作成
```bash
docker build -t gr_app .
```
イメージ名(gr_app)は任意 


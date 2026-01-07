# Django Docker教材（WSL2/Windows11向け）

この教材は **Windows11 + WSL2(Ubuntu) + Docker** で、Django開発環境を再現します。  
PCにPythonを直接インストールせず、Dockerコンテナ内で開発します。

## 前提
- Windows 11
- WSL2（Ubuntu推奨）
- Docker Desktop（WSL Integration を Ubuntu にON）

確認（WSL内で実行）：
```bash
docker --version
docker compose version

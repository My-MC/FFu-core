# FFu-core

このソフトウェアはFFu(本体はまだ開発中です)のcoreソフトフェアです。

## About

このソフトウェアはPythonと、そのライブラリのFastAPI、Uvicornを使ったAPIサーバーです。

## Build

ビルドしてexe化するには以下のコマンドを実行します。(結構時間がかかります)

``` bash
python -m nuitka --standalone run.py
```

## Black

``` bash
black .
```

## isort

``` bash
isort .
```

## Docker

``` bash
docker build --progress=plain -t all-conversion-core .
docker create --name all-conversion-core -it -p 127.0.0.1:5050:5050 all-conversion-core
docker start all-conversion-core
docker exec -it all-conversion-core bash
```

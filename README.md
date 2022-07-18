# FFu-core

このソフトウェアは[FFu](https://github.com/My-MC/FFu)のcoreソフトフェアです。

## About

このソフトウェアはPythonと、そのライブラリのFastAPI、Uvicornを使ったAPIサーバーです。

## Developing

### Build

ビルドしてexe化するには以下のコマンドを実行します。(結構時間がかかります)

``` bash
python -m nuitka --standalone --no-prefer-source-code run.py
```

### Black

``` bash
black .
```

### isort

``` bash
isort .
```

### Docker

``` bash
docker build --progress=plain -t ffu-core .
docker create --name ffu-core -it -p 127.0.0.1:5050:5050 ffu-core
docker start ffu-core
docker exec -it ffu-core bash
```

## LICENCE

このソフトウェアのライセンスはMITライセンスです

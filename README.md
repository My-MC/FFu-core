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
docker build --progress=plain -t ffu-core .
docker create --name ffu-core -it -p 127.0.0.1:5050:5050 ffu-core
docker start ffu-core
docker exec -it ffu-core bash
```

## LICENCE

このソフトウェアのライセンスはMITライセンスです。またこのソフトウェアで使われているソフトウェアおよび、パッケージのライセンスは以下の通りです。

Copyright © 2001-2020 Python Software Foundation; All Rights Reserved
This software uses libraries from the FFmpeg project under the LGPLv2.1

Name|Version|License|Author|URL|
:-:|-|-|-|-|
Nuitka|0.7.7|Apache Software License|Kay Hayen|<https://nuitka.net>|
PySocks|1.7.1|BSD|Anorov|<https://github.com/Anorov/PySocks>|
Pygments|2.11.2|BSD License|Georg Brandl|<https://pygments.org/>|
anyio|3.5.0|MIT License|Alex Grönholm|UNKNOWN|
asgiref|3.5.0|BSD License|Django Software Foundation|<https://github.com/django/asgiref/>|
black|22.3.0|MIT License|Łukasz Langa|<https://github.com/psf/black>|
certifi|2021.10.8|Mozilla Public License 2.0 (MPL 2.0)|Kenneth Reitz|<https://certifiio.readthedocs.io/en/latest/>|
charset-normalizer|2.0.12|MIT License|Ahmed TAHRI @Ousret|<https://github.com/ousret/charset_normalizer>|
click|8.1.2|BSD License|Armin Ronacher|<https://palletsprojects.com/p/click/>|
colorama|0.4.4|BSD License|Jonathan Hartley|<https://github.com/tartley/colorama>|
defusedxml|0.7.1|Python Software Foundation License|Christian Heimes|<https://github.com/tiran/defusedxml>|
fastapi|0.75.1|MIT License|Sebastián Ramírez|<https://github.com/tiangolo/fastapi>|
ffmpegwithpy|0.1.0|MIT license|My|<https://github.com/My-MC/ffmpegwithpy>|
h11|0.13.0|MIT License|Nathaniel J. Smith|<https://github.com/python-hyper/h11>|
httpie|3.1.0|BSD License|Jakub Roztocil|<https://httpie.io/>|
idna|3.3|BSD License|Kim Davies|<https://github.com/kjd/idna>|
isort|5.10.1|MIT License|Timothy Crosley|<https://pycqa.github.io/isort/>|
multidict|6.0.2|Apache Software License|Andrew Svetlov|<https://github.com/aio-libs/multidict>|
mypy-extensions|0.4.3|MIT License|The mypy developers|<https://github.com/python/mypy_extensions>|
pathspec|0.9.0|Mozilla Public License 2.0 (MPL 2.0)|Caleb P. Burns|<https://github.com/cpburnz/python-path-specification>|
platformdirs|2.5.1|MIT License|UNKNOWN|<https://github.com/platformdirs/platformdirs>|
pydantic|1.9.0|MIT License|Samuel Colvin|<https://github.com/samuelcolvin/pydantic>|
requests|2.27.1|Apache Software License|Kenneth Reitz|<https://requests.readthedocs.io>|
requests-toolbelt|0.9.1|Apache Software License|Ian Cordasco, Cory Benfield|<https://toolbelt.readthedocs.org>|
sniffio|1.2.0|Apache Software License; MIT License|Nathaniel J. Smith|<https://github.com/python-trio/sniffio>|
starlette|0.17.1|BSD License|Tom Christie|<https://github.com/encode/starlette>|
tomli|2.0.1|MIT License|UNKNOWN|UNKNOWN
typing-extensions|4.1.1|Python Software Foundation License|UNKNOWN|UNKNOWN
urllib3|1.26.9|MIT License|Andrey Petrov|<https://urllib3.readthedocs.io/>
uvicorn|0.17.6|BSD License|Tom Christie|<https://www.uvicorn.org/>

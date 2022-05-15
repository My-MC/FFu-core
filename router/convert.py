import os
import shutil
import urllib.parse
from glob import glob
from typing import Optional

from fastapi import APIRouter
from ffmpegwithpy import ffmpeg, get
from pydantic import BaseModel

router = APIRouter(prefix="/convert", tags=["convert"])


class ConvertModel(BaseModel):
    dir: str
    format: str


@router.post("/confile")
async def convert_file(model: ConvertModel):
    unqdir = urllib.parse.unquote(model.dir)
    copyname = unqdir.replace(" ", "_")

    if unqdir != copyname:
        shutil.copy(unqdir, copyname)
        afilename = get(unqdir, model.format).getfilename()
        confilename = get(copyname, model.format).getfilename()
        ffmpeg(copyname, model.format).ffmpeg()
        os.rename(confilename, afilename)
        os.remove(copyname)

    else:
        ffmpeg(unqdir, model.format).ffmpeg()
        afilename = get(unqdir, model.format).getfilename()

    return {"Model": model, "dir": unqdir, "format": model.format, "afterfilename": afilename}


@router.post("/condir")
async def convert_dir(model: ConvertModel):
    if os.name == "nt":
        unqdir = urllib.parse.unquote(model.dir) + "\\*"
    if os.name == "posix":
        unqdir = urllib.parse.unquote(model.dir) + "/*"
    files = glob(unqdir)
    for file in files:
        copyname = file.replace(" ", "_")
        if file != copyname:
            print(copyname)
            shutil.copy(file, copyname)
            afilename = get(file, model.format).getfilename()
            confilename = get(copyname, model.format).getfilename()
            ffmpeg(copyname, model.format).ffmpeg()
            os.rename(confilename, afilename)
            os.remove(copyname)

        else:
            ffmpeg(file, model.format).ffmpeg()

    return {"Model": model, "filedir": unqdir}

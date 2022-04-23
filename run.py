import uvicorn
from fastapi import FastAPI

from router import convert

app = FastAPI()
app.include_router(convert.router)


@app.get("/")
def index():
    return {"message": f"This is conversion core"}


if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=5050)

import uvicorn
from fastapi import FastAPI
from starlette.middleware.cors import CORSMiddleware

from router import convert

app = FastAPI()
app.include_router(convert.router)

app.add_middleware(
    CORSMiddleware, allow_origins=["*"], allow_credentials=True, allow_methods=["*"], allow_headers=["*"]
)


@app.get("/")
def index():
    return {"message": f"This is conversion core"}


if __name__ == "__main__":
    uvicorn.run(app, host="127.0.0.1", port=5050)

import uvicorn

from run import app

if __name__ == "__main__":
    uvicorn.run("debug:app", port=5050, reload=True, log_level="debug")

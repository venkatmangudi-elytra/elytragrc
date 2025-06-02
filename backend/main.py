from fastapi import FastAPI
from api.routes import controls

app = FastAPI()
app.include_router(controls.router)

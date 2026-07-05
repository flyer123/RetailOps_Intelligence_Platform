import os

SQLALCHEMY_DATABASE_URI = os.getenv(
    "SQLALCHEMY_DATABASE_URI",
    "sqlite:////app/superset_home/superset.db"
)

SECRET_KEY = os.getenv("SUPERSET_SECRET_KEY", "supersecret")
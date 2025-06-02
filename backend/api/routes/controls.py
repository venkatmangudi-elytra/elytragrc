from fastapi import APIRouter

router = APIRouter(prefix="/controls", tags=["controls"])

@router.get("/")
def get_controls():
    return [{"id": 1, "section": "2.1", "status": "Pending"}]

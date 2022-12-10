from main import app

# passed
def test_empty_db():
    with app.test_client() as test_client:
        response = test_client.get('/')
        assert response.status_code == 200

# failed
def test_create_record():
    with app.test_client() as test_client:
        response = test_client.put('/', data={
            "name": "Bob",
            "email": "Bob_email",
            "role": "Bob_role",
            "unique_facial_id": "Bob_unique_facial_id",
        })
        assert response.status_code == 200


test_empty_db()
test_create_record()
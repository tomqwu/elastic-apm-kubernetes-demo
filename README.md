Test API

```
# 404
curl http://localhost:8080/api/v1/users/1

# post user
curl -d '{"name":"Cosmin Seceleanu","email":"test@email.com"}' -X POST http://localhost:8080/api/v1/users -H "Content-Type: application/json"
```
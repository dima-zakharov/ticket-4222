

export TOKEN="$(uv --project ~/prj/ibm-mcp-context-forge  run python -m mcpgateway.utils.create_jwt_token --username admin@example.com --exp 10080 --secret my-test-key-but-now-longer-than-32-bytes --admin --full-name "Admin User"  )"

export PORT="${PORT:-8080}"
export URL="http://localhost:${PORT}"
SSRF_PROTECTION_ENABLED=false

HEADERS=(
    -H "Authorization: Bearer $TOKEN"
    -H "Content-Type: application/json; charset=utf-8"
    -H "Accept: application/json, application/x-ndjson, text/event-stream"
)



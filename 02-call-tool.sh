source 00-init.sh

TOOL_URL="http://9.85.218.28:8080/servers/b8e3f1a2c4d5e6f7a1b2c3d4e5f6a7b8/mcp"

# mcp-inspector 

npx @modelcontextprotocol/inspector \
   --cli  $TOOL_URL \
   --method tools/call \
   --tool-name fast-test-echo \
   --tool-arg message='DROP table asdf' \
   --header "Authorization: Bearer $TOKEN" 
  
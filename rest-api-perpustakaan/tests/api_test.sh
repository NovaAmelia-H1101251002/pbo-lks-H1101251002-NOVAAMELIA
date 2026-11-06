#!/bin/bash
# Skrip uji REST API menggunakan cURL & Python JSON Formatter

BASE="http://localhost:8000/api/books"

echo "== Test 1: GET semua buku =="
curl -s $BASE | python -m json.tool

echo -e "\n== Test 2: POST buku baru =="
RESPONSE=$(curl -s -X POST $BASE \
  -H "Content-Type: application/json" \
  -d '{"judul":"Bumi","penulis":"Tere Liye","tahun":2014,"stok":2}')
echo "$RESPONSE" | python -m json.tool

NEW_ID=$(echo "$RESPONSE" | python -c "import sys, json; print(json.load(sys.stdin)['data']['id'])" 2>/dev/null)
echo "ID baru: $NEW_ID"

echo -e "\n== Test 3: GET buku ID $NEW_ID =="
curl -s $BASE/$NEW_ID | python -m json.tool

echo -e "\n== Test 4: PUT ubah buku =="
curl -s -X PUT $BASE/$NEW_ID \
  -H "Content-Type: application/json" \
  -d '{"judul":"Bumi (Revisi)","penulis":"Tere Liye","tahun":2015,"stok":3}' | python -m json.tool

echo -e "\n== Test 5: DELETE buku =="
curl -s -X DELETE $BASE/$NEW_ID | python -m json.tool

echo -e "\n== Test 6: Validasi error =="
curl -s -X POST $BASE \
  -H "Content-Type: application/json" \
  -d '{"judul":""}' | python -m json.tool
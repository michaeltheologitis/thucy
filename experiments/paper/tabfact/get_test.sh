wget https://raw.githubusercontent.com/wenhuchen/Table-Fact-Checking/master/tokenized_data/test_examples.json
wget https://raw.githubusercontent.com/wenhuchen/Table-Fact-Checking/master/data/test_id.json

wget https://raw.githubusercontent.com/wenhuchen/Table-Fact-Checking/master/data/small_test_id.json

# then use Python to fetch only those files
python3 - <<'EOF'
import json, os
base_url = "https://raw.githubusercontent.com/wenhuchen/Table-Fact-Checking/master/data/all_csv/"
os.makedirs("data/all_csv", exist_ok=True)
ids = json.load(open("test_id.json"))
for f in ids:
    url = base_url + f
    os.system(f"wget -q {url} -O data/all_csv/{f}")
EOF

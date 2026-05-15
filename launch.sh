python -m json.tool overrides.json

rm -rf _output

jupyter lite build \

  --lite-dir . \

  --contents python.ipynb \

  --output-dir _output \

  --settings-overrides overrides.json

grep -R "menuVisible" _output | head

python -m http.server 8000 -d _output

find epidemic -maxdepth 1 -type f -iname "*.csv" -print0 | while IFS= read -r -d '' f; do
  # process file
  tmp=${f//\//\.} 
  tmp2=${tmp/.csv/}
  echo $tmp2
done
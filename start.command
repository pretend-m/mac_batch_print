cd `dirname $0`
filename=$(osascript choose_file.scpt)
echo '======文件列表======'
echo $filename
echo '======提交打印队列======'
echo "$filename" | while IFS= read -r file; do
  if [ -n "$file" ]; then
    lp "$file"
  fi
done
echo '======打印队列已就绪======='
lpstat -o
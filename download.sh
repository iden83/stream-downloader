mkdir -v -p `date +"%Y_%m_%d"`
curl -L -m 3600 ${STREAM_LINK} -o `date +"%Y_%m_%d"`/${FILE_PREFIX}`date +"%Y_%m_%dT%H_%M"`.mp3

echo "Files (and directories) subject to removal:"
find . -name '*.mp3' -mtime +${FILE_REMOVAL_MTIME} -exec rm -v {} \;
find . -type d -empty -name '????_??_??' -exec rmdir -v {} \;


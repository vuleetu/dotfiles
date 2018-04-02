#提取壁纸图片URL
url=$(expr "$(curl http://cn.bing.com/?mkt=zh-CN |grep g_img)" : ".*g_img={url: \"\(.*\)\",id.*")
#去除url中的斜杠“\”
url="http://cn.bing.com${url//\\/}"
#提取图片名称
filename=$(expr "$url" : ".*/\(.*\)")
#本地图片地址-当前用户下缺省图片目录
localpath="/Users/fisher/Pictures/WallPaper/$filename"
#下载图片至本地
curl -o $localpath  $url
#调用Finder应用切换桌面壁纸
osascript -e "tell application \"Finder\" to set desktop picture to POSIX file \"$localpath\""

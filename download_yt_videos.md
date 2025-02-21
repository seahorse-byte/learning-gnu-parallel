# Downloading videos from youtube with yt-dlp + parallel

```bash
brew install yt-dlp  
```

```bash
url='youtu.be/watch?v=0wOf2Fgi3DE&list=UU_cznB5YZZmvAmeq7Y3EriQ'
export url
yt-dlp --flat-playlist "https://$url" |
  parallel --tagstring {#} --lb -j10 \
    yt-dlp --playlist-start {#} --playlist-end {#} '"https://$url"'
    
    # add --eta --progress and maybe wrap it with time command
```

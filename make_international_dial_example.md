# An example wit a more complex case

```bash
dial=(
  "DK(Denmark) 00,45"
  "US(United States) 011,1"
  "JP(Japan) 010,81"
  "AU(Australia) 0011,61"
  "CA(Canada) 011,1"
  "RU(Russia) 810,7"
  "TH(Thailand) 001,66"
  "TW(Taiwan) 002,886"
)
parallel --match '(.*)\((.*)\) (.*),(.*)' --match +1 \
  echo From {1.1}/{1.2} to {2.1}/{2.2} dial {1.3}-{2.4} \
  ::: "${dial[@]}" ::: "${dial[@]}"
  
  # add time command and --jobs and --progress
  ```
  
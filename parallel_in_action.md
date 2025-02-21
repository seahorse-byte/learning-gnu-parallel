
# A few starters

```bash
for i in $(seq 1 10); do
  echo $i
done

# 1 thread/core - sequence
```

```bash
#versus
parallel --jobs 10 --eta echo ::: $(seq 10) # 10 jobs ->10 cores
```

```bash
parallel --eta echo ::: {1..10} ::: {a..e}
```

```bash
 parallel echo ::: me you them
 ```

```bash
parallel --bar sleep {}';' echo done {} ::: 5 4 3 2 1
```

```bash
parallel touch {}_file.txt ::: {d..f}
```

```bash
parallel touch my_{}_file.txt ::: {d...f}
```

```bash
parallel echo counting lines';' wc -l ::: file9.txt
```

```bash
parallel  'echo "It also has : $(openssl rand -hex 32)" >> file{}.txt' ::: {1..10}
```

# Creating many targets on Probely

```bash
#with curl in custom script
parallel ./createTarget.sh ::: $(seq 2)

#with my probely cli
parallel probely_create_target.sh ::: $seq(2)
```
# Deleting multiple targets on Probely

```bash
parallel probely target delete {} ::: 4EpepE322ZTV


parallel probely target delete {} ::: 33cHePrekJa 48YZHBdDkRtDp

# these ids can be in a file listed like:
33cHePrekJa 
48YZHBdDkRtDp

echo 48YZHBdDkRtDp > targets_list.txt    
echo 48YZHBdDkRtDp > targets_list.txt   

# wait a sec.... we can still use parallel - everything parallel
parallel --jobs 4 'echo {} >> targets_list.txt' ::: "ds" "you" "me" 

# after this let say this file comes to you externally, we can do 
cat targets_list.txt | parallel probely target delete {} # wow nice

# whoa pipe operator? where did that come from
ls -l | grep "Feb 21" | wc -l
pwd | xargs echo "OK I am in:"
date | xargs echo >> date.txt
cat targets_list.txt | tr ' ' '\n' | sort | uniq -c | sort -nr | head -n 3 # explain all
```

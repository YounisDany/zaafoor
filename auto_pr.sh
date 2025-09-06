#!/bin/bash

for i in {1..5}  # عدد الفروع اللي تبغى تسويها (غير الرقم حسب رغبتك)
do
  branch="auto-branch-$i"
  git checkout -b $branch

  echo "Change number $i" >> README.md
  git add README.md
  git commit -m "Auto commit $i"
  git push origin $branch

  git checkout main
done

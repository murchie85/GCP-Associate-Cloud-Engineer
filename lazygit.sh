read -p "Commit Description: " desc  
git add . && \
git add -u && \
git commit -m "$desc" && \
git push origin master
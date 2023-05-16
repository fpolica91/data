#!/bin/bash

#find the number of times each team has won.
#cat scores and pipe to split on comma take second column and sort and pipe to uniq -c, tail -n +2 to remove header
cat soccer_scores.csv | cut -d "," -f 2 | tail -n +2 |  sort | uniq -c

# replace Cherno with Cherno City and Arda with Arda United and pipe to new file called soccer_scores_edited.csv
cat soccer_scores.csv | sed 's/Cherno/Cherno City/g' | sed 's/Arda/Arda United/g' >> soccer_scores_edited.csv


#docker run -d --name=insta-proxy-server \
# -e ENABLE_LOG=true \
# -e INSTAGRAM_USERNAME="_fabricio92" \
# -e INSTAGRAM_PASSWORD="Gepo1992?" \
# -e PORT=8080 \
# -p 8080:8080 \
#dockerer123456/insta-proxy-server:2.0.0
# Minecraft Server Automation and Administration tools. 


## Inspired by this Medium piece: 

https://medium.com/exampro/2018-modded-minecraft-server-on-aws-part-1-run-a-modded-minecraft-server-on-aws-ec2-instance-b37290462d8d


I've been playing minecraft since I was 14. I started following it around infdev and I have been checking in on it since.

In high school, I hosted my own minecraft sever on a base model mid-2010 unibody macbook. It was an absolute mess. 

This is my quarterlife crisis, where I leverage my rudimentary knowledge of devops and software engineering to create a powerful, inexpensive, fault-tolerant minecraft server. 


Current features: 

1. Bootstraps a minecraft server from a fresh instance and create a background process that runs the server. 

2. Saves world and state backups to S3 regularly.

3. Uses a naked domain like website.example name instead of an IP or www.website.example

4. Uses spot pricing to reduce server costs. 

5. Has alerts for when the server is unhealthy, down or too expensive. 

See the associated github projects page for my current indev features. 


import os
from datetime import datetime, timedelta

current_time = now.strftime("%Y-%m-%d %H:%M:%S") - timedelta(days = 1)

# 2020-05-11 01:00:00


# def write_time_file():
#     f = open("last_run.txt", "w")
#     f.write(current_time)
#     f.close()





stream = os.popen('journalctl --output=cat --since="' + current_time + '" -a -u  minecraft')
output = stream.read().splitlines()


print(output)

'''
statuses I care about: 

 lost connection
 logged in with entity id 

 '''
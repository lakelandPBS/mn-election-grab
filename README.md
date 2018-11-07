This script is used to save the output of a URL (using `curl`) as an HTML document named using the array key (i.e arrayKey.html). In its current state, it grabs specific pages from the MN Secretary of State's election results pages. However, it could be used with any site.

# Why?
Because when you're an hour from leaving for the day and antequated software is being used that cannot read web pages that use SSL/TLS, you need to find a workaround.

# Simple use
Put the script somewhere on a web server, set the variables in the script to your needs, setup a cron every minute or so, hope you don't get flagged as a bot.

## Example cron command

    /bin/bash /home/username/public_html/my_directory/grab.sh

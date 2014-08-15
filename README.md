timesheets
==========

Uses [Cucumber](http://cukes.info/) to fill out Oracle Timesheets so we can get on with the fun stuff.

To set this up as a cron job, edit regular.sh and change it to use your PEROOT password, chmod 600 regular.sh, crontob -e, 0 10 * * 4 ~/timesheets/regular.sh, save with esc wq enter

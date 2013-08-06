# sparknize

Visualize your CSV(or TSV) data in seconds.

### Usage

Suppose you'd like to show the sparkline entitled "Sales Amount Report" which is 600px height, here is a command for you:

    echo -e "date,sales_amount\n2013/06/12,4" | /bin/bash src/sparknize.sh Sales_Amount_Report 600

which means sparknize.sh accepts 2 parameters, graph title and graph height.

You can find more examples on [this presentation](http://www.slideshare.net/keiswd/sparknize-visualize-csv-data-with-sparkline-in-seconds).

### Note

- Currently supported datetime format is "Y/m/d" or "Y/m/d H:i:s"(e.g. "2000/01/01" or "2000/01/01 01:23:45"). Use this format because [this seems international format](http://stackoverflow.com/a/15380132/2340792).
- For example, "Y-m-d H:i:s" format may work in Chrome but may not in Firefox.

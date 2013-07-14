# sparknize

Visualize your CSV data in seconds.

# Usage

Suppose you'd like to show the sparkline entitled "Sales Amount Report" which is 600px height, here is a command for you:

    echo -e "date,sales_amount\n2013-06-12,4" | /bin/bash src/sparknize.sh Sales_Amount_Report 600

which means, sparknize.sh accepts 2 parameters, graph title and graph height.

# ToDos

- Currently date format must be "YYYY-MM-DD". Need to support "YYYY/MM/DD" for example.


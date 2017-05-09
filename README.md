## Work summary

- [Course metrics dashboard](https://github.com/jleong-openedx/CTLT/tree/master/metric):
  - Develop metrics and visualizations to present and compare
    - course structure,
    - enrollment and retention,
    - students’ engagement and learning patterns etc. for edX instructors and administrators
  - Streamline and automate the process of data import, data munging and visualization in creating dashboards for various courses

- Setup:

1. You need a Google account with Editor access to a BigQuery project. The owner of the account must generate a service account: https://developers.google.com/identity/protocols/OAuth2ServiceAccount.

2. Install Anaconda (tested with https://repo.continuum.io/archive/Anaconda2-4.1.1-Linux-x86_64.sh). You will also need Python 2.7 (tested with Python 2.7.12) and Plotly 2.0.0.

3. Sign into the/a Google account with Editor access to the BigQuery project. The credentials file should be automatically downloaded (bigquery_credentials.dat).

Alternatively, you can avoid signing in by instead using Application Default Credentials:

https://developers.google.com/identity/protocols/application-default-credentials

"Go to the API Console Credentials page.
From the project drop-down, select your project.
On the Credentials page, select the Create credentials drop-down, then select Service account key.
From the Service account drop-down, select an existing service account or create a new one.
For Key type, select the JSON key option, then select Create. The file automatically downloads to your computer.
Put the *.json file you just downloaded in a directory of your choosing. This directory must be private (you can't let anyone get access to this), but accessible to your web server code.
Set the environment variable GOOGLE_APPLICATION_CREDENTIALS to the path of the JSON file downloaded."

4. With the credentials in place, set automated dashboards generation:

25 10 * * * /bin/bash /home/yourdirectory/CTLT_MOOC_analysis/metric/generate.sh

The .html files will be generated in /home/yourdirectory/CTLT_MOOC_analysis/metric/; one .html file will be generated per course specified in generate.sh.

Two other pages will also be generated: multi_courses_all.html and multi_courses_current.html. These are dashboards representing all courses, and those currently running, respectively. Course lists for these dashboards are specified in multi_courses_all.ipynb and multi_courses_current.ipynb.
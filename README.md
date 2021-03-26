# Introduction
This repo contains scripts to download the pdf reports from Bursa Malaysia's [website](https://www.bursamalaysia.com/) and convert them to csv.

# Usage

## Structured Warrants - Monthly Report

1. Open this repo in a container defined by [Dockerfile](./Dockerfile)

2. Download [tabula-java](https://github.com/tabulapdf/tabula-java/releases):
    ```bash
    RELEASE_URL='https://github.com/tabulapdf/tabula-java/releases/download/v1.0.4/tabula-1.0.4-jar-with-dependencies.jar'
    bash scripts/01_download_tabula.sh $RELEASE_URL
    ```

3. Get the url of the monthly structured warrants report from [here](https://www.bursamalaysia.com/market_information/market_statistic/securities). 

4. Convert the pdf into csv:
    ```bash
    REPORT_URL='https://www.bursamalaysia.com/misc/missftp/securities/securities_equities_call_warrants_2021-02-28-19-00-03.pdf'
    OUTFILE='2021-02_bm_monthly_sw.csv'
    bash scripts/02_convert_monthly_sw_report.sh $REPORT_URL $OUTFILE
    ```
5. Results can be found in the [data](./data) folder.
# Get largest fare revenue by transit authority in 2019

## Requirements
- [`xsv`](https://github.com/BurntSushi/xsv)
    - We need to fix most CSVs to be compatable with standard AWK.
    - We convert it to a TSV to more easily parse
- [`ssconvert`](https://www.systutorials.com/docs/linux/man/1-ssconvert/)
    - Or just some tool (such as google docs) to convert XLSX to CSV

## To Run
- download [2019 Revenue Sources](https://www.transit.dot.gov/ntd/data-product/2019-annual-database-revenue-sources)
- convert to CSV
    - with `ssconvert` this is `ssconvert [INPUT] [OUTPUT]`
- rename to `revenue.csv`
- convert to TSV
    - In make this is `make to-tsv`
    - With `xsv` directly, this is `xsv fmt -t \t [INPUT]`
- run `make get-total`

**Note**: The `rev.tsv` file has been made available for thos unable to install the required tooling. You can jump right to the awk step with it.

## Sample Output
```
4607974781      MTA New York City Transit
979873625       New Jersey Transit Corporation
768917681       MTA Long Island Rail Road
757532731       Metro-North Commuter Railroad Company, dba: MTA Metro-North Railroad
671521399       Massachusetts Bay Transportation Authority
666310293       Washington Metropolitan Area Transit Authority
588741390       Chicago Transit Authority
482643999       San Francisco Bay Area Rapid Transit District
462296681       Southeastern Pennsylvania Transportation Authority
365935097       Northeast Illinois Regional Commuter Railroad Corporation
```

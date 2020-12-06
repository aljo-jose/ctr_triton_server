#!/bin/bash
--dcn
perf_client -m dcn --input-data data_64.json --shape INPUT0__0:64,39 -v -v -f dcn/perf_64.csv
perf_client -m dcn --input-data data_128.json --shape INPUT0__0:128,39 -v -v -f dcn/perf_128.csv
perf_client -m dcn --input-data data_256.json --shape INPUT0__0:256,39 -v -v -f dcn/perf_256.csv
perf_client -m dcn --input-data data_512.json --shape INPUT0__0:512,39 -v -v -f dcn/perf_512.csv
perf_client -m dcn --input-data data_1024.json --shape INPUT0__0:1024,39 -v -v -f dcn/perf_1024.csv
perf_client -m dcn --input-data data_2048.json --shape INPUT0__0:2048,39 -v -v -f dcn/perf_2048.csv
perf_client -m dcn --input-data data_4096.json --shape INPUT0__0:4096,39 -v -v -f dcn/perf_4096.csv

-- server
perf_client -m dcn --input-data data_64.json --shape INPUT0__0:64,39 -v -v -f dcn/perf_64.csv -u 54.227.122.38:8000 
perf_client -m dcn --input-data data_128.json --shape INPUT0__0:128,39 -v -v -f dcn/perf_128.csv -u 54.227.122.38:8000
perf_client -m dcn --input-data data_256.json --shape INPUT0__0:256,39 -v -v -f dcn/perf_256.csv -u 54.227.122.38:8000
perf_client -m dcn --input-data data_512.json --shape INPUT0__0:512,39 -v -v -f dcn/perf_512.csv -u 54.227.122.38:8000
perf_client -m dcn --input-data data_1024.json --shape INPUT0__0:1024,39 -v -v -f dcn/perf_1024.csv -u 54.227.122.38:8000
perf_client -m dcn --input-data data_2048.json --shape INPUT0__0:2048,39 -v -v -f dcn/perf_2048.csv -u 54.227.122.38:8000
perf_client -m dcn --input-data data_4096.json --shape INPUT0__0:4096,39 -v -v -f dcn/perf_4096.csv -u 54.227.122.38:8000


perf_client -m dcn --input-data data_64.json --shape INPUT0__0:64,39 -v -v -f conc/perf_64.csv --concurrency-range 5:25:5 -u 54.227.122.38:8000 
perf_client -m dcn --input-data data_128.json --shape INPUT0__0:128,39 -v -v -f conc/perf_128.csv -u 54.227.122.38:8000 --concurrency-range 5:25:5
perf_client -m dcn --input-data data_256.json --shape INPUT0__0:256,39 -v -v -f conc/perf_256.csv -u 54.227.122.38:8000 --concurrency-range 5:25:5
perf_client -m dcn --input-data data_512.json --shape INPUT0__0:512,39 -v -v -f conc/perf_512.csv -u 54.227.122.38:8000 --concurrency-range 5:25:5
perf_client -m dcn --input-data data_1024.json --shape INPUT0__0:1024,39 -v -v -f conc/perf_1024.csv -u 54.227.122.38:8000 --concurrency-range 5:25:5
perf_client -m dcn --input-data data_2048.json --shape INPUT0__0:2048,39 -v -v -f conc/perf_2048.csv -u 54.227.122.38:8000 --concurrency-range 5:25:5
perf_client -m dcn --input-data data_4096.json --shape INPUT0__0:4096,39 -v -v -f conc/perf_4096.csv -u 54.227.122.38:8000 --concurrency-range 5:25:5


perf_client -m dcn --input-data data_4096.json --shape INPUT0__0:4096,39 -v -v -f conc/perf_4096.csv -u 54.227.122.38:8000  --concurrency-range 5:25:5
perf_client -m dcn --input-data data_64.json --shape INPUT0__0:64,39 -v -v -f test.csv --concurrency-range 1:5 -u 54.227.122.38:8000 


perf_client -m dcn --input-data data_4096.json --shape INPUT0__0:64,39 -v -v -f test.csv -u 54.227.122.38:8000 --concurrency-range 1:5

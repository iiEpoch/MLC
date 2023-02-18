#!/bin/bash
mkdir ./report

./mlc --peak_injection_bandwidth | tee ./report/mlc_peak_injection_bandwidth.txt &

./mlc | tee ./report/mlc.txt &

./mlc --bandwidth_matrix -W5 | tee ./report/mlc_bandwidth_matrix.txt &

./mlc --loaded_latency -W5 | tee ./report/mlc_loaded_latency.txt &

./mlc --idle_latency –c0 –J/mnt/pmem0 | tee ./report/mlc_idle_latency_pmem.txt 
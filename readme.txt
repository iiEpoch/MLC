下载地址：https://www.intel.com/content/www/us/en/download/736633/intel-memory-latency-checker-intel-mlc.html
使用tar命令解压
 进入解压后的文件夹
cd Linux


./mlc --peak_injection_bandwidth

./mlc

./mlc --bandwidth_matrix -W5

./mlc --loaded_latency -W5



输出在不同读写速率下本地内存访问的尖峰内存带宽


mlc --bandwidth_matrix -e

mlc --bandwidth_matrix -W5

-W5 表示压测流量的读写比列为1:1
其中：-W
2  - 2:1 read-write ratio
3  - 3:1 read-write ratio
4  - 3:2 read-write ratio
5  - 1:1 read-write ratio
12 - 4:1 read-Write ratio



内存延迟: 表示系统进入数据存取操作就绪状态前等待内存响应的时间

使用命令 mlc --latency_matrix  测量处理器与内存之间、跨处理器的内存之间的内存延迟

使用命令mlc --c2c_latency 测量处理器 L2 缓存之间、跨处理器 L2 缓存之间的访问延迟

使用命令mlc --loaded_latency -W5压测随着负载变化，其内存吞吐量、访问延迟的变化情况


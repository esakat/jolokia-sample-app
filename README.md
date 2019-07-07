# jolokia-sample-app

jolokiaの動作確認用


```bash
$ kubectl apply -f k8s-manifest/

$ kubectl -n kube-system logs metricbeat-c8snn -f | grep jvm
{"@timestamp":"2019-07-07T07:50:27.287Z","@metadata":{"beat":"metricbeat","type":"_doc","version":"7.2.0"},"system":{"process":{"state":"sleeping","cmdline":"java -javaagent:jolokia-jvm-1.6.2-agent.jar=port=7777,host=0.0.0.0 -jar jolokia-sample-a
pp-1.0-SNAPSHOT.jar","fd":{"open":23,"limit":{"hard":1048576,"soft":1048576}},"cgroup":{"cpu":{"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09c
eeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","cfs":{"period":{"us":100000},"quota":{"us":100000},"shares":512},"rt":{"period":{"us":0},"runtime":{"us":0}},"stats":{"periods":101,"throttled":{"ns":41474570,"periods":1}}},"cpuacct":{"tota
l":{"ns":235522509},"stats":{"system":{"ns":30000000},"user":{"ns":190000000}},"percpu":{"1":107474091,"2":128048418},"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-4
2010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7"},"memory":{"mem":{"failures":0,"limit":{"bytes":524288000},"usage":{"bytes":18362368,"max":{"bytes":18558976}}},"memsw":{"failures":0,"limit":{"bytes":0},"usage":{"byte
s":0,"max":{"bytes":0}}},"kmem":{"failures":0,"limit":{"bytes":9223372036854771712},"usage":{"bytes":1511424,"max":{"bytes":1527808}}},"kmem_tcp":{"usage":{"bytes":0,"max":{"bytes":0}},"failures":0,"limit":{"bytes":9223372036854771712}},"stats":{
"cache":{"bytes":0},"inactive_anon":{"bytes":0},"major_page_faults":0,"mapped_file":{"bytes":0},"active_anon":{"bytes":16818176},"hierarchical_memory_limit":{"bytes":524288000},"swap":{"bytes":0},"rss_huge":{"bytes":0},"pages_in":4521,"hierarchic
al_memsw_limit":{"bytes":0},"inactive_file":{"bytes":32768},"pages_out":407,"unevictable":{"bytes":0},"rss":{"bytes":16740352},"page_faults":5148,"active_file":{"bytes":0}},"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","
path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7"},"blkio":{"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/pod
dbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","total":{"bytes":0,"ios":0}},"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a0
8b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7"},"memory":{"share":17162240,"size":4520407040,"rss":{"pct":0.0042,"bytes":33021952}},"cpu":{"total":{"norm":{"pct":0.0105},"value":220,"pct":0.021},"start
_time":"2019-07-07T07:50:16.000Z"}}},"process":{"ppid":28687,"pgid":28706,"working_directory":"/opt/app","executable":"/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java","args":["java","-javaagent:jolokia-jvm-1.6.2-agent.jar=port=7777,host=0.0.0.0",
"-jar","jolokia-sample-app-1.0-SNAPSHOT.jar"],"name":"java","pid":28706},"event":{"dataset":"system.process","module":"system","duration":41245303},"metricset":{"name":"process"},"host":{"name":"metricbeat-c8snn"},"agent":{"ephemeral_id":"e65b4ba
b-4a44-4b0e-9143-b13255d9b83c","hostname":"metricbeat-c8snn","id":"4bb3f0cc-0320-4c19-8224-b4328be0ac20","version":"7.2.0","type":"metricbeat"},"user":{"name":"root"},"service":{"type":"system"},"ecs":{"version":"1.0.0"}}
{"@timestamp":"2019-07-07T07:51:47.287Z","@metadata":{"beat":"metricbeat","type":"_doc","version":"7.2.0"},"ecs":{"version":"1.0.0"},"host":{"name":"metricbeat-c8snn"},"service":{"type":"system"},"system":{"process":{"fd":{"limit":{"soft":1048576
,"hard":1048576},"open":23},"cgroup":{"path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","cpu":{"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28
fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","cfs":{"shares":512,"period":{"us":100000},"quota":{"us":100000}},"rt":{"period":{"us":0},"runtime":{"us":0
}},"stats":{"periods":901,"throttled":{"periods":1,"ns":41474570}}},"cpuacct":{"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39
b73224b00b2c2792f9df1a9b219475fd28fe7","total":{"ns":319305020},"stats":{"system":{"ns":50000000},"user":{"ns":230000000}},"percpu":{"1":143941959,"2":175363061}},"memory":{"kmem_tcp":{"failures":0,"limit":{"bytes":9223372036854771712},"usage":{"
bytes":0,"max":{"bytes":0}}},"stats":{"hierarchical_memory_limit":{"bytes":524288000},"major_page_faults":0,"cache":{"bytes":0},"inactive_anon":{"bytes":0},"pages_out":407,"active_file":{"bytes":0},"inactive_file":{"bytes":32768},"page_faults":51
48,"active_anon":{"bytes":16842752},"hierarchical_memsw_limit":{"bytes":0},"pages_in":4554,"mapped_file":{"bytes":0},"unevictable":{"bytes":0},"rss":{"bytes":16740352},"swap":{"bytes":0},"rss_huge":{"bytes":0}},"id":"3ead494f09ceeccf8ee8d7d0a39b7
3224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","mem":{"failures":0,"limit":{"bytes":524288000},"usage":{"max":{"bytes":185
58976},"bytes":18386944}},"memsw":{"failures":0,"limit":{"bytes":0},"usage":{"bytes":0,"max":{"bytes":0}}},"kmem":{"limit":{"bytes":9223372036854771712},"usage":{"bytes":1511424,"max":{"bytes":1527808}},"failures":0}},"blkio":{"id":"3ead494f09cee
ccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","total":{"bytes":0,"ios":0}},"id":"3ead494f09ceeccf8ee8d7d0
a39b73224b00b2c2792f9df1a9b219475fd28fe7"},"state":"sleeping","cpu":{"total":{"value":310,"pct":0.002,"norm":{"pct":0.001}},"start_time":"2019-07-07T07:50:16.000Z"},"memory":{"rss":{"bytes":33021952,"pct":0.0042},"share":17162240,"size":452040704
0},"cmdline":"java -javaagent:jolokia-jvm-1.6.2-agent.jar=port=7777,host=0.0.0.0 -jar jolokia-sample-app-1.0-SNAPSHOT.jar"}},"user":{"name":"root"},"metricset":{"name":"process"},"event":{"dataset":"system.process","module":"system","duration":42
970510},"process":{"name":"java","pid":28706,"ppid":28687,"pgid":28706,"working_directory":"/opt/app","executable":"/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java","args":["java","-javaagent:jolokia-jvm-1.6.2-agent.jar=port=7777,host=0.0.0.0","-j
ar","jolokia-sample-app-1.0-SNAPSHOT.jar"]},"agent":{"version":"7.2.0","type":"metricbeat","ephemeral_id":"e65b4bab-4a44-4b0e-9143-b13255d9b83c","hostname":"metricbeat-c8snn","id":"4bb3f0cc-0320-4c19-8224-b4328be0ac20"}}
{"@timestamp":"2019-07-07T07:52:57.287Z","@metadata":{"beat":"metricbeat","type":"_doc","version":"7.2.0"},"event":{"dataset":"system.process","module":"system","duration":39358767},"metricset":{"name":"process"},"user":{"name":"root"},"agent":{"
version":"7.2.0","type":"metricbeat","ephemeral_id":"e65b4bab-4a44-4b0e-9143-b13255d9b83c","hostname":"metricbeat-c8snn","id":"4bb3f0cc-0320-4c19-8224-b4328be0ac20"},"service":{"type":"system"},"system":{"process":{"fd":{"open":23,"limit":{"soft"
:1048576,"hard":1048576}},"memory":{"size":4520407040,"rss":{"bytes":33021952,"pct":0.0042},"share":17162240},"cpu":{"total":{"pct":0.002,"norm":{"pct":0.001},"value":390},"start_time":"2019-07-07T07:50:16.000Z"},"cgroup":{"memory":{"path":"/kube
pods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","mem":{"failures":0,"limit":{"bytes":524288000},"usage":{"bytes":18432000,"max":{"bytes":18558976}}},"memsw":{"limit":{"bytes
":0},"usage":{"bytes":0,"max":{"bytes":0}},"failures":0},"kmem":{"limit":{"bytes":9223372036854771712},"usage":{"bytes":1511424,"max":{"bytes":1527808}},"failures":0},"kmem_tcp":{"usage":{"bytes":0,"max":{"bytes":0}},"failures":0,"limit":{"bytes"
:9223372036854771712}},"stats":{"inactive_file":{"bytes":32768},"major_page_faults":0,"rss":{"bytes":16875520},"rss_huge":{"bytes":0},"hierarchical_memsw_limit":{"bytes":0},"page_faults":5181,"active_anon":{"bytes":16887808},"cache":{"bytes":0},"
hierarchical_memory_limit":{"bytes":524288000},"inactive_anon":{"bytes":0},"swap":{"bytes":0},"unevictable":{"bytes":0},"active_file":{"bytes":0},"pages_in":4554,"pages_out":407,"mapped_file":{"bytes":0}},"id":"3ead494f09ceeccf8ee8d7d0a39b73224b0
0b2c2792f9df1a9b219475fd28fe7"},"blkio":{"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7"
,"total":{"ios":0,"bytes":0}},"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","cpu":{"rt
":{"period":{"us":0},"runtime":{"us":0}},"stats":{"periods":1601,"throttled":{"periods":1,"ns":41474570}},"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/
3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","cfs":{"quota":{"us":100000},"shares":512,"period":{"us":100000}}},"cpuacct":{"total":{"ns":396475285},"stats":{"system":{"ns":70000000},"user":{"ns":280000000}},"percpu":{"1":1858
55169,"2":210620116},"id":"3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7","path":"/kubepods/burstable/poddbe4f2bd-a08b-11e9-851f-42010a920003/3ead494f09ceeccf8ee8d7d0a39b73224b00b2c2792f9df1a9b219475fd28fe7"}},"cmdline":"java -
javaagent:jolokia-jvm-1.6.2-agent.jar=port=7777,host=0.0.0.0 -jar jolokia-sample-app-1.0-SNAPSHOT.jar","state":"sleeping"}},"process":{"working_directory":"/opt/app","executable":"/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java","args":["java","-j
avaagent:jolokia-jvm-1.6.2-agent.jar=port=7777,host=0.0.0.0","-jar","jolokia-sample-app-1.0-SNAPSHOT.jar"],"name":"java","pid":28706,"ppid":28687,"pgid":28706},"ecs":{"version":"1.0.0"},"host":{"name":"metricbeat-c8snn"}}
```

だいたい1分感覚くらいでメトリクスが収集されるようす
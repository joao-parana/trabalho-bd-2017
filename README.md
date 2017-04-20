# trabalho-bd-01


## HBase

Wide-column store based on Apache Hadoop and on concepts of BigTable.

Apache HBase is a NoSQL key/value store which runs on top of HDFS. Unlike Hive, HBase operations run in real-time on its database rather than MapReduce jobs. HBase is partitioned to tables, and tables are further split into column families. Column families, which must be declared in the schema, group together a certain set of columns (columns don’t require schema definition). For example, the "message" column family may include the columns: "to", "from", "date", "subject", and "body". Each key/value pair in HBase is defined as a cell, and each key consists of row-key, column family, column, and time-stamp. A row in HBase is a grouping of key/value mappings identified by the row-key. HBase enjoys Hadoop’s infrastructure and scales horizontally using off the shelf servers.

HBase works by storing data as key/value. It supports four primary operations: put to add or update rows, scan to retrieve a range of cells, get to return cells for a specified row, and delete to remove rows, columns or column versions from the table. Versioning is available so that previous values of the data can be fetched (the history can be deleted every now and then to clear space via HBase compactions). Although HBase includes tables, a schema is only required for tables and column families, but not for columns, and it includes increment/counter functionality.

HBase queries are written in a custom language that needs to be learned. SQL-like functionality can be achieved via Apache Phoenix, though it comes at the price of maintaining a schema. Furthermore, HBase isn’t fully ACID compliant, although it does support certain properties. Last but not least - in order to run HBase, ZooKeeper is required - a server for distributed coordination such as configuration, maintenance, and naming.

HBase is perfect for real-time querying of Big Data. Facebook use it for messaging and real-time analytics. They may even be using it to count Facebook likes.

Hbase has centralized architecture where The Master server is responsible for monitoring all RegionServer(responsible for serving and managing regions) instances in the cluster, and is the interface for all metadata changes. It provides CP(Consistency, Availability) form CAP theorem.

HBase is optimized for reads, supported by single-write master, and resulting strict consistency model, as well as use of Ordered Partitioning which supports row-scans. HBase is well suited for doing Range based scans.

Linear Scalability for large tables and range scans - Due to Ordered Partitioning, HBase will easily scale horizontally while still supporting rowkey range scans.

Secondary Indexes - Hbase does not natively support secondary indexes, but one use-case of Triggers is that a trigger on a ""put"" can automatically keep a secondary index up-to-date, and therefore not put the burden on the application (client)."

Simple Aggregation- Hbase Co Processors support out-of-the-box simple aggregations in HBase. SUM, MIN, MAX, AVG, STD. Other aggregations can be built by defining java-classes to perform the aggregation


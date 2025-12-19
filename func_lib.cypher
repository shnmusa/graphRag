// 1. export_to_csv için ilişki kur
MATCH (f_exp_csv:Function {name: "export_to_csv"}), (lib_csv:Library {name: "csv"})
CREATE (f_exp_csv)-[:USES_LIBRARY]->(lib_csv)

WITH 1 as dummy // Bir sonraki MATCH için köprü kuruyoruz

// 2. export_to_json için ilişki kur
MATCH (f_exp_json:Function {name: "export_to_json"}), (lib_json:Library {name: "json"})
CREATE (f_exp_json)-[:USES_LIBRARY]->(lib_json)

WITH 1 as dummy

// 3. load_data için ilişki kur
MATCH (f_load:Function {name: "load_data"}), (lib_os:Library {name: "os"})
CREATE (f_load)-[:USES_LIBRARY]->(lib_os)

WITH 1 as dummy

// 4. compute_statistics için ilişki kur
MATCH (f_stats:Function {name: "compute_statistics"}), (lib_stats:Library {name: "statistics"})
CREATE (f_stats)-[:USES_LIBRARY]->(lib_stats)
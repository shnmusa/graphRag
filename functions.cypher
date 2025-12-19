// 1. run_pipeline (main.py) içindeki çağrılar
MATCH (f_pipeline:Function {name: "run_pipeline"})
MATCH (f_load:Function {name: "load_data"})
MATCH (f_clean:Function {name: "clean_data"})
MATCH (f_transform:Function {name: "transform_values"})
MATCH (f_stats:Function {name: "compute_statistics"})
MATCH (f_exp_csv:Function {name: "export_to_csv"})
MATCH (f_exp_json:Function {name: "export_to_json"})

CREATE (f_pipeline)-[:CALLS]->(f_load)
CREATE (f_pipeline)-[:CALLS]->(f_clean)
CREATE (f_pipeline)-[:CALLS]->(f_transform)
CREATE (f_pipeline)-[:CALLS]->(f_stats)
CREATE (f_pipeline)-[:CALLS]->(f_exp_csv)
CREATE (f_pipeline)-[:CALLS]->(f_exp_json)

// 2. read_first_line (reader.py) içindeki çağrı
WITH 1 as dummy
MATCH (f_read_first:Function {name: "read_first_line"})
MATCH (f_load:Function {name: "load_data"})
CREATE (f_read_first)-[:CALLS]->(f_load)
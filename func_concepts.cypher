// 1. Exporter Modülü Kavramları
MATCH (f_exp_csv:Function {name: "export_to_csv"}), (c_export:Concept {name: "Data Export"})
CREATE (f_exp_csv)-[:RELATES_TO]->(c_export)
WITH 1 as dummy
MATCH (f_exp_json:Function {name: "export_to_json"}), (c_export:Concept {name: "Data Export"})
CREATE (f_exp_json)-[:RELATES_TO]->(c_export)
WITH 1 as dummy
MATCH (f_save_txt:Function {name: "save_text"}), (c_io:Concept {name: "File I/O"})
CREATE (f_save_txt)-[:RELATES_TO]->(c_io)

WITH 1 as dummy

// 2. Util Modülü Kavramları
MATCH (f_debug:Function {name: "debug"}), (c_debug:Concept {name: "Debugging"})
CREATE (f_debug)-[:RELATES_TO]->(c_debug)
WITH 1 as dummy
MATCH (f_upper:Function {name: "to_upper"}), (c_str:Concept {name: "String Manipulation"})
CREATE (f_upper)-[:RELATES_TO]->(c_str)

WITH 1 as dummy

// 3. Reader Modülü Kavramları
MATCH (f_load:Function {name: "load_data"}), (c_io:Concept {name: "File I/O"})
CREATE (f_load)-[:RELATES_TO]->(c_io)

WITH 1 as dummy

// 4. Analyzer Modülü Kavramları
MATCH (f_stats:Function {name: "compute_statistics"}), (c_analysis:Concept {name: "Data Analysis"})
CREATE (f_stats)-[:RELATES_TO]->(c_analysis)

WITH 1 as dummy

// 5. Processor Modülü Kavramları
MATCH (f_clean:Function {name: "clean_data"}), (c_clean:Concept {name: "Data Cleaning"})
CREATE (f_clean)-[:RELATES_TO]->(c_clean)
WITH 1 as dummy
MATCH (f_transform:Function {name: "transform_values"}), (c_transform:Concept {name: "Data Transformation"})
CREATE (f_transform)-[:RELATES_TO]->(c_transform)

WITH 1 as dummy

// 6. Main Pipeline Kavramı
MATCH (f_pipeline:Function {name: "run_pipeline"}), (c_etl:Concept {name: "ETL Pipeline"})
CREATE (f_pipeline)-[:RELATES_TO]->(c_etl)
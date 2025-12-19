// Module: main.py
CREATE (m_main:Module {module_id: "M6", name: "main", file_path: "main.py"})

// Functions
CREATE (f_pipeline:Function {func_id: "F16", name: "run_pipeline", file_path: "main.py", line_number: 6, docstring: "Runs the full ETL pipeline."})

// Relationships: Module -> Function
CREATE (m_main)-[:CONTAINS]->(f_pipeline)
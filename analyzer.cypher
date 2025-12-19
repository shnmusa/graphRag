// Module: analyzer.py
CREATE (m_analyzer:Module {module_id: "M4", name: "analyzer", file_path: "analyzer.py"})

// Functions
CREATE (f_stats:Function {func_id: "F9", name: "compute_statistics", file_path: "analyzer.py", line_number: 3, docstring: "Computes count, avg, and stdev."})
CREATE (f_max:Function {func_id: "F10", name: "max_value", file_path: "analyzer.py", line_number: 13, docstring: "Returns maximum value."})
CREATE (f_min:Function {func_id: "F11", name: "min_value", file_path: "analyzer.py", line_number: 16, docstring: "Returns minimum value."})

// Relationships: Module -> Function
CREATE (m_analyzer)-[:CONTAINS]->(f_stats)
CREATE (m_analyzer)-[:CONTAINS]->(f_max)
CREATE (m_analyzer)-[:CONTAINS]->(f_min)

// Relationships: Module -> Library (IMPORTS)
WITH m_analyzer
MATCH (lib_stats:Library {name: "statistics"})
CREATE (m_analyzer)-[:IMPORTS]->(lib_stats)
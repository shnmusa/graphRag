// Module: exporter.py
CREATE (m_exporter:Module {module_id: "M1", name: "exporter", file_path: "exporter.py"})

// Functions
CREATE (f_exp_csv:Function {func_id: "F1", name: "export_to_csv", file_path: "exporter.py", line_number: 4, docstring: "Exports list of values to a CSV file."})
CREATE (f_exp_json:Function {func_id: "F2", name: "export_to_json", file_path: "exporter.py", line_number: 10, docstring: "Exports object to a JSON file."})
CREATE (f_save_txt:Function {func_id: "F3", name: "save_text", file_path: "exporter.py", line_number: 15, docstring: "Saves list of lines to a text file."})

// Relationships: Module -> Function
CREATE (m_exporter)-[:CONTAINS]->(f_exp_csv)
CREATE (m_exporter)-[:CONTAINS]->(f_exp_json)
CREATE (m_exporter)-[:CONTAINS]->(f_save_txt)

// Relationships: Module -> Library (IMPORTS)
WITH m_exporter
MATCH (lib_csv:Library {name: "csv"}), (lib_json:Library {name: "json"})
CREATE (m_exporter)-[:IMPORTS]->(lib_csv)
CREATE (m_exporter)-[:IMPORTS]->(lib_json)
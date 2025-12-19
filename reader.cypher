// Module: reader.py
CREATE (m_reader:Module {module_id: "M3", name: "reader", file_path: "reader.py"})

// Functions
CREATE (f_load:Function {func_id: "F7", name: "load_data", file_path: "reader.py", line_number: 3, docstring: "Loads data from file if exists."})
CREATE (f_read_first:Function {func_id: "F8", name: "read_first_line", file_path: "reader.py", line_number: 11, docstring: "Reads the first line of a file."})

// Relationships: Module -> Function
CREATE (m_reader)-[:CONTAINS]->(f_load)
CREATE (m_reader)-[:CONTAINS]->(f_read_first)

// Relationships: Module -> Library (IMPORTS)
WITH m_reader
MATCH (lib_os:Library {name: "os"})
CREATE (m_reader)-[:IMPORTS]->(lib_os)
// 1. Kütüphaneleri (Libraries) Oluştur
CREATE (lib_csv:Library {library_id: "L1", name: "csv", version: "stdlib"})
CREATE (lib_json:Library {library_id: "L2", name: "json", version: "stdlib"})
CREATE (lib_os:Library {library_id: "L3", name: "os", version: "stdlib"})
CREATE (lib_stats:Library {library_id: "L4", name: "statistics", version: "stdlib"})

// 2. Kavramları (Concepts) Oluştur
CREATE (c_io:Concept {concept_id: "C1", name: "File I/O"})
CREATE (c_export:Concept {concept_id: "C2", name: "Data Export"})
CREATE (c_debug:Concept {concept_id: "C3", name: "Debugging"})
CREATE (c_str:Concept {concept_id: "C4", name: "String Manipulation"})
CREATE (c_analysis:Concept {concept_id: "C5", name: "Data Analysis"})
CREATE (c_etl:Concept {concept_id: "C6", name: "ETL Pipeline"})
CREATE (c_clean:Concept {concept_id: "C7", name: "Data Cleaning"})
CREATE (c_transform:Concept {concept_id: "C8", name: "Data Transformation"})
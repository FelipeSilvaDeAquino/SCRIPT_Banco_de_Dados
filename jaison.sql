CREATE DATABASE JSON_DATABASE;
USE JSON_DATABASE;

CREATE TABLE dados_json(
json char(250)
);

INSERT INTO dados_json VALUES (
'{
"nome":"José",
"sobrenome":"cardoso",
"idade":"25",
"ID": "001"
}');
SELECT * FROM dados_json;
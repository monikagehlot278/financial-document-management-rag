CREATE TABLE tbl_users (
	user_id SERIAL PRIMARY KEY,
	email VARCHAR(100) UNIQUE NOT NULL,
	password TEXT NOT NULL
);

CREATE TABLE tbl_documents (
	doc_id SERIAL PRIMARY KEY,
	title VARCHAR(200),
	company_name VARCHAR(200),
	document_type VARCHAR(50),
	uploaded_by INT REFERENCES tbl_users(user_id),
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE tbl_roles (
	role_id SERIAL PRIMARY KEY,
	name VARCHAR(50) UNIQUE NOT NULL

);

CREATE TABLE tbl_user_roles(
	user_id INT REFERENCES tbl_users(user_id) ON DELETE CASCADE,
	role_id INT REFERENCES tbl_roles(role_id) ON DELETE CASCADE,
	PRIMARY KEY (user_id, role_id)
);
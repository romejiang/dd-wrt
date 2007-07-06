CREATE TABLE IF NOT EXISTS nodes (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name TEXT NOT NULL,
	source TEXT,
	PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS items (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name TEXT NOT NULL,
	description TEXT,
	node INT UNSIGNED NOT NULL,
	handle INT UNSIGNED,
	parent INT UNSIGNED,
	indent INT UNSIGNED,
	rx_usage SMALLINT NOT NULL,
	tx_usage SMALLINT NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (node) REFERENCES nodes(id),
	FOREIGN KEY (parent) REFERENCES items(id)
);

CREATE TABLE IF NOT EXISTS attrs (
	id INT UNSIGNED NOT NULL AUTO_INCREMENT UNIQUE,
	name CHAR(15) NOT NULL,
	item INT UNSIGNED NOT NULL,
	rx_rate INT UNSIGNED,
	tx_rate INT UNSIGNED,
	rx_counter BIGINT UNSIGNED NOT NULL,
	tx_counter BIGINT UNSIGNED NOT NULL,
	PRIMARY KEY (id),
	FOREIGN KEY (item) REFERENCES items(id)
);

CREATE TABLE IF NOT EXISTS attr_desc (
	id CHAR(15) NOT NULL UNIQUE,
	is_num SMALLINT UNSIGNED NOT NULL,
	txt TEXT NOT NULL,
	PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS hist_r (
	attr INT UNSIGNED NOT NULL,
	ts INT UNSIGNED NOT NULL,
	offset INT UNSIGNED NOT NULL,
	rx_rate INT UNSIGNED NOT NULL,
	tx_rate INT UNSIGNED NOT NULL,
	PRIMARY KEY (attr, ts, offset),
	FOREIGN KEY (attr) REFERENCES attrs(id)
);

CREATE TABLE IF NOT EXISTS hist_s (
	attr INT UNSIGNED NOT NULL,
	ts INT UNSIGNED NOT NULL,
	offset INT UNSIGNED NOT NULL,
	rx_rate INT UNSIGNED NOT NULL,
	tx_rate INT UNSIGNED NOT NULL,
	PRIMARY KEY (attr, ts, offset),
	FOREIGN KEY (attr) REFERENCES attrs(id)
);

CREATE TABLE IF NOT EXISTS hist_m (
	attr INT UNSIGNED NOT NULL,
	ts INT UNSIGNED NOT NULL,
	offset INT UNSIGNED NOT NULL,
	rx_rate INT UNSIGNED NOT NULL,
	tx_rate INT UNSIGNED NOT NULL,
	PRIMARY KEY (attr, ts, offset),
	FOREIGN KEY (attr) REFERENCES attrs(id)
);

CREATE TABLE IF NOT EXISTS hist_h (
	attr INT UNSIGNED NOT NULL,
	ts INT UNSIGNED NOT NULL,
	offset INT UNSIGNED NOT NULL,
	rx_rate INT UNSIGNED NOT NULL,
	tx_rate INT UNSIGNED NOT NULL,
	PRIMARY KEY (attr, ts, offset),
	FOREIGN KEY (attr) REFERENCES attrs(id)
);

CREATE TABLE IF NOT EXISTS hist_d (
	attr INT UNSIGNED NOT NULL,
	ts INT UNSIGNED NOT NULL,
	offset INT UNSIGNED NOT NULL,
	rx_rate INT UNSIGNED NOT NULL,
	tx_rate INT UNSIGNED NOT NULL,
	PRIMARY KEY (attr, ts, offset),
	FOREIGN KEY (attr) REFERENCES attrs(id)
);

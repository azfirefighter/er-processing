ALTER TABLE Authorize CHANGE COLUMN LastUpdate LastUpdate VARCHAR(8);
ALTER TABLE Apparatus CHANGE COLUMN LastUpdate LastUpdate VARCHAR(8);
ALTER TABLE Exposures CHANGE COLUMN LastUpdate LastUpdate VARCHAR(8);
ALTER TABLE ExposureUser CHANGE COLUMN LastUpdate LastUpdate VARCHAR(8);
ALTER TABLE Incidents CHANGE COLUMN LastUpdate LastUpdate VARCHAR(8);
ALTER TABLE Narratives CHANGE COLUMN LastUpdate LastUpdate VARCHAR(8);
ALTER TABLE Narratives CHANGE COLUMN Narrative Narrative TEXT;
ALTER TABLE Narratives CHANGE COLUMN CURR_TEXT CURR_TEXT TEXT;
ALTER TABLE Users CHANGE COLUMN IncidentSearchQuery IncidentSearchQuery TEXT;
ALTER TABLE Users CHANGE COLUMN LastUpdate LastUpdate VARCHAR(8);

# INDICES

ALTER TABLE Exposures ADD INDEX (ExposureID);
ALTER TABLE Exposures ADD INDEX (IID);
ALTER TABLE Exposures ADD INDEX (UID);
ALTER TABLE ExposureUser ADD INDEX (ExposureId);
ALTER TABLE Incidents ADD INDEX (IncidentID);
ALTER TABLE Incidents ADD INDEX (IncidentDateTime);
ALTER TABLE Users ADD INDEX (UserID);


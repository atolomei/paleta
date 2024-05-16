package io.paleta.db.model;

import java.time.OffsetDateTime;
import java.util.Optional;


public interface Auditable {
	
	public OffsetDateTime getCreated();
	public OffsetDateTime getLastModified();
	public Usuario getLastModifidUser();
	public Optional<Long> getLastModifiedUserId();

}

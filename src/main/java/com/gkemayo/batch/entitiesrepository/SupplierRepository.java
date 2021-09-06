package com.gkemayo.batch.entitiesrepository;

import org.springframework.data.jdbc.repository.query.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import com.gkemayo.batch.entities.Supplier;

public interface SupplierRepository extends CrudRepository<Supplier, Long> {
	
	@Query("select c.id, c.name, c.address from DIM_SUPPLIER c where name = :name ")
	public Supplier findByName(@Param("name") String name);

}
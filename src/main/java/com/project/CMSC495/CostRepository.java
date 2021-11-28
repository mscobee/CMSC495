package com.project.CMSC495;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("CostRepository")
public interface CostRepository extends CrudRepository<Cost, Integer> {
}

package com.project.CMSC495;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository("ChannelRepository")
public interface ChannelRepository extends CrudRepository<Channels, Integer> {
}

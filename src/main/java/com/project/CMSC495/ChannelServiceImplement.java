package com.project.CMSC495;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public abstract class ChannelServiceImplement implements ChannelService{
	
	@Autowired
	ChannelRepository channelRepository;

	@Override
	public List<Channels> getAllChannels() {
		return (List<Channels>) channelRepository.findAll();
	}
}

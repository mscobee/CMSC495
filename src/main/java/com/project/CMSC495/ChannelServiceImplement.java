package com.project.CMSC495;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Transactional
@Service("ChannelService")
public class ChannelServiceImplement implements ChannelService{
	
	@Autowired
	ChannelRepository channelRepository;

	@Override
	public Iterable<Channels> getAllChannels() {
		return channelRepository.findAll();
	}
}

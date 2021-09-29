package com.f.s5.theaters;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.f.s5.ticket.MothDTO;

@Service
public class TheatersService {
	
	@Autowired
	private TheatersDAO theatersDAO;
	
	public List<TheatersDTO> getList() throws Exception {
		return theatersDAO.getList();
	}
	
	public TheatersDTO getInfo(TheatersDTO theatersDTO) throws Exception {
		return theatersDAO.getInfo(theatersDTO);
	}

}

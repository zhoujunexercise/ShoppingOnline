package com.sgang.o2o.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sgang.o2o.entity.Area;

@Controller
@RequestMapping("/superadmin")
public class AreaController {

	@RequestMapping(value="/listarea",method=RequestMethod.GET)
	@ResponseBody
	private Map<String,Object> listArea(){
		Map<String,Object>  modelMap=new HashMap<String,Object>();
		
		List<Area> list = new ArrayList<Area>();
		Area area1 = new Area();
		area1.setAreaId(11);
		area1.setAreaName("成都");
		area1.setPriority(1);
		area1.setCreateTime(new Date(System.currentTimeMillis()+1000));
		area1.setCreateTime(new Date(System.currentTimeMillis()));
		list.add(area1);
		
		Area area2 = new Area();
		area2.setAreaId(22);
		area2.setAreaName("重庆");
		area2.setPriority(2);
		area2.setCreateTime(new Date(System.currentTimeMillis()+2000));
		area2.setCreateTime(new Date(System.currentTimeMillis()));
		list.add(area2);
		
		Area area3 = new Area();
		area3.setAreaId(33);
		area3.setAreaName("上海");
		area3.setPriority(3);
		area3.setCreateTime(new Date(System.currentTimeMillis()+2000));
		area3.setCreateTime(new Date(System.currentTimeMillis()));
		list.add(area3);
		
		modelMap.put("rows", list);
		modelMap.put("total", list.size());

		return modelMap;
		
	}
	
}

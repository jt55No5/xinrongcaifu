package com.xinrong.controller.before.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xinrong.bean.Project;
import com.xinrong.bean.Series;
import com.xinrong.service.ProjectService;
import com.xinrong.service.ProvincesService;
import com.xinrong.service.SeriesService;
/**
 * 首页index Controller
 * @author lenovo
 *
 */
@Controller
public class IndexController {
	@Autowired
	private ProjectService projectService;
	@Autowired
	private SeriesService seriesService;
	
	public ProjectService getProjectService() {
		return projectService;
	}

	public void setProjectService(ProjectService projectService) {
		this.projectService = projectService;
	}
	

	public SeriesService getSeriesService() {
		return seriesService;
	}

	public void setSeriesService(SeriesService seriesService) {
		this.seriesService = seriesService;
	}

	/**
	 * 进入信融财富首页
	 * @return
	 */
	@RequestMapping("xin/index.html")
	public String goIntoIndex(Model model){
		Series series=new Series();
		List<Series> seriesList=seriesService.selectAll(series);
		Project project=new Project();
		List<Project> list1=projectService.selectBySeriesId(1);
		List<Project> list2=projectService.selectBySeriesId(2);
		List<Project> list3=projectService.selectBySeriesId(3);
		model.addAttribute("seriesList", seriesList);
		model.addAttribute("list1",list1);
		model.addAttribute("list2",list2);
		model.addAttribute("list3",list3);
		return "xin/index";
	}
	@RequestMapping("xin/index.htm")
	public String goIntoIndexhtm(Model model){
		Series series=new Series();
		List<Series> seriesList=seriesService.selectAll(series);
		Project project=new Project();
		List<Project> list1=projectService.selectBySeriesId(1);
		List<Project> list2=projectService.selectBySeriesId(2);
		List<Project> list3=projectService.selectBySeriesId(3);
		model.addAttribute("seriesList", seriesList);
		model.addAttribute("list1",list1);
		model.addAttribute("list2",list2);
		model.addAttribute("list3",list3);
		return "xin/index";
	}
	
}
package com.zwz.web;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.zwz.pojo.UserBean;
import com.zwz.service.IUserService;


@Controller
@RequestMapping("/User")
public class UserManagementController {
	@Resource
	private IUserService userService;

	@RequestMapping(value = "/toAdd", method = RequestMethod.POST)
	public String toAdd(Model model) {

		return "/user/user_add";
	}

	@RequestMapping(value = "/toEdit/{id}", method = RequestMethod.POST)
	public ModelAndView toEdit(@PathVariable int id) {
		ModelAndView view = new ModelAndView("/user/user_edit");	
		view.addObject("user", userService.getUserById(id));
		return view;
	}

	@RequestMapping(value = "/add/save", method = RequestMethod.POST)
	public ModelAndView save(@ModelAttribute("editForm") UserBean form, Model model, ModelMap map) {
		form.setDate(new Date());
		userService.addUser(form);
		//ModelAndView view = new ModelAndView("/user/user_management");
		ModelAndView view = new ModelAndView("/user/bootstrapTableExample");
		view.addObject(form);
		return view;
	}

	@RequestMapping(value = "/edit/update", method = RequestMethod.POST)
	public ModelAndView edit(@ModelAttribute("editForm") UserBean form, Model model, ModelMap map) {
		form.setDate(new Date());
		userService.editUser(form);
		//ModelAndView view = new ModelAndView("/user/user_management");
		ModelAndView view = new ModelAndView("/user/dataTableExample");
		view.addObject(form);
		return view;
	}

	// mysql缓存，上一页，下一页或更改每页记录数时，keyword为空
	@RequestMapping(value = "/username/listPage", method = RequestMethod.POST)
	@ResponseBody
	public  Map<String, Object> listPage(
			@RequestParam(value="username")String username,
			@RequestParam(value="pageNumber")int pageNumber,
			@RequestParam(value="pageSize")int pageSize) {
		PageHelper.startPage(pageNumber, pageSize);
		ArrayList<UserBean> userBean = userService.listUserByName(username);
		List<UserBean> userBean1 = userService.listUserByName(username);
		//return userBean;
		Map<String,Object> map=new HashMap<String,Object>();
		map.put("rows", userBean);
		map.put("total", userBean1.size());
		return map;

	}
	@RequestMapping(value = "/username/list", method = RequestMethod.GET)
	@ResponseBody
	public  Map list(@RequestParam(value="username") String username,
			@RequestParam(value="sEcho") String sEcho,
			@RequestParam(value="iDisplayStart") int offSet,
			@RequestParam(value="iDisplayLength") int pageSize) {
		int pageNum=offSet/pageSize+1;
		PageHelper.startPage(pageNum, pageSize);
		List<UserBean> userBean = userService.listUserByName(username);
		List<UserBean> userBean1 = userService.listUserByName(username);
        Map<Object,Object> map=new HashMap<>();
        map.put("aaData", userBean);
        map.put("iTotalDisplayRecords", userBean1.size());//一共查询到的记录
        map.put("iTotalRecords", userBean.size());//每页显示的记录数
        map.put("sEcho", sEcho);
		return map;
	}
/*	@RequestMapping(value = "/username/list", method = RequestMethod.GET)
	@ResponseBody
	public  List<UserBean> list(@RequestParam(value="username") String username,
			@RequestParam(value="sEcho") String sEcho,
			@RequestParam(value="iDisplayStart") int offSet,
			@RequestParam(value="iDisplayLength") int pageSize) {
		System.out.println(username+"."+sEcho+"."+offSet+"."+pageSize);
		//PageHelper.startPage(pageNum, pageSize);
		List<UserBean> userBean = userService.listUserByName(username);
		
		
		return userBean;
	}
*/
	@RequestMapping(value = "/edit/delete", method = RequestMethod.POST)
	public ModelAndView close(int id) {
		ModelAndView view = new ModelAndView("/user/user_management");
		userService.deleteUserById(id);
		return view;

	}
	@RequestMapping(value = "/delete/{id}", method = RequestMethod.POST)
	public ModelAndView delete(@PathVariable int id) {
		//ModelAndView view = new ModelAndView("/user/user_management");
		ModelAndView view = new ModelAndView("/user/bootstrapTableExample");
		userService.deleteUserById(id);
		return view;
		
	}

}

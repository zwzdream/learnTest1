package com.zwz.web;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/Index")
public class IndexController{

  /** login jsp*/
  @RequestMapping(value = "/toLogin", method = RequestMethod.GET)
  public String toLogin(Model model) {
    return "/user/login";
  }

  /** Menu link load Module
   */
  @RequestMapping(value = "/home/{targetAction}", method = RequestMethod.GET)
  public String home(Model model, @PathVariable("targetAction") String targetAction) {

    if (!StringUtils.isEmpty(targetAction)) {
      if ("dashboard".equals(targetAction)) {
        return "/home/content";
      } else if ("user".equals(targetAction)) {
        return "/user/user_management";
      } else if ("dataTable".equals(targetAction)) {
        return "/user/dataTableExample";
      } else {
        return "/home/home";
      }
    } else {
      return "/home/home";
    }
  }

  /**
   * Ajax load dashboard
   */
  @RequestMapping(value = "/dashboard/init", method = RequestMethod.POST)
  public String dashboard(Model model) {
    return "/home/content";
  }

  /**
   * Ajax load JD Management List
   */
  @RequestMapping(value = "/JD/init", method = RequestMethod.POST)
  public String JD(Model model) {
    return "/jd/jd_management";
  }
  /**
   * Ajax load user Management List
   */
  @RequestMapping(value = "/user/login", method = RequestMethod.POST)
  public String user(Model model) {
	  return "/user/login";
  }

  /**
   * Ajax load Resource Repository
   */
  @RequestMapping(value = "/resource/init", method = RequestMethod.POST)
  public String resource(Model model) {
    return "/resource/resource_repository";
  }

}

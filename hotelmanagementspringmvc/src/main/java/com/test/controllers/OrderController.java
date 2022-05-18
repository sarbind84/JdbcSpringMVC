package com.test.controllers;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.test.beans.Order;
import com.test.dao.OrderDao;
@Controller
public class OrderController {
	
@Autowired
OrderDao dao; 

@RequestMapping("/orderform")
public String showform(Model m){
m.addAttribute("command", new Order());
return "orderform";
}


 
@RequestMapping(value="/save",method = RequestMethod.POST)
public String save(@ModelAttribute("emp") Order emp){
dao.save(emp);
return "redirect:/vieworder";//will redirect to viewemp request mapping
}


/* It provides list of employees in model object */
/*@RequestMapping("/viewemp")
public String viewemp(Model m){
	
	
List<Emp> list=dao.getEmployees();

System.out.println(list);

m.addAttribute("empdata",list);
	
return "viewemp";
 
	
}*/


@RequestMapping("/vieworder")
public ModelAndView viewemp(){
	
	
List<Order> list=dao.getEmployees();
ModelAndView m= new ModelAndView();
m.addObject("orderdata",list);
m.setViewName("vieworder");

return m;

}
 

@RequestMapping(value="/orderedit/{id}")
public String edit(@PathVariable int id, Model m){
	
Order emp=dao.getEmpById(id);
m.addAttribute("command",emp);
return "ordereditform";
}


@RequestMapping(value="/editsave",method = RequestMethod.POST)
public String editsave(@ModelAttribute("emp") Order emp){
dao.update(emp);
return "redirect:/vieworder";
}



@RequestMapping(value="/delete/{id}",method = RequestMethod.GET)
public String delete(@PathVariable int id){
dao.delete(id);
return "redirect:/vieworder";
}
}


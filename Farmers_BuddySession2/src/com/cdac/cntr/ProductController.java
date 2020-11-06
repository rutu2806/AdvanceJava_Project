package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Products;
import com.cdac.dto.User;
import com.cdac.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/prep_product_add_form.htm",method = RequestMethod.GET)
	public String prepProductAddForm(ModelMap map) {
		map.put("product", new Products());
		return "product_add_form";
	}
	
	@RequestMapping(value = "/product_add.htm",method = RequestMethod.GET)
	public String productAdd(Products product,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		product.setUserId(userId);
		productService.addProduct(product);
		return "home";
	}
	
	
	
	
	
	@RequestMapping(value = "/product_list.htm",method = RequestMethod.GET)
	public String allProducts(ModelMap map,HttpSession session) {
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Products> li = productService.selectAll(userId);
		map.put("proList", li);
		return "product_list";
	}
	
	
	@RequestMapping(value = "/prep_product_buy_form.htm",method = RequestMethod.GET)
	public String buyProducts(ModelMap map,HttpSession session,Products product) {
	//int userId = ((User)session.getAttribute("user")).getUserId();
		List<Products> li=productService.selectAllProduct(product);
		System.out.println(li);
		map.put("proList", li);
		return "BuyProduct";
		
	}
	
	
	
	
	@RequestMapping(value = "/product_delete.htm",method = RequestMethod.GET)
	public String expenseDelete(@RequestParam int productId,ModelMap map,HttpSession session) {
		
		productService.removeProduct(productId); 
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		List<Products> li = productService.selectAll(userId);
		map.put("proList", li);
		return "product_list";
	}
	
	@RequestMapping(value = "/product_update_form.htm",method = RequestMethod.GET)
	public String productUpdateForm(@RequestParam int productId,ModelMap map) {
		
		Products prd = productService.findProduct(productId);
		map.put("product", prd);
		
		return "product_update_form";
	}
	
	@RequestMapping(value = "/product_update.htm",method = RequestMethod.GET)
	public String productUpdate(Products product,ModelMap map,HttpSession session) {
		
		int userId = ((User)session.getAttribute("user")).getUserId();
		product.setUserId(userId);
		productService.modifyProduct(product);
			
		List<Products> li = productService.selectAll(userId);
		map.put("proList", li);
		return "product_list";
	}
}

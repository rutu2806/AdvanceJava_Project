package com.cdac.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.cdac.dto.Cart;
import com.cdac.dto.Products;
import com.cdac.dto.User;
import com.cdac.service.CartService;

@Controller
public class CartController {

	
	 @Autowired
	    private CartService cartService;
	 
	 @RequestMapping(value = "/add_cart_product.htm",method = RequestMethod.GET)
		public String bookAddCart(@RequestParam String cartProductName,@RequestParam String cartProductDetail,@RequestParam float cartProductPrice,ModelMap map,Cart cart ) {
	    	
		 cart.setCartProductName(cartProductName);
		cart.setCartProductDetail(cartProductDetail);
		cart.setCartProductPrice(cartProductPrice);
		
			System.out.println(cartProductName);
			cartService.addProductCart(cart);
			return "home";
		}
	 
	 
	 
	 
	 @RequestMapping(value = "/your_cart.htm",method = RequestMethod.GET)
	  	public String allproduct(ModelMap map,HttpSession session) {
	  		
	  		List<Cart> li = cartService.selectAllCart();
	  		map.put("cartList", li);
	  		return "YourCart";
	  	}
	 
	 
	 
	 
	 @RequestMapping(value = "/product_delete_cart.htm",method = RequestMethod.GET)
		public String productDelete(@RequestParam int cart_id,ModelMap map,HttpSession session) {
			
			cartService.removeProductCart(cart_id); 
			
			List<Cart> li = cartService.selectAllCart();
			map.put("cartList", li);
			return "YourCart";
		}
	 
	 
	 

		@RequestMapping(value = "/cart_list.htm",method = RequestMethod.GET)
		public String cartProducts(ModelMap map,HttpSession session,Cart cart) {
			List<Cart> li = cartService.selectAll(cart);
			map.put("proList", li);
			return "product_bill";
		}
	 
}

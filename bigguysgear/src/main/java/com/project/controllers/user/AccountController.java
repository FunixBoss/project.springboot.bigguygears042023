package com.project.controllers.user;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import com.project.services.AccountService;
import com.project.services.RoleService;

@Controller
@RequestMapping({"account"})
public class AccountController {

	@Autowired
	private RoleService roleService;
	
	@Autowired
	private AccountService accountService; 
	
	
//	@GetMapping({"login"})
//	public String login(@RequestParam(value = "error", required = false) String error,
//						ModelMap modelMap) {
//		if(error != null) {
//			modelMap.put("msg", "Invalid!");
//		}
//		
//		return "account.login";
//	}
//	
//	@GetMapping({"register"})
//	public String register(ModelMap modelMap) {
//		modelMap.put("roles", roleService.findAll());
//		Account account = new Account();
//		account.setBirthday(new Date());
//		modelMap.put("account", account);
//		return "account.register";
//	}
//	
//	@PostMapping({"register"})
//	public String register(@ModelAttribute("account") Account account) {
//		account.setPassword(encoder.encode(account.getPassword()));
//		accountService.save(account);
//		
//		return "redirect:account.login";
//	}
//	
//	@GetMapping("logout")
//	public String logout() {		
//		return "redirect:account.login";
//	}
//	
//	@GetMapping({"profile"})
//	public String profile(ModelMap modelMap, Authentication authentication) {
//		modelMap.put("roles", roleService.findAll());
//		modelMap.put("account", accountService.findByUsername(authentication.getName()));
//		
//		return "account/profile";
//	}
//	
//	@PostMapping({"profile"})
//	public String profile(@ModelAttribute("account") Account account, @RequestParam("roles") int[] roles) {
//		if(account.getPassword().isEmpty()) {
//			account.setPassword(accountService.findByUsername(account.getUsername()).getPassword());
//		} else {
//			account.setPassword(encoder.encode(account.getPassword()));
//		}
//		
//		accountService.save(account);
//		return "redirect:account.login";
//	}
//	
//	@GetMapping("accessDenied")
//	public String accessDenied() {
//		return "user.access_denied";
//	}
	
}

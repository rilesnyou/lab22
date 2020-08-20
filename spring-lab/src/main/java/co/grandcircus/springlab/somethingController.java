package co.grandcircus.springlab;


import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Controller
public class somethingController {
	@RequestMapping("/")
	public String showHome() {
		return "index";
	}
	@RequestMapping("/spone-result")
	public String showSpecOneResult() { 
		return "spec-one-result";
	}
	@RequestMapping("/sptwo-result")
	public String showSpecTwoResult() { 
		return "spec-two-result";
	}
	@RequestMapping("/spthree-result")
	public String showSpecThreeResult() { 
		return "spec-three-result";
	}
	@RequestMapping("/spfour-result")
	public String showSpecFourResult() { 
		return "spec-four-result";
	}
	@RequestMapping("/cus-piz")
	public String customPizzaForm(@RequestParam(name = "toppings", defaultValue = "") List<String> toppings) { 
		toppings.add("red peppers");
		toppings.add("tomatoes");
		toppings.add("mushrooms");
		toppings.add("pepperoni");
		toppings.add("sausage");
		toppings.add("bacon");
		
		return "custom-pizza-form";
	}
	@RequestMapping("/cus-piz-res")
	public String customPizzaResult(Model model, @RequestParam("size") String size, @RequestParam("toppings") int toppings, @RequestParam("gluten") String gluten, @RequestParam("special") String special) { 
		model.addAttribute("size", size);
		model.addAttribute("toppings", toppings);
		model.addAttribute("gluten", gluten);
		model.addAttribute("special", special);
		return "custom-pizza-result";
	}
	@RequestMapping("/leave-rev-form")
	public String reviewForm() { 
		return "leave-form";
	}
	@RequestMapping("/leave-rev-result")
	public String reviewResult(Model model, @RequestParam("reviews") String reviews, @RequestParam("rating") int rating, @RequestParam("name") String name) { 
		model.addAttribute("name", name);
		model.addAttribute("reviews", reviews);
		model.addAttribute("rating", rating);
		return "leave-result";
	}
	
	
}
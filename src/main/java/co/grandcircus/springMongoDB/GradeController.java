package co.grandcircus.springMongoDB;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class GradeController {
	
	@Autowired
	private GradeRepository repo;
	

	@RequestMapping("/")
	public String displayHomepage(Model model) {
		List<Grade> grades = repo.findAll();
		model.addAttribute("grades", grades);
		return "homepage";
	}
	
	@RequestMapping("/addgrade")
	public String showAddGradeForm() {
		return "addGradeForm";
	}
	
	@PostMapping("/addgrade")
	public String confirmAdd(Model model,
			@RequestParam String name,
			@RequestParam String type,
			@RequestParam double score,
			@RequestParam double total) {
		Grade newGrade = new Grade(name, type, score, total);
		
		repo.save(newGrade);
		double percent = score*100/total;
		
		model.addAttribute("name", name);
		model.addAttribute("type", type);
		model.addAttribute("score", score);
		model.addAttribute("total", total);
		model.addAttribute("percent", percent);
	
		return "confirmAdded";
	}
	
	@RequestMapping("/delete")
	public String deleteGrade(@RequestParam String id, Model model) {
		repo.deleteById(id);
		return "redirect:/";
	}
}

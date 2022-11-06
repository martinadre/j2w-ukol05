package cz.czechitas.java2webapps.ukol5.controller;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.validation.Valid;
import java.time.LocalDate;
import java.time.Period;

/**
 * Kontroler obsluhující registraci účastníků dětského tábora.
 */
@Controller
public class RegistraceController {

  @GetMapping("")
  /*public ModelAndView index () {
    ModelAndView modelAndView = new ModelAndView("formular");
    modelAndView.addObject("form", new RegistraceForm());
    return modelAndView;
  }*/
  public String formular(@ModelAttribute ("form") RegistraceForm form) {
    return "formular";
  }

  @PostMapping("")
  public Object form(@Valid @ModelAttribute("form") RegistraceForm form, BindingResult bindingResult) {

      /*LocalDate birthDate = LocalDate.parse(form.getDatumNarozeni());
      Period period = birthDate.until(LocalDate.now());
      int vek = period.getYears();

      if ((vek >= 9) && (vek <=15)){
          //"Věk není v rozmezí 9-15 let."
      }*/

    if (bindingResult.hasErrors()) {
      return "formular";
    }

    return new ModelAndView("/rekapitulace")
            .addObject("form", form);
  }
}

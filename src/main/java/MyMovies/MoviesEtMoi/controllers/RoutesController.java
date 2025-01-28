package MyMovies.MoviesEtMoi.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class RoutesController {
        
    @GetMapping("/") 
    public String home() { 
        return "pages/home";  }
    

    @GetMapping("/series") 
    public String series() { 
        return "pages/series";  }
    

    @GetMapping("/horreur") 
    public String horreur() { 
        return "pages/horreur";  }
    

    @GetMapping("/thriller") 
    public String thriller() { 
        return "pages/thriller";  }
    
    @GetMapping("/feelGood") 
    public String feelGood() { 
        return "pages/feelGood";  }

        @GetMapping("/sf") 
    public String sf() { 
        return "pages/sf";  }
    
}


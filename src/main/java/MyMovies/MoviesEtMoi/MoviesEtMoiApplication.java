package MyMovies.MoviesEtMoi;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

@SpringBootApplication
@ComponentScan(basePackages = "MyMovies.MoviesEtMoi")
public class MoviesEtMoiApplication {

	public static void main(String[] args) {
		SpringApplication.run(MoviesEtMoiApplication.class, args);
	}

}

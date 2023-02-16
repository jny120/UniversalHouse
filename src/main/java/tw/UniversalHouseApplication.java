package tw;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.EnableAspectJAutoProxy;
import org.springframework.context.annotation.PropertySource;

@SpringBootApplication
@EnableAspectJAutoProxy
@PropertySource(value = {"classpath:jdbc.properties"},ignoreResourceNotFound = true)
public class UniversalHouseApplication {

	public static void main(String[] args) {
		SpringApplication.run(UniversalHouseApplication.class, args);
	}
}

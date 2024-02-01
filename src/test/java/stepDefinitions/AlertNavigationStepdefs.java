package stepDefinitions;

import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.jupiter.api.Assertions;
import org.openqa.selenium.Alert;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;

public class AlertNavigationStepdefs {

    WebDriver driver;
    @Given("I am on the zoo website")
    public void iAmOnTheZooWebsite() {
        WebDriverManager.chromedriver().driverVersion("121.0.6167.140").setup();
        ChromeOptions options = new ChromeOptions();
        options.addArguments("--remote-allow-origins=*");
        driver = new ChromeDriver(options);
        driver.get("https://www.thetestroom.com/webapp/index.html");
    }

    @When("I click on the contact link")
    public void iClickOnTheContactLink() {
        WebElement element = driver.findElement(By.id("contact_link"));
        element.click();
    }

    @And("I click on the submit button")
    public void iClickOnTheSubmitButton() {
        WebElement element = driver.findElement(By.id("submit_message"));
        element.click();
    }

    @Then("an alert window appears")
    public void anAlertWindowAppears() throws InterruptedException {
        Thread.sleep(2000);
        Alert alert = driver.switchTo().alert();
        Assertions.assertNotNull(alert);
        alert.dismiss();
    }

    @Then("I close the alert")
    public void iCloseTheAlert() {
        driver.close();
    }
}

package com.mkly.examples;

import org.openqa.selenium.By; 

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement; 
//import org.openqa.selenium.List;
import java.util.List;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.chrome.ChromeDriver; 
import org.openqa.selenium.support.ui.WebDriverWait;

import org.testng.annotations.*;

public class TestGoogleSearch {

  @Test
  public void google_Search()
  {
      System.setProperty("webdriver.chrome.driver", "/Users/mikelay/Downloads/chromedriver");
      WebDriver driver;
      driver = new ChromeDriver();
      driver.get("http://www.google.com");
      //driver.manage().window().maximize();
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");
      System.out.println("Running here");

      //WebElement element = driver.findElement(By.name("q"));
      //element.sendKeys("Cheese!\n");
      //element.submit();

      //Wait until the google page shows the result
      //WebElement myDynamicElement = (new WebDriverWait(driver, 10)).until(ExpectedConditions.presenceOfElementLocated(By.id("resultStats")));

      //List<WebElement> findElements = driver.findElements(By.xpath("//*[@id='rso']//h3/a"));

      //Get the url of third link and navigate to it
      //String third_link = findElements.get(2).getAttribute("href");
      //driver.navigate().to(third_link);

      System.out.println(driver.getTitle());

      driver.quit();
  }
}

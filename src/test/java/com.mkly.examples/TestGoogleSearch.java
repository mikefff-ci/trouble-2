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
import org.testng.Assert;

public class TestGoogleSearch {

  @Test
  public void google_Search()
  {
      WebDriver driver;
      driver = new ChromeDriver();
      driver.get("http://www.google.com");

      Assert.equals(driver.getTitle(), "Google");

      driver.quit();
  }
}

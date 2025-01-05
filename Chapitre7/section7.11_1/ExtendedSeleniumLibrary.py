
from SeleniumLibrary import SeleniumLibrary
from robot.api.deco import keyword


class ExtendedSeleniumLibrary(SeleniumLibrary):
    
    @keyword
    def click_and_log(self, locator):
        self.click_element(locator)
        print(f"Clicked on element: {locator}")
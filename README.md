# WebTesting-Cucumber
### Description
This POM helps to automate tests on a webpage through the use of the cucumber tool which is a process that assist a TDD approach alongside capybara, which also helps ease task through shortened functions to web test with the use of the selenium web driver and the chrome driver. Once the POM is put into place and the url has been initialized, the user stories are then created in the feature file through the gherkin syntax and once they are completed, cucmber is then ran in the terminal which creates the test code to work from to make it easier to do automation test. Each scenerio decalres a certain user story.  

### Languages used
* Ruby

### Tools used
* RSpec
* Chrome Driver
* Selenium WebDriver
* Capybara 
* Cucumber

### How to download
1. Git clone 'https://github.com/shahak1995/WebTesting-Cucumber'
2. Run 'bundle' in the terminal to install the gems
3. Run 'cucumber'

### How to use
1. Open the folder through a code editor of your choice
2. In the terminal run bundle to install all of your gems which will create a Gemfile.lock file with all of your dependancies 
3. Make sure you enter your URL within the initial page file that you start off witi 
4. Create all of your user stories through the gherkin syntax in the feature file and then run it through 'cucumber' in the terminal
5. Copy and paste the test framework it generated and put it in the defs file within step_definitions
6. Enter the test code within the framework and run 'cucumber' within the terminal and it should automate the test and give a result if the test have passed or failed

### Challenges (you can include images and code block here)
1. Getting error text back and testing against it
2. Checking the id element for each of the fields
3. Setting up the POM for cucumber

### Learning points
1. Know how to make good user stories through the gherkin syntax
2. Make sure to create an attribute selector to call error text
3. Make sure to do the right methods for the right test
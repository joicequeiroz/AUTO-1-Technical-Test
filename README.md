# AUTO 1 Technical Test
This project was developed using the open-source Cucumber, Capybara and WebDriver frameworks for front-end automation of AutoHero site.

## Step 1:

Install:
* Ruby 2.5.5 and DevKit (https://rubyinstaller.org/downloads/)
* Bundler ($ gem install bundler);

## Step 2:
Clone project: 

    * $ git clone https://github.com/joicequeiroz/AUTO-1-Technical-Test.git

## Step 3:

After to clone project, go to the project root and execute $ bundle install

## Run
Default browser is firefox, but you can run in chrome browser
* To run all tests(firefox): $ cucumber
    * You can specify firefox browser using $ cucumber ENV['firefox']
* To run all tests(chrome): $ cucumber ENV['chrome']
require 'cucumber'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'selenium-webdriver'
require_relative 'helper.rb'

#Configurando módulos globais
World(Capybara::DSL)
World(Capybara::RSpecMatchers)
World(Helper)

Capybara.configure do |config|
    #Configurando para abrir o selenium o chrome
    config.default_driver = :selenium_chrome  
    #Configurando o host para a url principal
    config.app_host = 'https://www.shoestock.com.br' 
    #Tempo de espera máximo
    config.default_max_wait_time = 5 
    #Configurando para abrir o chrome maximizado
    Capybara.page.driver.browser.manage.window.maximize
end
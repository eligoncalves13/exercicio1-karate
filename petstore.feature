Feature: Gestão de pets
    Como um gestor da pet store
    Desejo gerenciar os pets 
    Para ter o controle das informações cadastrais

    Background: Base url 
        Given url "https://petstore.swagger.io/v2"
        And path "pet"

    Scenario: Cadastrar um pet utilizando id
        And path "131313"
        And form field name = "Cachorro Caramelo"
        And form field status = "available"
        When method post
        Then status 200 

    Scenario: Consultar pet por status available e pending
        And path "/findByStatus"
        And param status = ["available", "pending"]
        When method get 
        Then status 200
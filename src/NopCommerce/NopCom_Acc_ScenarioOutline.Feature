Feature: Bookcategory

  Background: I should be able to see homepage
    Given I enter URL "http://demo.nopcommerce.com/"
    And   I am on homepage

  Scenario Outline: I should be able to see top menu tabs on homepage with categories
    When I am on home page
    Then I should be able to see top menu tabs with "<categories>"

    Examples:

      | Categories        |
      | Computer          |
      | Electronic        |
      | Apparel           |
      | Digital Downloads |
      | Books             |
      | Jewellery         |
      | Gift Card         |

  Scenario Outline: I should be able to see book page with filters

    When I select book category from top menu tabs on home page
    Then I should be navigated to book category
    And  I should be able to see "<filters>"

    Examples:
      | Filters  |
      | Sort By  |
      | Display  |
      | The Grid |
      | List tab |

  Scenario Outline: I should be able to see list of terms in each filter

    Given I am book page
    When  I click on "<filter>"
    Then  I should be able to see "<List>" in dropdown menu

    Examples:
      | Filter  | List                                                             |
      | Sort By | Name: A to Z, Price: Low to High, Price: High to low, Created on |
      | Display | 3,6,9

  Scenario Outline: I should be able to choose any filter option with specific result
    Given I am on book page
    When  I click on "<Filter>"
    And   I click on any "<Option>"
    Then  I should be able to choose any filter option from the list
    And   I should be able to see result "<Result>"

    Examples:

      | Filter  | Option             | Result                                                              |
      | Sort by | Name: A to Z       | Sorted product with the product name in alphabetical order A to Z   |
      | Sort by | Name: Z to A       | Sorted product with the product name in unalphabetical order Z to A |
      | Sort by | Price: Low to High | Sorted product with the price in descending order                   |
      | Sort by | Price: High to Low | Sorted product with the price in ascending order                    |
      | Sort by | Created on         | Recently added product should be shown first                        |
      | Display | 3                  | 3 Products in a page                                                |
      | Display | 6                  | 6 Products in a page                                                |
      | Display | 9                  | 9 Products in a page                                                |

  Scenario Outline: I should be able to see product display format according to display format type as per given picture in srs document

    Given  I am on book page
    When   I click on "<display_format_icon>"
    Then   I should be able to see product display format according display format type as per given in SRS document

    Examples:
      | Display Format Icon |
      | Grid                |
      | List                |





# SPDX-FileCopyrightText: 2024 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

Feature: SCL Resources API
  As a client of the Compas SCL Data Service
  I want to create, retrieve, and list SCL resources
  So that I can safely manage my substation configurations

  Background:
    Given I authenticate as "scl-data-editor"

  Scenario: Create a new SCD document and retrieve it successfully
    # 1. Explicitly create the SCD document (auto-cleaned by framework)
    When I POST "/compas-scl-data-service/scl/v1/SCD" with XML body:
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <SCL xmlns="http://www.iec.ch/61850/2003/SCL" version="2007" revision="B" release="4">
        <Header id="bdd-test-scd-1" version="1.0.0" revision="A" toolID="COMPAS"/>
    </SCL>
    """
    Then the response status should be 201
    And the response body should not be empty
    And the response should contain field "id"
    And I save the response field "id" as "scdDocId"

    # 2. Retrieve the document using the saved ID
    When I GET "/compas-scl-data-service/scl/v1/SCD/{scdDocId}"
    Then the response status should be 200
    And the response body should not be empty
    And the response field "id" should equal "{scdDocId}"

  Scenario: Verify a newly created document appears in the list
    # 1. Create a distinct document for the list test
    When I POST "/compas-scl-data-service/scl/v1/SCD" with XML body:
    """
    <?xml version="1.0" encoding="UTF-8"?>
    <SCL xmlns="http://www.iec.ch/61850/2003/SCL" version="2007" revision="B" release="4">
        <Header id="bdd-list-test-scd" version="1.0.0" revision="A" toolID="COMPAS"/>
    </SCL>
    """
    Then the response status should be 201

    # 2. Fetch the list of all SCDs and verify it contains items
    When I GET "/compas-scl-data-service/scl/v1/SCD/list"
    Then the response status should be 200
    And the response should be an array
    And the response array should have at least 1 items

  Scenario: Attempt to retrieve a non-existent SCD document
    When I GET "/compas-scl-data-service/scl/v1/SCD/00000000-0000-0000-0000-000000000000"
    Then the response status should be 404
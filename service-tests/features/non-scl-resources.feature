# SPDX-FileCopyrightText: 2024 Alliander N.V.
#
# SPDX-License-Identifier: Apache-2.0

Feature: Non-SCL Resources API
  As a client of the Compas SCL Data Service
  I want to access common non-SCL resources
  So that I can retrieve metadata and user information

  Background:
    Given I authenticate as "scl-data-editor"

  Scenario: Retrieve the list of supported SCL types
    When I GET "/compas-scl-data-service/common/v1/type/list"
    Then the response status should be 200
    And the response should be an array
    And the response array should have at least 1 items
    And the response body should not be empty

  Scenario: Retrieve user information
    When I GET "/compas-scl-data-service/common/v1/userinfo"
    Then the response status should be 200
    And the response should contain field "name"
    And the response body should not be empty
// SPDX-FileCopyrightText: 2024 BearingPoint GmbH
//
// SPDX-License-Identifier: Apache-2.0
package org.lfenergy.compas.scl.data.model;

public interface ILocationMetaItem {
    String getId();
    String getKey();
    String getName();
    String getDescription();
    int getAssignedResources();
}

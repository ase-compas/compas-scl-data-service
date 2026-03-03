// SPDX-FileCopyrightText: 2024 BearingPoint GmbH
//
// SPDX-License-Identifier: Apache-2.0
package org.lfenergy.compas.scl.data.model;

import java.util.List;

public interface IArchivedResourcesHistoryMetaItem {
    List<IArchivedResourceVersion> getVersions();
}

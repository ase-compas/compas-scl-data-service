DELETE
FROM scl_file;

-- Insert test data into scl_file table
INSERT INTO scl_file(id, major_version, minor_version, patch_version, type, name, scl_data, creation_date, created_by)
VALUES ('1e40a51a-2e4f-482e-9410-72bb6177ec47',
        1,
        0,
        0,
        'SSD',
        'Test Item 1',
        '<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:compas="https://www.lfenergy.org/compas/extension/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" release="4" revision="B" version="2007">
	<Private type="compas_scl">
        <compas:SclName>Test Item 1</compas:SclName>
        <compas:SclFileType>SSD</compas:SclFileType>
    </Private>
    <Header id="1e40a51a-2e4f-482e-9410-72bb6177ec47" nameStructure="IEDName" revision="Revision" toolID="toolID" version="1.0.1">
        <History>
            <Hitem revision="" version="1.0.0" what="SCL created, test configuration for station 0001" when="2024-10-15T14:25:12.510436+02:00" who="Author 1"/>
        </History>
    </Header>
</SCL>',
        '2024-10-15T14:25:12.510436+02:00',
        'Author 1'),
       ('1e40a51a-2e4f-482e-9410-72bb6177ec47',
        1,
        0,
        1,
        'SSD',
        'Test Item 1',
        '<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:compas="https://www.lfenergy.org/compas/extension/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" release="4" revision="B" version="2007">
<Private type="compas_scl">
    <compas:SclName>Test Item 1</compas:SclName>
    <compas:SclFileType>SSD</compas:SclFileType>
</Private>
<Header id="1e40a51a-2e4f-482e-9410-72bb6177ec47" nameStructure="IEDName" revision="Revision" toolID="toolID" version="1.0.1">
    <History>
        <Hitem revision="" version="1.0.0" what="SCL created, test configuration for station 0001" when="2024-10-15T14:25:12.510436+02:00" who="Author 1"/>
        <Hitem revision="" version="1.0.1" what="SCL updated" when="2024-10-16T14:25:12.510436+02:00" who="Author 2"/>
    </History>
</Header>
</SCL>',
        '2024-10-16T14:25:12.510436+02:00',
        'Author 2'),
       ('1e70a51a-2e4f-482e-9410-72bb6177ec47',
        1,
        0,
        0,
        'SSD',
        'Test Item 2',
        '<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:compas="https://www.lfenergy.org/compas/extension/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" release="4" revision="B" version="2007">
<Private type="compas_scl">
    <compas:SclName>Test Item 2</compas:SclName>
    <compas:SclFileType>SSD</compas:SclFileType>
</Private>
<Header id="1e40a51a-2e4f-482e-9410-72bb6177ec47" nameStructure="IEDName" revision="Revision" toolID="toolID" version="1.0.1">
    <History>
        <Hitem revision="" version="1.0.0" what="SCL created, test configuration for station 0001" when="2024-10-15T14:25:12.510436+02:00" who="Author 1"/>
        </History>
</Header>
</SCL>',
        '2024-10-16T14:25:12.510436+02:00',
        'Author 4'),
       ('1e80a51a-2e4f-482e-9410-72bb6177ec47',
        1,
        0,
        0,
        'SSD',
        'Test Item 3',
        '<SCL xmlns="http://www.iec.ch/61850/2003/SCL" xmlns:compas="https://www.lfenergy.org/compas/extension/v1" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" release="4" revision="B" version="2007">
<Private type="compas_scl">
    <compas:SclName>Test Item 1</compas:SclName>
    <compas:SclFileType>SSD</compas:SclFileType>
</Private>
<Header id="1e40a51a-2e4f-482e-9410-72bb6177ec47" nameStructure="IEDName" revision="Revision" toolID="toolID" version="1.0.1">
    <History>
        <Hitem revision="" version="1.0.0" what="SCL created, test configuration for station 0001" when="2024-10-15T14:25:12.510436+02:00" who="Author 1"/>
    </History>
</Header>
</SCL>',
        '2024-10-16T14:25:12.510436+02:00',
        'Author 4');



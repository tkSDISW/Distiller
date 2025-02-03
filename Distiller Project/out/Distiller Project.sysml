package  'Distiller Project Project' {
    import ARCADIA::**; 
    @PackageMeta {
        type = "Project";
    } 
    @CapellaID { eid = "9834cdb2-596c-41e4-aa37-ff5711cce68a"; } 
    enum def 'ProgressStatus' :> EnumerationPropertyType  { 
        enum 'DRAFT'; 
        enum 'TO_BE_REVIEWED'; 
        enum 'TO_BE_DISCUSSED'; 
        enum 'REWORK_NECESSARY'; 
        enum 'UNDER_REWORK'; 
        enum 'REVIEWED_OK'; 
    }  
    package  'Distiller Project' {
        @PackageMeta {
            type = "SystemEngineering";
        } 
        @CapellaID { eid = "10c78a5d-59c7-40ac-8ff3-9c52517dad84"; } 
        package  'Operational Analysis' {
            @PackageMeta {
                type = "OperationalAnalysis";
            } 
            @CapellaID { eid = "f85ad531-9ed7-4a62-970f-74baffc656cb"; } 
            package  'Operational Activities' {
                @PackageMeta {
                    type = "OperationalActivityPkg";
                } 
                @CapellaID { eid = "9f5da859-6964-439f-8610-66f953d0f4da"; } 
                action 'Root Operational Activity' : OperationalActivity  { 
                    @CapellaID { eid = "58ce4927-4c5a-4452-bcdb-4d340e517172"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    connection 'd1b646fb-b293-4582-a09f-0c543ea21f36' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Operate System'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Dirty Water' { 
                        @CapellaID { eid = "d1b646fb-b293-4582-a09f-0c543ea21f36"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Control"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Water Supply Control'); 
                    }  
                    connection 'e25691cf-a326-4b93-b084-c875be4e957f' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Operate System'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Operating Power' { 
                        @CapellaID { eid = "e25691cf-a326-4b93-b084-c875be4e957f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Power Control"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Power Supply Control'); 
                    }  
                    connection 'f3c522e5-67db-4dbc-acd2-01b71395a43f' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Dirty Water'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Purify Water' { 
                        @CapellaID { eid = "f3c522e5-67db-4dbc-acd2-01b71395a43f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Dirty Water'); 
                    }  
                    connection 'a11e8a62-4729-4844-8562-bc5bcec732b5' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Operating Power'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Purify Water' { 
                        @CapellaID { eid = "a11e8a62-4729-4844-8562-bc5bcec732b5"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Operating Power"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Operating Power'); 
                    }  
                    connection 'fea69e4d-5178-4d01-aace-6b41f31113d7' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Purify Water'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Store Water' { 
                        @CapellaID { eid = "fea69e4d-5178-4d01-aace-6b41f31113d7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    connection '8fafff79-2bc4-45f2-a503-8170e12183af' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Store Water'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Distribute Water' { 
                        @CapellaID { eid = "8fafff79-2bc4-45f2-a503-8170e12183af"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    connection '45223828-9783-4c4c-bea2-c95e739efd3c' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Purify Water'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Manage Waste' { 
                        @CapellaID { eid = "45223828-9783-4c4c-bea2-c95e739efd3c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Waste"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Waste'); 
                    }  
                    connection 'd00bc9c8-a563-420f-b72e-b7991d048230' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Distribute Water'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Use Water' { 
                        @CapellaID { eid = "d00bc9c8-a563-420f-b72e-b7991d048230"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    connection '70a4b5c7-4899-4145-8d1c-1218fc62149e' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Maintain and Serivce System'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Allow maintenance and service' { 
                        @CapellaID { eid = "70a4b5c7-4899-4145-8d1c-1218fc62149e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                    }  
                    connection '3f4de4e1-987b-4cfa-84a4-74b95cfbb233' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Install System'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Deploymentability' { 
                        @CapellaID { eid = "3f4de4e1-987b-4cfa-84a4-74b95cfbb233"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                    }  
                    connection '2df12409-91df-4d25-88d2-33719264f944' : OAInteraction 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Certify System'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Deploymentability' { 
                        @CapellaID { eid = "2df12409-91df-4d25-88d2-33719264f944"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                    }  
                    action 'Test Chain - Provide Safe Drinking Water' : OperationalProcess  { 
                        @CapellaID { eid = "c1395166-4388-4a14-95fe-fdb6c580072b"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '40118317-4e8f-487f-8b1d-41cb1f6b9e38' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Operate System'; 
                        connection '71be6fcb-9c99-4dbb-a115-77da6a7e9256' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'40118317-4e8f-487f-8b1d-41cb1f6b9e38'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'0de07162-42ac-4279-9349-8a89a103e518' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'d1b646fb-b293-4582-a09f-0c543ea21f36';

                            } 
                        ref action '0de07162-42ac-4279-9349-8a89a103e518' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Dirty Water'; 
                        connection 'b6a6d0d0-f7b7-4895-b898-af50087989c1' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'40118317-4e8f-487f-8b1d-41cb1f6b9e38'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'f005d5ac-e637-4ea3-9d3c-dcda1dafbd21' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'e25691cf-a326-4b93-b084-c875be4e957f';

                            } 
                        ref action 'f005d5ac-e637-4ea3-9d3c-dcda1dafbd21' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Operating Power'; 
                        connection 'd823c7d9-07cc-4831-96cb-fbf04d8b8561' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'0de07162-42ac-4279-9349-8a89a103e518'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'e5421aa7-f6ac-443f-95c1-19ddc705952e' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'f3c522e5-67db-4dbc-acd2-01b71395a43f';

                            } 
                        ref action 'e5421aa7-f6ac-443f-95c1-19ddc705952e' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Purify Water'; 
                        connection '339f70f8-e163-44f3-90bd-a175ef771e27' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'f005d5ac-e637-4ea3-9d3c-dcda1dafbd21'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'e5421aa7-f6ac-443f-95c1-19ddc705952e' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'a11e8a62-4729-4844-8562-bc5bcec732b5';

                            } 
                        connection '39e94c61-0907-4d85-a99c-19c0a94cc9e5' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'e5421aa7-f6ac-443f-95c1-19ddc705952e'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'ec8d8907-4122-41a9-9c47-b6fce9a50bc3' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'fea69e4d-5178-4d01-aace-6b41f31113d7';

                            } 
                        ref action 'ec8d8907-4122-41a9-9c47-b6fce9a50bc3' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Store Water'; 
                        connection '266299e0-89b1-4c81-94a1-c293e8caa580' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'ec8d8907-4122-41a9-9c47-b6fce9a50bc3'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'2c0adb83-1789-4784-9013-63348055d737' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'8fafff79-2bc4-45f2-a503-8170e12183af';

                            } 
                        ref action '2c0adb83-1789-4784-9013-63348055d737' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Distribute Water'; 
                        connection 'ae7a6731-f104-4ec5-b2e7-9fc44613d047' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'2c0adb83-1789-4784-9013-63348055d737'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'ef715558-ae56-4b66-81e9-c949747faccc' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'d00bc9c8-a563-420f-b72e-b7991d048230';

                            } 
                        ref action 'ef715558-ae56-4b66-81e9-c949747faccc' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Use Water'; 
                        ref action '143920af-8731-4788-9505-f0012a65162f' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Manage Waste'; 
                        connection 'eb2e42b9-fb41-4d51-97ae-eafba89496e4' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'e5421aa7-f6ac-443f-95c1-19ddc705952e'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'.'143920af-8731-4788-9505-f0012a65162f' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'45223828-9783-4c4c-bea2-c95e739efd3c';

                            } 
                    }  
                    action 'Maintain System' : OperationalProcess  { 
                        @CapellaID { eid = "066af401-7c11-4dbd-a418-2acdb5fa5e63"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '523ce65d-bd19-46a3-a490-c730adfbc0a5' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Maintain and Serivce System'; 
                        connection '1fefa07e-8eac-49ff-9d0b-9f981b8e86fd' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Maintain System'.'523ce65d-bd19-46a3-a490-c730adfbc0a5'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Maintain System'.'0b0b96e4-5a0c-4d61-978c-4d919321865d' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'70a4b5c7-4899-4145-8d1c-1218fc62149e';

                            } 
                        ref action '0b0b96e4-5a0c-4d61-978c-4d919321865d' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Allow maintenance and service'; 
                    }  
                    action 'Operate System' : OperationalActivity  { 
                        @CapellaID { eid = "27d7ea91-8063-442f-bfd2-0d1c5977b3ef"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Use Water' : OperationalActivity  { 
                        @CapellaID { eid = "83aa4672-e8f6-4818-95f2-947117aa93d7"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Maintain and Serivce System' : OperationalActivity  { 
                        @CapellaID { eid = "0f42fe23-4571-40bf-8c2a-85fec0858ed2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Install System' : OperationalActivity  { 
                        @CapellaID { eid = "3054b92d-f5f5-4bc5-ad93-c59d92eac122"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Certify System' : OperationalActivity  { 
                        @CapellaID { eid = "87dd0f14-9552-44f0-bb76-12d35c940036"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Provide Dirty Water' : OperationalActivity  { 
                        @CapellaID { eid = "3c812972-4e3e-401a-8273-b4267f9c5e09"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Provide Operating Power' : OperationalActivity  { 
                        @CapellaID { eid = "94a44d0c-05da-498b-a1c6-e23d0807f4ee"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Purify Water' : OperationalActivity  { 
                        @CapellaID { eid = "cc616568-7bd7-444c-bf99-96e80415103a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Store Water' : OperationalActivity  { 
                        @CapellaID { eid = "40b76a8a-3b90-460a-9759-9359514cfa05"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Distribute Water' : OperationalActivity  { 
                        @CapellaID { eid = "73fcd8ad-99c1-408a-9669-fa221c2751da"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Manage Waste' : OperationalActivity  { 
                        @CapellaID { eid = "c8d2efc6-1b37-462c-a883-f8bf8f2b61fc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Allow maintenance and service' : OperationalActivity  { 
                        @CapellaID { eid = "76a93c98-4ab4-4987-888f-464009d25753"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    action 'Provide Deploymentability' : OperationalActivity  { 
                        @CapellaID { eid = "36da5ab9-5669-40f6-b9a4-adaa3695d6f0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                    ref :>> ownedFunctionalExchanges =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'d1b646fb-b293-4582-a09f-0c543ea21f36',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'e25691cf-a326-4b93-b084-c875be4e957f',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'f3c522e5-67db-4dbc-acd2-01b71395a43f',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'a11e8a62-4729-4844-8562-bc5bcec732b5',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'fea69e4d-5178-4d01-aace-6b41f31113d7',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'8fafff79-2bc4-45f2-a503-8170e12183af',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'45223828-9783-4c4c-bea2-c95e739efd3c',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'d00bc9c8-a563-420f-b72e-b7991d048230',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'70a4b5c7-4899-4145-8d1c-1218fc62149e',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'3f4de4e1-987b-4cfa-84a4-74b95cfbb233',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'2df12409-91df-4d25-88d2-33719264f944'); 
                     
                }  
            } 
            package  'Operational Entities' {
                @PackageMeta {
                    type = "EntityPkg";
                } 
                @CapellaID { eid = "3dce96c2-ef4a-4fec-8630-934f32758a39"; } 
                part 'Safe Drinking Water System' : Entity  { 
                    @CapellaID { eid = "94b19c2d-827e-4a2a-9862-dc32e1ef27df"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    allocation 'c7db1cff-7048-43ca-9be9-034b009e8327' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Dirty Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Dirty Water' ; 
                    allocation '6af5d32b-789d-4134-960e-b25446f6575d' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Operating Power'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Operating Power' ; 
                    allocation '06f6ce31-8704-435e-8a4f-4497ae11275d' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Purify Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Purify Water' ; 
                    allocation '8c9ddb6b-5cb8-47e5-8489-2ad1529ea9b8' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Store Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Store Water' ; 
                    allocation '605b9cf7-0819-4ee1-9a24-73446a299647' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Distribute Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Distribute Water' ; 
                    allocation '0ceda3d0-faaa-4fdc-be95-126edec792ac' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Manage Waste'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Manage Waste' ; 
                    allocation '6182ec84-b5ba-4cff-b625-fffece2cb817' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Allow maintenance and service'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Allow maintenance and service' ; 
                    allocation 'c3d768f7-f4a7-4a7d-9a34-47d34c6e65f4' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Deploymentability'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Provide Deploymentability' ; 
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'c7db1cff-7048-43ca-9be9-034b009e8327',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'6af5d32b-789d-4134-960e-b25446f6575d',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'06f6ce31-8704-435e-8a4f-4497ae11275d',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'8c9ddb6b-5cb8-47e5-8489-2ad1529ea9b8',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'605b9cf7-0819-4ee1-9a24-73446a299647',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'0ceda3d0-faaa-4fdc-be95-126edec792ac',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'6182ec84-b5ba-4cff-b625-fffece2cb817',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'.'c3d768f7-f4a7-4a7d-9a34-47d34c6e65f4'); 
                }  
                part 'Operator' : Entity  { 
                    @CapellaID { eid = "a5554521-7541-48e3-9515-99b20e084924"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '32a830da-3a2e-4611-b737-0f1088d11c08' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Operate System'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Operate System' ; 
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Operator'.'32a830da-3a2e-4611-b737-0f1088d11c08'); 
                }  
                part 'Water User' : Entity  { 
                    @CapellaID { eid = "36e3ecea-837b-4994-84ff-0d314f81732a"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '2da6c1fc-b18c-40e5-8392-69908e7b4a0d' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Use Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Water User';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Use Water' ; 
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Water User'.'2da6c1fc-b18c-40e5-8392-69908e7b4a0d'); 
                }  
                part 'Maintenance Personnel' : Entity  { 
                    @CapellaID { eid = "78a7e857-4fb1-4e50-bfc6-6af1025c7b12"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '7e08af3b-37c2-43e9-8ccd-c48d67358bf2' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Maintain and Serivce System'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Maintenance Personnel';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Maintain and Serivce System' ; 
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Maintenance Personnel'.'7e08af3b-37c2-43e9-8ccd-c48d67358bf2'); 
                }  
                part 'Deploymeny Personnel' : Entity  { 
                    @CapellaID { eid = "876e28d7-3e33-47e7-84b6-678c73f262b7"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation 'd94b577d-4edb-4d97-8a32-ce97720349e5' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Install System'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Deploymeny Personnel';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Install System' ; 
                    allocation '9040631a-f116-4667-bb32-265c6431589a' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Certify System'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Deploymeny Personnel';
                    perform 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Certify System' ; 
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Deploymeny Personnel'.'d94b577d-4edb-4d97-8a32-ce97720349e5',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Deploymeny Personnel'.'9040631a-f116-4667-bb32-265c6431589a'); 
                }  
                connection 'af7891c5-7436-4534-b03e-6a75d6bc6b74' : CommunicationMean 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Operator'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System' { 
                    @CapellaID { eid = "af7891c5-7436-4534-b03e-6a75d6bc6b74"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Operator Control"; 
                    attribute :>> isOriented = false; 
                    allocation '7926cccc-ac29-4b09-8428-3fb864410925' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'e25691cf-a326-4b93-b084-c875be4e957f'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'af7891c5-7436-4534-b03e-6a75d6bc6b74'; 
                    allocation '2bb76af6-4840-4e17-bb9f-d85b989f823d' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'d1b646fb-b293-4582-a09f-0c543ea21f36'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'af7891c5-7436-4534-b03e-6a75d6bc6b74'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'af7891c5-7436-4534-b03e-6a75d6bc6b74'.'7926cccc-ac29-4b09-8428-3fb864410925',
                    'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'af7891c5-7436-4534-b03e-6a75d6bc6b74'.'2bb76af6-4840-4e17-bb9f-d85b989f823d'); 
                }  
                connection '25bcf96e-cd57-4382-bde6-594875285878' : CommunicationMean 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Maintenance Personnel'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System' { 
                    @CapellaID { eid = "25bcf96e-cd57-4382-bde6-594875285878"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Maintenance"; 
                    attribute :>> isOriented = false; 
                    allocation '181705ce-514e-48b0-b325-3a7fc7dca68b' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'70a4b5c7-4899-4145-8d1c-1218fc62149e'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'25bcf96e-cd57-4382-bde6-594875285878'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'25bcf96e-cd57-4382-bde6-594875285878'.'181705ce-514e-48b0-b325-3a7fc7dca68b'); 
                }  
                connection '8f4addad-a3e8-41ef-8cd3-dfdf55ab8cad' : CommunicationMean 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Water User' { 
                    @CapellaID { eid = "8f4addad-a3e8-41ef-8cd3-dfdf55ab8cad"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Water Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '847503cc-900a-4cb8-9f94-e30a34035420' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'d00bc9c8-a563-420f-b72e-b7991d048230'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'8f4addad-a3e8-41ef-8cd3-dfdf55ab8cad'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'8f4addad-a3e8-41ef-8cd3-dfdf55ab8cad'.'847503cc-900a-4cb8-9f94-e30a34035420'); 
                }  
                connection '30081d31-d5dd-45cf-a65a-481673d6f53a' : CommunicationMean 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Deploymeny Personnel'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System' { 
                    @CapellaID { eid = "30081d31-d5dd-45cf-a65a-481673d6f53a"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Deployment"; 
                    attribute :>> isOriented = false; 
                }  
            } 
            package  'Roles' {
                @PackageMeta {
                    type = "RolePkg";
                } 
                @CapellaID { eid = "f666542b-57a5-4273-9ee1-d1d5ca958080"; } 
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "f5564a7b-e7c3-4c27-8772-66f8339e8d3e"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "2bec5589-6f27-448b-97cb-07db997695c2"; } 
                item 'Dirty Water' : ExchangeItem  { 
                    @CapellaID { eid = "2678f3cf-7624-463e-bb28-de1c527856f9"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'dirty water' : ExchangeItemElement { 
                        @CapellaID { eid = "b7cb979c-6332-4647-b850-347819703c5c"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'H2O';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Dirty Water'.'dirty water'); 
                }  
                item 'Steam' : ExchangeItem  { 
                    @CapellaID { eid = "7316d965-c1ee-478f-ae55-30b68427f282"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'steam' : ExchangeItemElement { 
                        @CapellaID { eid = "89249908-a233-4299-b762-e0a006d82e5f"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'H2O';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Steam'.'steam'); 
                }  
                item 'Clean Water' : ExchangeItem  { 
                    @CapellaID { eid = "4eadbd5f-a1d0-4538-9f32-e88a18f0a7ce"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'clean water' : ExchangeItemElement { 
                        @CapellaID { eid = "2804dc93-b5fc-4c6d-a31c-85554862712f"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'H2O';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'.'clean water'); 
                }  
                item 'Waste' : ExchangeItem  { 
                    @CapellaID { eid = "2c59e714-4169-40fd-937e-e2cd350a0a01"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'ExchangeItemElement 1' : ExchangeItemElement { 
                        @CapellaID { eid = "fd79f441-d383-4882-8249-bb889524e5c3"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Waste';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Waste'.'ExchangeItemElement 1'); 
                }  
                item 'Operating Power' : ExchangeItem  { 
                    @CapellaID { eid = "d941e294-70b6-4608-9d92-47f0e1632484"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'operating water' : ExchangeItemElement { 
                        @CapellaID { eid = "0076d94c-4774-4fd7-9fb7-87bd21fb866d"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Power Source';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Operating Power'.'operating water'); 
                }  
                item 'Water Supply Control' : ExchangeItem  { 
                    @CapellaID { eid = "84224d78-2367-4825-82ed-698e0c6e274f"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'water supply control' : ExchangeItemElement { 
                        @CapellaID { eid = "30bf5cae-f9a4-4845-92a7-335897ea65bb"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Water Supply Control'.'water supply control'); 
                }  
                item 'Power Supply Control' : ExchangeItem  { 
                    @CapellaID { eid = "6ce5a8b7-6bfc-4daa-88a9-bebb14934177"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'power supply control' : ExchangeItemElement { 
                        @CapellaID { eid = "06d21e84-eada-4fce-8b5b-d7dc7a8a4ca9"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Power Supply Control'.'power supply control'); 
                }  
                item 'H2O' : Class { 
                    @CapellaID { eid = "1d4fbaa1-f7f6-4afa-8d0a-8fd26de9ed0b"; sid = "1d4fbaa1-f7f6-4afa-8d0a-8fd26de9ed0b"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'Power Source' : Class { 
                    @CapellaID { eid = "469e1af3-4a69-4417-a8b9-ae40f5d0a767"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'Waste' : Class { 
                    @CapellaID { eid = "15ad6a11-2ba1-47ed-978d-f20d465d5c51"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
            } 
            package  'Operational Capabilities' {
                @PackageMeta {
                    type = "OperationalCapabilityPkg";
                } 
                @CapellaID { eid = "06acbc60-719f-4c1f-859f-5738e89e6571"; } 
                use case 'Provide Safe Drinking Water' : OperationalCapability { 
                    @CapellaID { eid = "720a92e9-c228-4247-b78b-5b2c12005fcb"; } 
                    ref action '53c349fa-87ce-4cb9-8a19-abbea8f153aa' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'; 
                    actor 'Safe Drinking Water System' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'; 
                    actor 'Operator' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Operator'; 
                    actor 'Water User' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Water User'; 
                     
                }  
                use case 'Monitor System' : OperationalCapability { 
                    @CapellaID { eid = "2d381628-7d30-40b9-9355-f1bf7f56fe20"; } 
                    actor 'Water User' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Water User'; 
                    actor 'Safe Drinking Water System' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'; 
                }  
                use case 'Maintain and Service System' : OperationalCapability { 
                    @CapellaID { eid = "55c6f705-ec86-4859-8fa5-af0ef39321e4"; } 
                    actor 'Maintenance Personnel' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Maintenance Personnel'; 
                    actor 'Safe Drinking Water System' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'; 
                }  
                use case 'Deploy Safe Drinking Water System' : OperationalCapability { 
                    @CapellaID { eid = "253fb747-bcdb-47d0-ba8f-b424c579c539"; } 
                    actor 'Safe Drinking Water System' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Safe Drinking Water System'; 
                    actor 'Deploymeny Personnel' = 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Entities'::'Deploymeny Personnel'; 
                    include 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Capabilities'::'Certify'; 
                    include 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Operational Capabilities'::'Install'; 
                     
                }  
                use case 'Certify' : OperationalCapability { 
                    @CapellaID { eid = "d59d398e-b1a8-46bd-bce2-f6a6be5e8c66"; } 
                }  
                use case 'Install' : OperationalCapability { 
                    @CapellaID { eid = "fcbddee2-f8ac-400d-8cc2-be4964c5899c"; } 
                }  
            } 
        } 
        package  'System Analysis' {
            @PackageMeta {
                type = "SystemAnalysis";
            } 
            @CapellaID { eid = "f106fbe5-c7e6-49ed-a25d-b3cac11ba75e"; sid = "f106fbe5-c7e6-49ed-a25d-b3cac11ba75e"; } 
            package  'Structure' {
                @PackageMeta {
                    type = "SystemComponentPkg";
                } 
                @CapellaID { eid = "84da4f41-e45c-42d2-a48c-597837563691"; } 
                part 'Water Distiller' : SystemComponent { 
                    @CapellaID { eid = "d31ae82d-04dd-4807-885d-52fc30673887"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
                    allocation '27e8e563-7075-4bc0-a08d-8e95b68faf29' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water' ; 
                    allocation 'cbbf4cd1-64de-4803-90e1-04de363988a4' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam' ; 
                    allocation 'e242affb-d660-4a2e-8443-14512f1e27ac' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water' ; 
                    allocation '680baae6-02bd-4dcc-8b3b-a2f6f0aa0af3' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "68bb7421-40ed-4150-8519-b88385afc854"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '221326b4-96f9-4dbc-b0d7-67ae35e87eef' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'inDirty Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 1'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 1'.'221326b4-96f9-4dbc-b0d7-67ae35e87eef'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "722ca8da-ee10-41b4-b792-4edad01a2e31"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'dfdea722-e377-46a7-82a1-3f46a7ff9762' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FIP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 2'; 
                        ref allocation 'de525f65-d33c-4cba-862e-523c30e0d18c' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'inOperating Power'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 2'.'dfdea722-e377-46a7-82a1-3f46a7ff9762',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 2'.'de525f65-d33c-4cba-862e-523c30e0d18c'); 
                    }  
                    port 'CP 3' : ComponentPort { 
                        @CapellaID { eid = "7f09ff80-b4ba-4730-aafc-34e5a78f3a37"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'e7458e5c-1e62-46d8-bbb9-90066d5d5b35' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 3'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 3'.'e7458e5c-1e62-46d8-bbb9-90066d5d5b35'); 
                    }  
                    port 'CP 4' : ComponentPort { 
                        @CapellaID { eid = "a5fd8fc2-23ce-402f-8950-e3aae1413283"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                    }  
                    constraint 'ab0076a4-c75a-4b06-9821-6e3c02636ba5' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "ab0076a4-c75a-4b06-9821-6e3c02636ba5"; }
                        
                    } 
                    constraint '15dd617a-390b-48ad-bdd8-abbcf272f109' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "15dd617a-390b-48ad-bdd8-abbcf272f109"; }
                        
                    } 
                    constraint '0caa49f0-156c-4a46-a2b9-6199381dcee7' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "0caa49f0-156c-4a46-a2b9-6199381dcee7"; }
                        
                    } 
                    constraint 'f5f107ad-ed4b-4a9d-9e16-73053ad98775' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "f5f107ad-ed4b-4a9d-9e16-73053ad98775"; }
                        
                    } 
                    constraint '72ae579c-362d-44ff-8112-ec01e561a701' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "72ae579c-362d-44ff-8112-ec01e561a701"; }
                        
                    } 
                    state 'System State Machine' : StateMachine  { 
                        @CapellaID { eid = "ac21aa7f-bb0a-411a-bbb6-a8ea441725ec"; } 
                        attribute :>> isControlOperator = false; 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'27e8e563-7075-4bc0-a08d-8e95b68faf29',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'cbbf4cd1-64de-4803-90e1-04de363988a4',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'e242affb-d660-4a2e-8443-14512f1e27ac',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'680baae6-02bd-4dcc-8b3b-a2f6f0aa0af3'); 
                    ref :>> ownedConstraints =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'ab0076a4-c75a-4b06-9821-6e3c02636ba5',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'15dd617a-390b-48ad-bdd8-abbcf272f109',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'0caa49f0-156c-4a46-a2b9-6199381dcee7',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'f5f107ad-ed4b-4a9d-9e16-73053ad98775',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'72ae579c-362d-44ff-8112-ec01e561a701'); 
                    ref :>> ownedStateMachines =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'System State Machine'); 
                }  
                part 'Operator' : SystemComponent { 
                    @CapellaID { eid = "d589117e-dace-499a-bf25-a2f7517239c6"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                    allocation 'a753723c-e1d0-45e5-b395-cb06e1b6f967' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller' ; 
                    allocation '1809d5f9-ceab-432b-887a-a6a600ea5a51' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Heat Source'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Heat Source' ; 
                    allocation 'fa303449-e086-435f-b937-2a562fa55c34' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Water Source'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Water Source' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "4f1d3d34-8a23-444a-9dac-c7c540c9a815"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '1344f9d5-317e-468f-a0af-20b486194d9e' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'.'outWater Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 1'; 
                        ref allocation '425a0154-5f18-45fe-845c-3db308013284' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Water Source'.'FOP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 1'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 1'.'1344f9d5-317e-468f-a0af-20b486194d9e',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 1'.'425a0154-5f18-45fe-845c-3db308013284'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "a98ac54a-52c0-499b-bb8e-33de77236566"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'cb1cf033-e0f6-486d-b4f8-c91ffff3eb68' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Heat Source'.'FOP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 2'; 
                        ref allocation '6e2659a3-27d4-4ff8-8e24-6a4c912f2e92' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'.'outPower Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 2'.'cb1cf033-e0f6-486d-b4f8-c91ffff3eb68',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 2'.'6e2659a3-27d4-4ff8-8e24-6a4c912f2e92'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'a753723c-e1d0-45e5-b395-cb06e1b6f967',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'1809d5f9-ceab-432b-887a-a6a600ea5a51',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'fa303449-e086-435f-b937-2a562fa55c34'); 
                }  
                part 'Water Source' : SystemComponent { 
                    @CapellaID { eid = "c7773738-df40-4fa8-9bd8-80b25529373e"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                    allocation '9dcc6740-0804-4871-a977-6eaaa8794791' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "97795871-e3da-48eb-985f-7e06c0190345"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'fd795eaf-b27c-4ea2-ae1a-59c20dde8604' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'outDirty Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 1'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 1'.'fd795eaf-b27c-4ea2-ae1a-59c20dde8604'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "3e25d590-188f-4c6d-b58f-a8ed6eba3c97"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'd2a2f3c7-fad7-4d0a-a1b0-961d2d2e410b' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'inWater Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 2'; 
                        ref allocation '090b51a0-39de-4e80-90b9-b277e9f978d9' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'FIP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 2'.'d2a2f3c7-fad7-4d0a-a1b0-961d2d2e410b',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 2'.'090b51a0-39de-4e80-90b9-b277e9f978d9'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'9dcc6740-0804-4871-a977-6eaaa8794791'); 
                }  
                part 'Heat Source' : SystemComponent { 
                    @CapellaID { eid = "31168827-c30f-4f2c-bb66-c0585875d400"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                    allocation 'd7185c34-9215-4cd2-985d-30015cd45b55' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "b9770807-88fa-47e8-b2ae-34c200cad5cd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '2befc300-d658-4a7b-8005-bfcd545ef79c' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'FOP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 1'; 
                        ref allocation 'b42ba523-0f22-4a18-aad7-437143d24bc4' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'outOperating Power'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 1'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 1'.'2befc300-d658-4a7b-8005-bfcd545ef79c',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 1'.'b42ba523-0f22-4a18-aad7-437143d24bc4'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "8426916f-8f82-48d5-adc3-f6d274c8c86a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '82089023-19fe-48cf-bd25-49b2c0fbb5cb' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'FIP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 2'; 
                        ref allocation '63555d19-4f92-4121-bb46-0fdd05d3f523' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'inPower Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 2'.'82089023-19fe-48cf-bd25-49b2c0fbb5cb',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 2'.'63555d19-4f92-4121-bb46-0fdd05d3f523'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'d7185c34-9215-4cd2-985d-30015cd45b55'); 
                }  
                part 'Water Distribution System' : SystemComponent { 
                    @CapellaID { eid = "b613413d-6fdf-4b55-986d-6943332e0521"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                    allocation 'a84474b5-2910-4d18-b8e5-522165c06214' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water' ; 
                    allocation '16ba6e4b-4e34-4677-8ddd-b6cda8dc16de' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "06253157-a5a7-4c99-84ae-84fc13381522"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '50088cb8-393a-4696-ad6c-4a2f935c3e7a' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'CP 1'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'CP 1'.'50088cb8-393a-4696-ad6c-4a2f935c3e7a'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "1f0a4e49-88ef-4953-ac56-8021499d288c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '75738201-f633-47f8-801d-9df81642edec' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water'.'outSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'CP 2'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'CP 2'.'75738201-f633-47f8-801d-9df81642edec'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'a84474b5-2910-4d18-b8e5-522165c06214',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'16ba6e4b-4e34-4677-8ddd-b6cda8dc16de'); 
                }  
                part 'Water USer' : SystemComponent { 
                    @CapellaID { eid = "711dc360-add7-41f5-a7a7-01233e18a7a5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                    allocation 'c56d4781-7575-4ab4-bee0-ae4914e7c151' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Get Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water USer';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Get Clean Water' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "19e73ea2-f88c-45df-ac48-9c25c0c456bd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '657639a4-4597-4a9b-94e6-8d0d20feefc4' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Get Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water USer'.'CP 1'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water USer'.'CP 1'.'657639a4-4597-4a9b-94e6-8d0d20feefc4'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water USer'.'c56d4781-7575-4ab4-bee0-ae4914e7c151'); 
                }  
                part 'Waste Management System' : SystemComponent { 
                    @CapellaID { eid = "152c7606-aafb-4142-b07a-15c70958f7a8"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                    allocation '7b56a037-aa8a-4727-a197-0e5fd94360df' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Discharge Residue'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Waste Management System';
                    perform 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Discharge Residue' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "9c1851a2-4575-4def-b841-d06dff145937"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Waste Management System'.'7b56a037-aa8a-4727-a197-0e5fd94360df'); 
                }  
                part 'A 7' : SystemComponent { 
                    @CapellaID { eid = "f58e867b-fd84-4cd9-8609-24f27c3f96f6"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                }  
                part 'A 8' : SystemComponent { 
                    @CapellaID { eid = "414dccb0-7052-4890-9d36-8ab55e953768"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
                }  
                interface '45e6cd8f-7152-49bd-97f5-d368df46de3e' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 1'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 1' { 
                    @CapellaID { eid = "45e6cd8f-7152-49bd-97f5-d368df46de3e"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '081d66d1-f034-467a-a355-c44abee78d7f' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'9c6bf30a-a7b0-452a-9cf1-39b59b4f1164'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'45e6cd8f-7152-49bd-97f5-d368df46de3e'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'45e6cd8f-7152-49bd-97f5-d368df46de3e'.'081d66d1-f034-467a-a355-c44abee78d7f'); 
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                }  
                interface '857d0463-0f1a-451b-9fd5-8cbcf02917f9' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 1'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 2' { 
                    @CapellaID { eid = "857d0463-0f1a-451b-9fd5-8cbcf02917f9"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Heat Supply"; 
                    attribute :>> isOriented = false; 
                    allocation 'c4cf22f1-665d-4534-bbf6-24222c0c963c' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'64b15f15-9e6b-45c9-a99d-4a9fc7c96498'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'857d0463-0f1a-451b-9fd5-8cbcf02917f9'; 
                    allocation '42f7fdc0-7065-42ba-a222-c0fbfc3df1af' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'848c6d70-a521-4e76-b37f-db1f66a7d33f'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'857d0463-0f1a-451b-9fd5-8cbcf02917f9'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'857d0463-0f1a-451b-9fd5-8cbcf02917f9'.'c4cf22f1-665d-4534-bbf6-24222c0c963c',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'857d0463-0f1a-451b-9fd5-8cbcf02917f9'.'42f7fdc0-7065-42ba-a222-c0fbfc3df1af'); 
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat'); 
                }  
                interface '1eb7201c-b08f-403f-958b-00a4fd5430ac' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 3'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'CP 1' { 
                    @CapellaID { eid = "1eb7201c-b08f-403f-958b-00a4fd5430ac"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Distribution Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'ee03bcb2-04a6-439a-82e2-5fae320bf3df' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'ac813313-bca0-4595-8f85-f383afb2777d'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'1eb7201c-b08f-403f-958b-00a4fd5430ac'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'1eb7201c-b08f-403f-958b-00a4fd5430ac'.'ee03bcb2-04a6-439a-82e2-5fae320bf3df'); 
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'); 
                }  
                interface '43f19a2c-0ace-49fe-b83c-8876490494cd' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distribution System'.'CP 2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water USer'.'CP 1' { 
                    @CapellaID { eid = "43f19a2c-0ace-49fe-b83c-8876490494cd"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Drinking Water Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'eeb36c74-8a11-4ceb-a3f9-d0fd3b71546a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'81f67204-9e0d-4e9a-ad8e-292405c3a9d3'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'43f19a2c-0ace-49fe-b83c-8876490494cd'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'43f19a2c-0ace-49fe-b83c-8876490494cd'.'eeb36c74-8a11-4ceb-a3f9-d0fd3b71546a'); 
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'b6a2fce9-3dec-4d88-8361-3f9d881092ba' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'.'CP 4'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Waste Management System'.'CP 1' { 
                    @CapellaID { eid = "b6a2fce9-3dec-4d88-8361-3f9d881092ba"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Waste"; 
                    attribute :>> isOriented = false; 
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                }  
                interface '1a40bdef-2a11-40b2-ac2a-f1d6f47edb03' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 1'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'.'CP 2' { 
                    @CapellaID { eid = "1a40bdef-2a11-40b2-ac2a-f1d6f47edb03"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Supply"; 
                    attribute :>> isOriented = false; 
                    allocation '6683be69-1bbe-4848-9f05-fb70b4bf9f3d' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'547d85ad-580b-4bc2-9bec-9b50ae8b362e'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03'; 
                    allocation 'eded5a12-d7f0-45f0-801d-e85d7c5f03a2' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'918a6b1d-9e09-4b26-a687-074dfbc39431'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03'.'6683be69-1bbe-4848-9f05-fb70b4bf9f3d',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03'.'eded5a12-d7f0-45f0-801d-e85d7c5f03a2'); 
                }  
                interface '6500de7a-7c02-412b-ad04-591ca47983dc' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'.'CP 2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'.'CP 2' { 
                    @CapellaID { eid = "6500de7a-7c02-412b-ad04-591ca47983dc"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Operating Fuel"; 
                    attribute :>> isOriented = false; 
                    allocation 'f9b1785b-d41e-414c-8d53-2dfc3adb4354' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc'; 
                    allocation '4d76f6a4-c43d-45c4-87eb-943916752ca4' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'a54a5555-e490-4b1b-84e2-a4daf665e64e'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc'.'f9b1785b-d41e-414c-8d53-2dfc3adb4354',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc'.'4d76f6a4-c43d-45c4-87eb-943916752ca4'); 
                }  
            } 
            package  'System Functions' {
                @PackageMeta {
                    type = "SystemFunctionPkg";
                } 
                @CapellaID { eid = "64e4d2dc-9711-4eba-b7cb-f20a5104d7eb"; } 
                action 'Root System Function' : SystemFunction  { 
                    @CapellaID { eid = "cff19a85-4a4d-415f-a676-2e9540906c79"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface '547d85ad-580b-4bc2-9bec-9b50ae8b362e' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'.'outWater Control'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'inWater Control' { 
                        @CapellaID { eid = "547d85ad-580b-4bc2-9bec-9b50ae8b362e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Supply"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Water Supply Control'); 
                    }  
                    interface 'a54a5555-e490-4b1b-84e2-a4daf665e64e' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'.'outPower Control'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'inPower Control' { 
                        @CapellaID { eid = "a54a5555-e490-4b1b-84e2-a4daf665e64e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat Supply"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Power Supply Control'); 
                    }  
                    interface '9c6bf30a-a7b0-452a-9cf1-39b59b4f1164' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'outDirty Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'inDirty Water' { 
                        @CapellaID { eid = "9c6bf30a-a7b0-452a-9cf1-39b59b4f1164"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '848c6d70-a521-4e76-b37f-db1f66a7d33f' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'outOperating Power'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'inOperating Power' { 
                        @CapellaID { eid = "848c6d70-a521-4e76-b37f-db1f66a7d33f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Operating Power',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface 'ac813313-bca0-4595-8f85-f383afb2777d' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "ac813313-bca0-4595-8f85-f383afb2777d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Distilled Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '3a30895d-4a5b-4709-8ffe-efaac4190c94' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "3a30895d-4a5b-4709-8ffe-efaac4190c94"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '81f67204-9e0d-4e9a-ad8e-292405c3a9d3' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Get Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "81f67204-9e0d-4e9a-ad8e-292405c3a9d3"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '31c9484d-7da6-47b5-a0ab-6be7393929f7' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Maintain and Serivce System'.'outMaintainance'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Allow maintenance and service'.'inMaintainance' { 
                        @CapellaID { eid = "31c9484d-7da6-47b5-a0ab-6be7393929f7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                         
                    }  
                    interface '0e87d851-a1e3-410e-931e-8e9b01320d09' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Install System'.'outInstallation'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Deploymentability'.'inInstallation' { 
                        @CapellaID { eid = "0e87d851-a1e3-410e-931e-8e9b01320d09"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                         
                    }  
                    interface '7fe37648-029a-4dc9-959e-79098d30f707' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Certify System'.'outCertification'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Deploymentability'.'inCertification' { 
                        @CapellaID { eid = "7fe37648-029a-4dc9-959e-79098d30f707"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                         
                    }  
                    interface '64b15f15-9e6b-45c9-a99d-4a9fc7c96498' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FIP 1' { 
                        @CapellaID { eid = "64b15f15-9e6b-45c9-a99d-4a9fc7c96498"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface '8682b777-71ab-4c88-afb8-9fc1d147ef95' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Discharge Residue'.'FIP 1' { 
                        @CapellaID { eid = "8682b777-71ab-4c88-afb8-9fc1d147ef95"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Residue"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                    }  
                    interface '918a6b1d-9e09-4b26-a687-074dfbc39431' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Water Source'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'FIP 2' { 
                        @CapellaID { eid = "918a6b1d-9e09-4b26-a687-074dfbc39431"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface 'de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Heat Source'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'FIP 2' { 
                        @CapellaID { eid = "de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Fuel"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'); 
                    }  
                    constraint '89d4dd11-21a7-45d7-b43a-f09a9fe19329' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "89d4dd11-21a7-45d7-b43a-f09a9fe19329"; }
                        
                    } 
                    action 'Distill Water' : SystemFunction  { 
                        @CapellaID { eid = "3e375192-ed8a-4c38-840f-56d2a98006ac"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        interface '7e19530c-f0f6-4f68-a246-25a824431ce4' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'FOP 1'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FIP 2' { 
                            @CapellaID { eid = "7e19530c-f0f6-4f68-a246-25a824431ce4"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Hot Water"; 
                             
                            ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water',
                            'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'); 
                        }  
                        interface '1fb9e95d-b24c-4807-92c7-7b1a0c42c14e' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FOP 1'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue'.'FIP 1' { 
                            @CapellaID { eid = "1fb9e95d-b24c-4807-92c7-7b1a0c42c14e"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Sludge"; 
                             
                            ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                        }  
                        interface '560929ef-3d6b-436b-a8fe-65a61de8c3ca' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FOP 2'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'.'FIP 1' { 
                            @CapellaID { eid = "560929ef-3d6b-436b-a8fe-65a61de8c3ca"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Steam"; 
                             
                        }  
                        interface 'd76fe349-15dc-4981-84a7-14aa89282482' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'.'FOP 2'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'FIP 3' { 
                            @CapellaID { eid = "d76fe349-15dc-4981-84a7-14aa89282482"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Recovered Heat"; 
                             
                            ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat'); 
                        }  
                        out port 'outWaste' : FunctionOutputPort  { 
                            @CapellaID { eid = "8651712f-46b5-4183-b691-2d8ad318fb8b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        action 'Heat Water' : SystemFunction  { 
                            @CapellaID { eid = "26ade7ef-0b6b-4bbe-8967-fe46732b4a1f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "bf0e830c-cf24-49e9-a8fd-1ea7982bba76"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'inOperating Power' : FunctionInputPort  { 
                                @CapellaID { eid = "1201b032-d668-4687-8363-b8e30ed0568c"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'inDirty Water' : FunctionInputPort  { 
                                @CapellaID { eid = "ed3bbd06-7b8e-4751-a70c-05f7d1d6f476"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                @CapellaID { eid = "5fda1bad-c3bb-41a7-9057-6b55ffce059a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'FOP 1'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'inOperating Power',
                            'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'inDirty Water',
                            'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'.'FIP 3'); 
                             
                        }  
                        action 'Boil Water' : SystemFunction  { 
                            @CapellaID { eid = "ab93a904-5ac6-43c7-b001-ac881365998a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "91678a37-e2ba-495c-947e-02fc34f23062"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "a7dc6cd7-13bf-4e05-bc18-a177b45df8fe"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "f2bc3f47-18a7-4674-b54d-0b0f40d03966"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "34bfc278-d8a4-41a5-adb5-f65bca461004"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FOP 1',
                            'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FIP 1',
                            'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'.'FIP 2'); 
                             
                        }  
                        action 'Condense Steam' : SystemFunction  { 
                            @CapellaID { eid = "f4a171c0-2ad4-4625-b898-b372fb86b315"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "cd6fca63-4ad8-48f4-a1f1-b50f4a0a7acd"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "5d29c47a-5376-4df2-9a03-a29487886c8c"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "dbfdab80-9a69-4e48-afa3-4675fe9536e3"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water',
                            'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'.'FIP 1'); 
                             
                        }  
                        action 'Drain Residue' : SystemFunction  { 
                            @CapellaID { eid = "3892f119-a054-4d8c-8083-d33051a13413"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "493f8fb8-8ac3-4543-9432-a75fc7bff301"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "55d8e039-50cb-43bf-8b80-d1ddad40e76d"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue'.'FIP 1'); 
                             
                        }  
                        ref :>> ownedFunctionalExchanges =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'7e19530c-f0f6-4f68-a246-25a824431ce4',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'1fb9e95d-b24c-4807-92c7-7b1a0c42c14e',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'560929ef-3d6b-436b-a8fe-65a61de8c3ca',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'d76fe349-15dc-4981-84a7-14aa89282482'); 
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'outWaste'); 
                         
                        ref :>> ownedFunctions =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue'); 
                    }  
                    action 'Allow maintenance and service' : SystemFunction  { 
                        @CapellaID { eid = "213addae-a25f-4815-9f28-97296107a24b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inMaintainance' : FunctionInputPort  { 
                            @CapellaID { eid = "389537d0-eb08-4792-9355-690ee801ddac"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Allow maintenance and service'.'inMaintainance'); 
                         
                    }  
                    action 'Maintain and Serivce System' : SystemFunction  { 
                        @CapellaID { eid = "34da1612-55b9-4c2d-96e1-c248406c6fa9"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outMaintainance' : FunctionOutputPort  { 
                            @CapellaID { eid = "04da85ef-d654-466f-b436-16ba71c6b3a6"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Maintain and Serivce System'.'outMaintainance'); 
                         
                    }  
                    action 'Install System' : SystemFunction  { 
                        @CapellaID { eid = "dbde855b-8a2d-44bd-b633-a159a0a2d3db"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outInstallation' : FunctionOutputPort  { 
                            @CapellaID { eid = "5c6b50da-2b2d-4cc6-b203-3da3827333aa"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Install System'.'outInstallation'); 
                         
                    }  
                    action 'Certify System' : SystemFunction  { 
                        @CapellaID { eid = "e94ff987-4640-43da-b09c-6d77c06fbf22"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outCertification' : FunctionOutputPort  { 
                            @CapellaID { eid = "e1fc8552-5bbe-4050-8bc7-9aea2ed62f6a"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Certify System'.'outCertification'); 
                         
                    }  
                    action 'Provide Deploymentability' : SystemFunction  { 
                        @CapellaID { eid = "5bb0b861-3b70-4d56-b614-b2dbe1b89242"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inInstallation' : FunctionInputPort  { 
                            @CapellaID { eid = "c9744674-c432-4449-9584-720a295fc8a7"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'inCertification' : FunctionInputPort  { 
                            @CapellaID { eid = "fe341f42-69e4-4bba-bfda-29e2050c6483"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Deploymentability'.'inInstallation',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Deploymentability'.'inCertification'); 
                         
                    }  
                    action 'Operate Distiller' : SystemFunction  { 
                        @CapellaID { eid = "7237d33f-118d-4372-b1c0-c80ee9576038"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outWater Control' : FunctionOutputPort  { 
                            @CapellaID { eid = "01c1d2ba-eb88-4c70-b481-146e4f9a9b4a"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'outPower Control' : FunctionOutputPort  { 
                            @CapellaID { eid = "e1e2cbe8-4bea-412d-988a-51cb73cb8ba4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'.'outWater Control',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'.'outPower Control'); 
                         
                    }  
                    action 'Provide Water' : SystemFunction  { 
                        @CapellaID { eid = "e544c9c3-cf9e-4d87-b278-3e99a2897285"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outDirty Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "0e68b650-224e-4892-b3a9-407ba84cf803"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'inWater Control' : FunctionInputPort  { 
                            @CapellaID { eid = "0f364aca-b2d7-4013-81d3-4e0ed8f9dc47"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "e86c551d-9a5a-45ca-8484-5e417ffda7b0"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'outDirty Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'inWater Control',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'.'FIP 2'); 
                         
                    }  
                    action 'Generate Heat' : SystemFunction  { 
                        @CapellaID { eid = "f815a040-1778-41a8-ad5c-7f75c4f1f94c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outOperating Power' : FunctionOutputPort  { 
                            @CapellaID { eid = "2b29c814-4ee1-4f71-8db9-17620ae32a86"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "84fbd8d0-1952-407d-a6d0-57735d47bd53"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'inPower Control' : FunctionInputPort  { 
                            @CapellaID { eid = "563f27b1-e52e-4860-9c2f-fdadcb9a6ad8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "1fd0710b-dbd1-414f-acc0-8de2bbf6ca16"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'outOperating Power',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'FOP 2'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'inPower Control',
                        'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'.'FIP 2'); 
                         
                    }  
                    action 'Store Clean Water' : SystemFunction  { 
                        @CapellaID { eid = "4add1e35-e802-4804-ad1a-c99a087845ba"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "4c7bf946-5b9b-4e70-8f42-54de9202ac7a"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "840c9547-258f-4e4d-8424-e347fd8eb8ae"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water'.'outSafe Drinking Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Distribute Clean Water' : SystemFunction  { 
                        @CapellaID { eid = "02b1c95c-de6a-40f1-a4ca-7f2e22810a9d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "69bcc13f-dca9-48ac-9d35-1ef04a153f68"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "0a26b90a-1eaa-4b5f-b1c3-671d24a35706"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water'.'outSafe Drinking Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Get Clean Water' : SystemFunction  { 
                        @CapellaID { eid = "87971a35-3a30-4488-bae2-810e31603774"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "23747ed5-590f-4f72-bee5-e01ded5f0934"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Get Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Discharge Residue' : SystemFunction  { 
                        @CapellaID { eid = "8ca4f903-4778-48a8-8533-74df412aec94"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "b146c63b-2e30-4a34-9617-32b9b98aaa29"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Discharge Residue'.'FIP 1'); 
                         
                    }  
                    action 'Tend Water Source' : SystemFunction  { 
                        @CapellaID { eid = "8d5a02f4-c208-4350-94f5-17e96d65e7a2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "dbf393d7-7472-48ae-8383-87ab4a4863a1"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Water Source'.'FOP 1'); 
                         
                    }  
                    action 'Tend Heat Source' : SystemFunction  { 
                        @CapellaID { eid = "762c8246-0433-43b3-ba16-52893962b309"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "4849ae36-4a9d-4df9-99ba-465348d82e01"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Tend Heat Source'.'FOP 1'); 
                         
                    }  
                    action 'Test Chain - Water Distillation and Distribution' : FunctionalChain  { 
                        @CapellaID { eid = "a85c9767-92fc-48c8-a159-f8bccd8875fd"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '4e2fc1a4-10d2-4293-bc45-abf3edc64fed' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Operate Distiller'; 
                        connection '2de06398-2414-41a1-af64-82f32e6c0899' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4e2fc1a4-10d2-4293-bc45-abf3edc64fed'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'702345ab-f505-4115-98f2-18eb734127f8' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'547d85ad-580b-4bc2-9bec-9b50ae8b362e';

                            } 
                        ref action '702345ab-f505-4115-98f2-18eb734127f8' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Provide Water'; 
                        connection '8cd7a0f0-98ac-4f38-ae70-b53052ad002e' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4e2fc1a4-10d2-4293-bc45-abf3edc64fed'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'d87df202-3094-4756-ba48-613ac109e742' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'a54a5555-e490-4b1b-84e2-a4daf665e64e';

                            } 
                        ref action 'd87df202-3094-4756-ba48-613ac109e742' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Generate Heat'; 
                        connection '8680608d-4b70-49f1-b6d9-08457f9305a8' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'702345ab-f505-4115-98f2-18eb734127f8'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'430094c7-3e78-4c63-a66a-d9241d40d8c6' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'9c6bf30a-a7b0-452a-9cf1-39b59b4f1164';

                            } 
                        connection '931cef19-8458-4168-be83-74d7d7ebc50c' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'d87df202-3094-4756-ba48-613ac109e742'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'430094c7-3e78-4c63-a66a-d9241d40d8c6' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'848c6d70-a521-4e76-b37f-db1f66a7d33f';

                            } 
                        connection 'db13d494-7d46-439b-91c6-d894ddafbb59' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4b830b6a-de00-4826-a24a-1c8e47b35f5c'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'1684f307-a032-4fb9-9bda-7b5b43d5c58c' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'ac813313-bca0-4595-8f85-f383afb2777d';

                            } 
                        ref action '1684f307-a032-4fb9-9bda-7b5b43d5c58c' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Store Clean Water'; 
                        connection '104e0e50-69c3-4b19-b5f5-0611ddd6e907' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'1684f307-a032-4fb9-9bda-7b5b43d5c58c'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'d9305b1a-7497-4e36-b431-558e63134620' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'3a30895d-4a5b-4709-8ffe-efaac4190c94';

                            } 
                        ref action 'd9305b1a-7497-4e36-b431-558e63134620' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distribute Clean Water'; 
                        connection '562955a3-da1f-42be-8519-b73f571b9a04' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'d9305b1a-7497-4e36-b431-558e63134620'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'12b6018a-31de-49a7-8963-4af9692a7a50' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'81f67204-9e0d-4e9a-ad8e-292405c3a9d3';

                            } 
                        ref action '12b6018a-31de-49a7-8963-4af9692a7a50' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Get Clean Water'; 
                        ref action '430094c7-3e78-4c63-a66a-d9241d40d8c6' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'; 
                        ref action '4b830b6a-de00-4826-a24a-1c8e47b35f5c' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'; 
                        ref action '4f67ed66-76ec-4e96-8ac7-65428a433eab' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'; 
                        connection 'bb3bb12b-e951-4bd5-89d1-5abf8b25f954' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'430094c7-3e78-4c63-a66a-d9241d40d8c6'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4f67ed66-76ec-4e96-8ac7-65428a433eab' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'7e19530c-f0f6-4f68-a246-25a824431ce4';

                            } 
                        connection '3c0b4b65-0591-4e71-b77c-9101b8cef2dd' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4f67ed66-76ec-4e96-8ac7-65428a433eab'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'d4c6dbff-a9ba-4950-9d41-5e5c88abf34a' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'1fb9e95d-b24c-4807-92c7-7b1a0c42c14e';

                            } 
                        ref action 'fab1701c-c7d1-4ba5-a89f-85c524df833c' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Discharge Residue'; 
                        connection '3e63a3fa-dd28-4f0a-82bf-ec278c69eec9' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'d4c6dbff-a9ba-4950-9d41-5e5c88abf34a'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'fab1701c-c7d1-4ba5-a89f-85c524df833c' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'8682b777-71ab-4c88-afb8-9fc1d147ef95';

                            } 
                        connection 'dba1b836-43fe-4bf4-affe-ccf4d2b82778' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'d87df202-3094-4756-ba48-613ac109e742'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4f67ed66-76ec-4e96-8ac7-65428a433eab' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'64b15f15-9e6b-45c9-a99d-4a9fc7c96498';

                            } 
                        ref action 'd4c6dbff-a9ba-4950-9d41-5e5c88abf34a' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Drain Residue'; 
                        connection '19a51382-545b-4bb5-9dd0-0eeb2295579c' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4f67ed66-76ec-4e96-8ac7-65428a433eab'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4b830b6a-de00-4826-a24a-1c8e47b35f5c' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'560929ef-3d6b-436b-a8fe-65a61de8c3ca';

                            } 
                        ref action 'b4889caa-f53c-41ca-a245-efa7f940b901' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'; 
                        connection 'fddf95b5-9c62-429d-9b3a-202d5d3797b7' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'4b830b6a-de00-4826-a24a-1c8e47b35f5c'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'.'b4889caa-f53c-41ca-a245-efa7f940b901' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'d76fe349-15dc-4981-84a7-14aa89282482';

                            } 
                         
                    }  
                    action 'Maintain System' : FunctionalChain  { 
                        @CapellaID { eid = "e6dd4046-a534-4d0e-9d93-1187e29268b3"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '945f832c-9716-4443-ad58-23772c7c6e1c' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Maintain and Serivce System'; 
                        connection '636aec38-4430-436e-ac2c-adfc690f1315' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Maintain System'.'945f832c-9716-4443-ad58-23772c7c6e1c'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Maintain System'.'d980f9b1-1eab-4384-9a66-46f8347a6e6b' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'31c9484d-7da6-47b5-a0ab-6be7393929f7';

                            } 
                        ref action 'd980f9b1-1eab-4384-9a66-46f8347a6e6b' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Allow maintenance and service'; 
                         
                    }  
                    ref :>> ownedFunctionalExchanges =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'547d85ad-580b-4bc2-9bec-9b50ae8b362e',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'a54a5555-e490-4b1b-84e2-a4daf665e64e',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'9c6bf30a-a7b0-452a-9cf1-39b59b4f1164',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'848c6d70-a521-4e76-b37f-db1f66a7d33f',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'ac813313-bca0-4595-8f85-f383afb2777d',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'3a30895d-4a5b-4709-8ffe-efaac4190c94',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'81f67204-9e0d-4e9a-ad8e-292405c3a9d3',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'31c9484d-7da6-47b5-a0ab-6be7393929f7',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'0e87d851-a1e3-410e-931e-8e9b01320d09',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'7fe37648-029a-4dc9-959e-79098d30f707',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'64b15f15-9e6b-45c9-a99d-4a9fc7c96498',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'8682b777-71ab-4c88-afb8-9fc1d147ef95',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'918a6b1d-9e09-4b26-a687-074dfbc39431',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7'); 
                     
                    ref :>> ownedConstraints =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'89d4dd11-21a7-45d7-b43a-f09a9fe19329'); 
                     
                     
                }  
            } 
            package  'Missions' {
                @PackageMeta {
                    type = "MissionPkg";
                } 
                @CapellaID { eid = "8578ef91-d191-4a69-a23a-57ae07d55581"; } 
                use case 'Distill Water' : Mission  { 
                    @CapellaID { eid = "5d5becc0-5471-4dd5-8c70-8adee15eabf9"; } 
                    include 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Capabilities'::'Operate Distiller'; 
                    include 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Capabilities'::'Tend Heat Source'; 
                    include 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Capabilities'::'Tend Water Source'; 
                    actor 'Operator' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Operator'; 
                    actor 'Water Distiller' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'; 
                }  
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "4a903dd7-9e5d-4d75-b909-6d087a616a5e"; } 
                item 'ExchangeItem 1' : ExchangeItem  { 
                    @CapellaID { eid = "5c2a8259-14bd-49a1-9418-e323bf98a210"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                }  
                item 'ExchangeItem 2' : ExchangeItem  { 
                    @CapellaID { eid = "64398932-3467-4fdf-b3ed-3f6dac91a7d8"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::SHARED_DATA; 
                    attribute :>> isFinal = false; 
                }  
                item 'Interface 1' : InterfaceItem  { 
                    @CapellaID { eid = "2ae116a4-77dc-4302-8b6a-975de57c67ee"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isStructural = true; 
                    allocation '836c2904-97e5-4671-b9a7-01dbbfd0227f' : ExchangeItemAllocation
                        allocate allocatedItem ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Interfaces'::'ExchangeItem 1'
                        to allocatingInterface ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Interfaces'::'Interface 1'; 
                    allocation 'b1881143-0ce5-4157-b688-e21e2c018165' : ExchangeItemAllocation
                        allocate allocatedItem ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Interfaces'::'ExchangeItem 2'
                        to allocatingInterface ::> 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Interfaces'::'Interface 1'; 
                    ref :>> ownedExchangeItemAllocations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Interfaces'::'Interface 1'.'836c2904-97e5-4671-b9a7-01dbbfd0227f',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Interfaces'::'Interface 1'.'b1881143-0ce5-4157-b688-e21e2c018165'); 
                }  
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "5dc71279-2a3d-4d75-b08d-85a75cafd753"; sid = "5dc71279-2a3d-4d75-b08d-85a75cafd753"; } 
                attribute <'deg C'> 'deg C' : ARCADIAUnit; 
                attribute <'gm/s'> 'gm/s' : ARCADIAUnit; 
                attribute <'cal/gm'> 'cal/gm' : ARCADIAUnit; 
                attribute <'cal/s'> 'cal/s' : ARCADIAUnit; 
                attribute <'cal/(gm*dec C)'> 'cal/(gm*dec C)' : ARCADIAUnit; 
                attribute <'Unit'> 'Unit' : ARCADIAUnit; 
                item 'Dirty Water' : ExchangeItem  { 
                    @CapellaID { eid = "b90a6c0a-7c54-4243-b241-b6db3b28eddf"; sid = "b90a6c0a-7c54-4243-b241-b6db3b28eddf"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'dirty water' : ExchangeItemElement { 
                        @CapellaID { eid = "354dea61-8063-4d81-a0be-b134e5138c61"; sid = "354dea61-8063-4d81-a0be-b134e5138c61"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty H2O';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'.'dirty water'); 
                }  
                item 'Steam' : ExchangeItem  { 
                    @CapellaID { eid = "f6f15095-934e-4403-9f81-e08a542982d1"; sid = "f6f15095-934e-4403-9f81-e08a542982d1"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'steam' : ExchangeItemElement { 
                        @CapellaID { eid = "21438c2b-4c43-4a3f-a8c3-e45bd80e5093"; sid = "21438c2b-4c43-4a3f-a8c3-e45bd80e5093"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Steam';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Steam'.'steam'); 
                }  
                item 'Clean Water' : ExchangeItem  { 
                    @CapellaID { eid = "84ef2f4a-292c-411d-af60-6f435f618fd9"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'clean water' : ExchangeItemElement { 
                        @CapellaID { eid = "1840bba9-fd52-4156-8f95-fe3a7f8088e5"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean H2O';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'.'clean water'); 
                }  
                item 'Sludge' : ExchangeItem  { 
                    @CapellaID { eid = "c34b9a7f-cc48-4ed6-8c29-8c8b74240c41"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'sludge' : ExchangeItemElement { 
                        @CapellaID { eid = "9dd1fa3c-4252-49a0-970f-e008d81f7ba7"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Residue';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'.'sludge'); 
                }  
                item 'Heat' : ExchangeItem  { 
                    @CapellaID { eid = "6be015bd-601f-4879-8882-86dbf93a4870"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::FLOW; 
                    attribute :>> isFinal = false; 
                    item 'heat' : ExchangeItemElement { 
                        @CapellaID { eid = "3c8996f7-092f-41e6-b3bf-853cf10772f0"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat'.'heat'); 
                }  
                item 'Water Supply Control' : ExchangeItem  { 
                    @CapellaID { eid = "4244686d-66ea-46ce-93b5-40dde918a3ab"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'water supply control' : ExchangeItemElement { 
                        @CapellaID { eid = "c61f6ac4-93d5-4ac9-ac99-6b468efa75c8"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'HMI Control';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Water Supply Control'.'water supply control'); 
                }  
                item 'Heat Control' : ExchangeItem  { 
                    @CapellaID { eid = "766dbe28-ace1-4567-af3e-02b2449d252a"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'heat control' : ExchangeItemElement { 
                        @CapellaID { eid = "f98edeb6-1ec7-44b3-a041-b3b3d31ad961"; } 
                        attribute :>> isComposite = true; 
                        attribute :>> direction = ParameterDirection::UNSET; 
                        attribute :>> kind = ElementKind::TYPE; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                         
                         
                        ref :>> abstractType = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'HMI Control';
                    } 
                    ref :>> ownedElements =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'.'heat control'); 
                }  
                package  'Predefined Types' {
                    @PackageMeta {
                        type = "DataPkg";
                    } 
                    @CapellaID { eid = "b0df2a0e-4552-4748-ab72-0c3f5e90e395"; } 
                } 
                item 'Dirty H2O' :> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'H2O' { 
                    @CapellaID { eid = "1de9fc06-b0a9-49e3-b732-6bfb488a3d50"; sid = "1de9fc06-b0a9-49e3-b732-6bfb488a3d50"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                     
                }  
                item 'Steam' :> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'H2O' { 
                    @CapellaID { eid = "eb9e6454-d420-4c54-a6c6-b8a6f21f5640"; sid = "eb9e6454-d420-4c54-a6c6-b8a6f21f5640"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                     
                }  
                item 'Clean H2O' :> 'Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'H2O' { 
                    @CapellaID { eid = "3c043976-fa48-4330-b7f9-ab5bb8ca521a"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                     
                }  
                item 'Heat' : Class { 
                    @CapellaID { eid = "8b15ae46-cdb3-4874-89a3-b70e7093f748"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'Residue' : Class { 
                    @CapellaID { eid = "01a07fc8-96e3-4866-a846-c76dfce0bac5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'HMI Control' : Class { 
                    @CapellaID { eid = "6667cdec-c104-4412-845a-5a3ac757c6b5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityPkg";
                } 
                @CapellaID { eid = "37e132ab-a77a-4cba-8f46-563c2a7b7110"; } 
                constraint 'bd6b53f3-5db2-4f66-9ede-c5a75175ea71' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "bd6b53f3-5db2-4f66-9ede-c5a75175ea71"; }
                    
                } 
                use case 'Operate Distiller' : Capability { 
                    @CapellaID { eid = "d3883551-ac11-4bb9-901e-6e6128102de5"; } 
                    ref action '2ec2ec95-cbfc-4dd1-a0f7-9cd727b587eb' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'; 
                    ref action 'b881e07b-a6e4-482e-b46c-21f34a7e687e' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Boil Water'; 
                    ref action '7071b5a2-dacb-4468-a910-f354327426d6' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Condense Steam'; 
                    ref action '79ac9b3a-7469-4757-a63b-9e3cf93d31f7' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'System Functions'::'Root System Function'.'Distill Water'.'Heat Water'; 
                    actor 'Water Distiller' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'; 
                     
                     
                }  
                use case 'Tend Heat Source' : Capability { 
                    @CapellaID { eid = "9d578567-eb36-4c44-95dc-8604e60b8e57"; } 
                    actor 'Heat Source' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Heat Source'; 
                    actor 'Water Distiller' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'; 
                }  
                use case 'Tend Water Source' : Capability { 
                    @CapellaID { eid = "2ab03461-4d7c-4d23-b97c-71d15d485ea0"; } 
                    actor 'Water Source' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Source'; 
                    actor 'Water Distiller' = 'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Structure'::'Water Distiller'; 
                }  
            } 
        } 
        package  'Logical Architecture' {
            @PackageMeta {
                type = "LogicalArchitecture";
            } 
            @CapellaID { eid = "cea0a1b8-45fe-4d43-98d0-e45bbcd1f401"; sid = "cea0a1b8-45fe-4d43-98d0-e45bbcd1f401"; } 
            package  'Structure' {
                @PackageMeta {
                    type = "LogicalComponentPkg";
                } 
                @CapellaID { eid = "71cc5100-df26-4e48-8f03-91e8f7d64e3a"; } 
                interface '38a7788a-3ef0-4a10-ad41-a1befb9aa9ed' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'dirty'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'c in' { 
                    @CapellaID { eid = "38a7788a-3ef0-4a10-ad41-a1befb9aa9ed"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'aa69b4b2-7491-469d-9c7a-1bf802b9e46c' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'ee4ef5c7-9d15-4012-95f0-4381411f7d11'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'38a7788a-3ef0-4a10-ad41-a1befb9aa9ed'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'38a7788a-3ef0-4a10-ad41-a1befb9aa9ed'.'aa69b4b2-7491-469d-9c7a-1bf802b9e46c'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                }  
                interface '2015732c-1abd-41ed-a97c-2055ae160b54' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'CP 2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water USer'.'CP 1' { 
                    @CapellaID { eid = "2015732c-1abd-41ed-a97c-2055ae160b54"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Faucet"; 
                    attribute :>> isOriented = false; 
                    allocation '8356e117-7725-4455-8728-dae35c7778d2' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'404da265-10b8-45b6-afe1-37adddb71c71'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'2015732c-1abd-41ed-a97c-2055ae160b54'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'2015732c-1abd-41ed-a97c-2055ae160b54'.'8356e117-7725-4455-8728-dae35c7778d2'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'fd50370d-e785-4377-bdba-67841a8c013c' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 1'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'CP 2' { 
                    @CapellaID { eid = "fd50370d-e785-4377-bdba-67841a8c013c"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Supply"; 
                    attribute :>> isOriented = false; 
                    allocation 'b91b07a7-14c1-4e2b-80de-4fcf5394a475' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'8e71177c-e6be-4cec-b557-4a34f95dc583'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'; 
                    allocation '4584f3a4-8c64-4ab5-944f-125201ffdc6a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'52845e7f-0f6e-463e-ad9f-fc069d9e47ef'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'.'b91b07a7-14c1-4e2b-80de-4fcf5394a475',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'.'4584f3a4-8c64-4ab5-944f-125201ffdc6a'); 
                     
                }  
                interface 'fa5aaeef-badc-4744-9f48-1020193f87c6' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'CP 2' { 
                    @CapellaID { eid = "fa5aaeef-badc-4744-9f48-1020193f87c6"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Operating Fuel"; 
                    attribute :>> isOriented = false; 
                    allocation '2df983cd-2f8b-4033-bf2d-1da746b7dedf' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'295cbfcc-9b18-4c51-b1ab-605ccb4c1935'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'; 
                    allocation 'fa58bd87-e4e5-41ee-8238-0a8b130fa737' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'2ff7c5f7-1d47-495e-9625-bda1154abb5c'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'.'2df983cd-2f8b-4033-bf2d-1da746b7dedf',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'.'fa58bd87-e4e5-41ee-8238-0a8b130fa737'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Water Supply Control'); 
                }  
                interface '85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain'.'out'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Waste Management System'.'sludge' { 
                    @CapellaID { eid = "85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Waste"; 
                    attribute :>> isOriented = false; 
                    allocation '30d1dd18-a03d-4f01-b765-1ee4feebc9b6' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'01d0fa94-76dd-4485-8e26-b3c129250abd'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a'.'30d1dd18-a03d-4f01-b765-1ee4feebc9b6'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                }  
                interface '228ad0de-a4ed-43c9-bf0f-ab2e423ae615' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'CP 4'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'CP 3' { 
                    @CapellaID { eid = "228ad0de-a4ed-43c9-bf0f-ab2e423ae615"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Distribution Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '31fed5a1-d669-4f28-b1d4-700d2cbc52a5' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'495e683d-7b8f-4673-bf53-f31463b9f382'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'228ad0de-a4ed-43c9-bf0f-ab2e423ae615'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'228ad0de-a4ed-43c9-bf0f-ab2e423ae615'.'31fed5a1-d669-4f28-b1d4-700d2cbc52a5'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'c6e98fb9-2f71-4412-9e1a-191c1c344611' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'q in'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'heater' { 
                    @CapellaID { eid = "c6e98fb9-2f71-4412-9e1a-191c1c344611"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Heat Supply"; 
                    attribute :>> isOriented = false; 
                    allocation '5ccd2b0c-9b1b-4149-8e83-9507af533adb' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'e062898a-9114-495b-9505-4e71046a16b7'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'c6e98fb9-2f71-4412-9e1a-191c1c344611'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'c6e98fb9-2f71-4412-9e1a-191c1c344611'.'5ccd2b0c-9b1b-4149-8e83-9507af533adb'); 
                }  
                interface '709f24a8-b26b-43ed-a85f-b6ec0148fd35' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'FOP 2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Excess Water Discharge'.'FIP 1' { 
                    @CapellaID { eid = "709f24a8-b26b-43ed-a85f-b6ec0148fd35"; sid = "709f24a8-b26b-43ed-a85f-b6ec0148fd35"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Bypass"; 
                    attribute :>> isOriented = false; 
                    allocation '958c3c78-0805-46ad-9315-8541242c123a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'788bca82-4484-4a3e-bcc5-c2324542e256'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'709f24a8-b26b-43ed-a85f-b6ec0148fd35'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'709f24a8-b26b-43ed-a85f-b6ec0148fd35'.'958c3c78-0805-46ad-9315-8541242c123a'); 
                }  
                part 'Logical System' : LogicalComponent { 
                    @CapellaID { eid = "5cfbda98-dcad-4d7f-8423-34b6f0692447"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    interface '68ab1776-6210-4874-b63c-345f4bff3778' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'bottom'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain'.'in' { 
                        @CapellaID { eid = "68ab1776-6210-4874-b63c-345f4bff3778"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Drainage"; 
                        attribute :>> isOriented = false; 
                        allocation 'e2e36d91-0772-4df8-84c4-5cd1db55e1bd' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'134d7320-3277-4493-99f2-e729116897d5'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'68ab1776-6210-4874-b63c-345f4bff3778'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'68ab1776-6210-4874-b63c-345f4bff3778'.'e2e36d91-0772-4df8-84c4-5cd1db55e1bd'); 
                    }  
                    interface 'd362cc95-3dac-44f3-a392-7abab0a1b620' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'top'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'h in' { 
                        @CapellaID { eid = "d362cc95-3dac-44f3-a392-7abab0a1b620"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Steam"; 
                        attribute :>> isOriented = false; 
                        constraint '1d9b8e84-665a-4955-8cf0-a4f3baf0daf1' : CapellaConstraint { 
                            language "capella:linkedText" /* Phase Change Heat Transfer=(<a href="ccfaa68b-325b-4984-8804-ced9f3b18819"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                            @CapellaID { eid = "1d9b8e84-665a-4955-8cf0-a4f3baf0daf1"; }
                            ref :>> constrainedElements =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'228ad0de-a4ed-43c9-bf0f-ab2e423ae615');
                            
                        } 
                        constraint 'c3bf2d63-f1ea-48a5-a88f-cb561fe08a84' : CapellaConstraint { 
                            language "capella:linkedText" /* Phase Change Heat Transfer = (<a href="6e33c9fe-194b-45c0-832f-e874d2b9b80e"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                            @CapellaID { eid = "c3bf2d63-f1ea-48a5-a88f-cb561fe08a84"; }
                            ref :>> constrainedElements =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'d362cc95-3dac-44f3-a392-7abab0a1b620');
                            
                        } 
                        allocation '3bbf0db1-f7ba-410c-a792-be3a48817695' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'df2902c9-85f5-4e56-a697-a92a5ed5dbd8'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'d362cc95-3dac-44f3-a392-7abab0a1b620'; 
                        ref :>> ownedConstraints =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'d362cc95-3dac-44f3-a392-7abab0a1b620'.'1d9b8e84-665a-4955-8cf0-a4f3baf0daf1',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'d362cc95-3dac-44f3-a392-7abab0a1b620'.'c3bf2d63-f1ea-48a5-a88f-cb561fe08a84'); 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'d362cc95-3dac-44f3-a392-7abab0a1b620'.'3bbf0db1-f7ba-410c-a792-be3a48817695'); 
                    }  
                    interface '2d1cc85b-0a82-4411-96e1-1fe63c50e52d' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'c out'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'main2' { 
                        @CapellaID { eid = "2d1cc85b-0a82-4411-96e1-1fe63c50e52d"; sid = "2d1cc85b-0a82-4411-96e1-1fe63c50e52d"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water"; 
                        attribute :>> isOriented = false; 
                        ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '0314e53d-1e02-4681-b8de-1b84f422af1e' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'out'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'middle' { 
                        @CapellaID { eid = "0314e53d-1e02-4681-b8de-1b84f422af1e"; sid = "0314e53d-1e02-4681-b8de-1b84f422af1e"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water"; 
                        attribute :>> isOriented = false; 
                        allocation '42c0d211-a4b9-4b3d-9747-6bf696b52e86' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'fabaeebd-3e11-4d73-913e-cc9d62e3caca'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'0314e53d-1e02-4681-b8de-1b84f422af1e'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'0314e53d-1e02-4681-b8de-1b84f422af1e'.'42c0d211-a4b9-4b3d-9747-6bf696b52e86'); 
                    }  
                    part 'Condenser' : LogicalComponent { 
                        @CapellaID { eid = "a4ba374a-6856-4b91-97ce-bfcced091748"; sid = "a4ba374a-6856-4b91-97ce-bfcced091748"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        constraint '99291201-b61b-445c-9367-795619600e7d' : CapellaConstraint { 
                            language "capella:linkedText" /* Single Phase Heat Transfer=((<a href="e8db4983-0311-4bca-bd16-5444cc0f2ace"/>-<a href="30dc3067-4626-44a4-9a2c-941f612a8500"/>)*<a href="0324618e-e8d5-4224-90fd-44ffa69e5a27"/>*<a href="1feb9267-7841-4e28-8506-55903b671bfe"/>) */
                            @CapellaID { eid = "99291201-b61b-445c-9367-795619600e7d"; sid = "99291201-b61b-445c-9367-795619600e7d"; }
                            
                            
                        } 
                        allocation 'ef0a433e-26d7-42ea-a132-cfda5027a013' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser';
                        perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam' ; 
                        allocation '29c5330d-a013-4162-b68e-afad7431c7ac' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser';
                        perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water' ; 
                        port 'h in' : ComponentPort { 
                            @CapellaID { eid = "03d02e35-5b19-4b50-b276-5f5297b9ef05"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '46162c83-3ebc-4708-b929-aa347273b0b9' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'h in'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'h in'.'46162c83-3ebc-4708-b929-aa347273b0b9'); 
                        }  
                        port 'c out' : ComponentPort { 
                            @CapellaID { eid = "84870778-2718-4b37-a941-3591ee34fa24"; sid = "84870778-2718-4b37-a941-3591ee34fa24"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                        }  
                        port 'CP 4' : ComponentPort { 
                            @CapellaID { eid = "ba88f439-49b5-4d9a-8b32-0d021d13084e"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'b1f5fa60-09d7-46f1-9af2-27edd461ff6f' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'CP 4'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'CP 4'.'b1f5fa60-09d7-46f1-9af2-27edd461ff6f'); 
                        }  
                        port 'c in' : ComponentPort { 
                            @CapellaID { eid = "2d6beade-8827-4a7e-82b6-8b720fe65fdb"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                             
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'ef0a433e-26d7-42ea-a132-cfda5027a013',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser'.'29c5330d-a013-4162-b68e-afad7431c7ac'); 
                    }  
                    part 'Evaporator' : LogicalComponent { 
                        @CapellaID { eid = "7a2d63d7-9645-4e97-9c97-95030c607f15"; sid = "7a2d63d7-9645-4e97-9c97-95030c607f15"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation '687ca8e1-1d25-4f6c-aed6-5b47171b340e' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator';
                        perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water' ; 
                        port 'bottom' : ComponentPort { 
                            @CapellaID { eid = "ab926d35-bbeb-4df3-9e3e-357fb0922a94"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '5b238627-81cb-4731-9cd1-9c3c727ce9f6' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FOP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'bottom'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'bottom'.'5b238627-81cb-4731-9cd1-9c3c727ce9f6'); 
                        }  
                        port 'top' : ComponentPort { 
                            @CapellaID { eid = "9a647f6c-aa60-4651-b001-3b4fa451aa2f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '373dfb0d-6ff3-4628-bc2c-cd7f53ad37b5' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FOP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'top'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'top'.'373dfb0d-6ff3-4628-bc2c-cd7f53ad37b5'); 
                        }  
                        port 'middle' : ComponentPort { 
                            @CapellaID { eid = "7fc0271e-a58b-4f02-9255-e3a3e1cb8350"; sid = "7fc0271e-a58b-4f02-9255-e3a3e1cb8350"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'f17dea7a-55ed-46b7-bda3-2ca961b29b8f' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FOP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'middle'; 
                            ref allocation 'cad000d6-77c5-4691-b57a-74cb2c1687dd' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'hotDirtyWater'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'middle'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'middle'.'f17dea7a-55ed-46b7-bda3-2ca961b29b8f',
                            'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'middle'.'cad000d6-77c5-4691-b57a-74cb2c1687dd'); 
                        }  
                        port 'heater' : ComponentPort { 
                            @CapellaID { eid = "47eb9d71-0549-45ae-bdb3-13eaf64c79b2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '4c394b9a-3e05-4a5d-b425-6bbe2800f71e' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'heater'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'heater'.'4c394b9a-3e05-4a5d-b425-6bbe2800f71e'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator'.'687ca8e1-1d25-4f6c-aed6-5b47171b340e'); 
                    }  
                    part 'Drain' : LogicalComponent { 
                        @CapellaID { eid = "8395f00c-1bcf-4c12-b4c9-443368b48ef6"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation '547a31ab-dc9d-401b-bef4-a27a92f58187' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain';
                        perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue' ; 
                        port 'in' : ComponentPort { 
                            @CapellaID { eid = "41d8b25c-22e8-43bb-87f8-7f4520508d8c"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'eadda30d-6c41-44f8-8ae5-c9cd5362d2d5' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain'.'in'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain'.'in'.'eadda30d-6c41-44f8-8ae5-c9cd5362d2d5'); 
                        }  
                        port 'out' : ComponentPort { 
                            @CapellaID { eid = "62ccbfb9-e0b6-4b76-a547-911519465833"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '994c03c3-4700-46dd-af63-1443f3a02a3a' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'.'FOP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain'.'out'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain'.'out'.'994c03c3-4700-46dd-af63-1443f3a02a3a'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain'.'547a31ab-dc9d-401b-bef4-a27a92f58187'); 
                    }  
                    part 'Diverter Assembly' : LogicalComponent { 
                        @CapellaID { eid = "ef85f143-2e21-41f7-bf9d-8c234a72f59e"; sid = "ef85f143-2e21-41f7-bf9d-8c234a72f59e"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        allocation '7274fdcc-08fe-4aa4-84a0-29c439c2a939' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly';
                        perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed' ; 
                        port 'main2' : ComponentPort { 
                            @CapellaID { eid = "8c767ab4-204b-446a-85ff-6083aefef647"; sid = "8c767ab4-204b-446a-85ff-6083aefef647"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'c21c01fc-6b34-4ab0-865c-a3ed257fd749' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FIP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'main2'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'main2'.'c21c01fc-6b34-4ab0-865c-a3ed257fd749'); 
                        }  
                        port 'out' : ComponentPort { 
                            @CapellaID { eid = "25f1513a-ad46-4318-9cd3-c12439738d9f"; sid = "25f1513a-ad46-4318-9cd3-c12439738d9f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '93c14017-128f-42a4-80a5-85e781d0250a' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FOP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'out'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'out'.'93c14017-128f-42a4-80a5-85e781d0250a'); 
                        }  
                        port 'FOP 2' : ComponentPort { 
                            @CapellaID { eid = "ac7a0c74-7e85-451f-ade0-0ad249490f61"; sid = "ac7a0c74-7e85-451f-ade0-0ad249490f61"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'ef104d5d-3443-4502-a704-805d3db430db' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FOP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'FOP 2'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'FOP 2'.'ef104d5d-3443-4502-a704-805d3db430db'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'.'7274fdcc-08fe-4aa4-84a0-29c439c2a939'); 
                    }  
                    constraint '0e661f1c-50ad-494a-aec3-27849d512a11' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "0e661f1c-50ad-494a-aec3-27849d512a11"; }
                        
                    } 
                    constraint 'f29961c0-c50c-4a32-96a9-286182c1e0af' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "f29961c0-c50c-4a32-96a9-286182c1e0af"; }
                        
                    } 
                    constraint 'dcf28d8e-8fd8-4baf-bd68-2b562e9ac5d8' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "dcf28d8e-8fd8-4baf-bd68-2b562e9ac5d8"; }
                        
                    } 
                     
                    ref :>> ownedComponentExchanges =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'68ab1776-6210-4874-b63c-345f4bff3778',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'d362cc95-3dac-44f3-a392-7abab0a1b620',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'2d1cc85b-0a82-4411-96e1-1fe63c50e52d',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'0314e53d-1e02-4681-b8de-1b84f422af1e'); 
                    ref :>> ownedLogicalComponents =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Condenser',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Evaporator',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Drain',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'Diverter Assembly'); 
                    ref :>> ownedConstraints =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'0e661f1c-50ad-494a-aec3-27849d512a11',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'f29961c0-c50c-4a32-96a9-286182c1e0af',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'dcf28d8e-8fd8-4baf-bd68-2b562e9ac5d8'); 
                }  
                part 'Operator' : LogicalComponent { 
                    @CapellaID { eid = "9fc7946c-bda5-42b8-a39a-6ac860df9708"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '950ac749-fc37-48a8-b536-4b70fc0afe12' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller' ; 
                    allocation 'af054c69-4bee-49aa-8dac-269903a44d9e' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Heat Source'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Heat Source' ; 
                    allocation '21d7c394-0573-4007-ba65-6c0d2d625ae9' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Water Source'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Water Source' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "e1357fda-b053-469c-8190-8e356cc9cd17"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '32935324-1fe5-4c61-ac38-576a65f37f4c' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'.'outWater Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 1'; 
                        ref allocation 'c72da6c1-6d23-4587-971a-e2c4d87fb25e' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Water Source'.'FOP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 1'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 1'.'32935324-1fe5-4c61-ac38-576a65f37f4c',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 1'.'c72da6c1-6d23-4587-971a-e2c4d87fb25e'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "0bb4db52-4cc2-4695-9327-aaf0cc2cbcdf"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '38b604d3-4716-46e0-9feb-375d9f3f28c3' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Heat Source'.'FOP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'; 
                        ref allocation 'be6ae2e5-f3ca-4fa0-8bd4-45a43776664c' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'.'outPower Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'.'38b604d3-4716-46e0-9feb-375d9f3f28c3',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'CP 2'.'be6ae2e5-f3ca-4fa0-8bd4-45a43776664c'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'950ac749-fc37-48a8-b536-4b70fc0afe12',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'af054c69-4bee-49aa-8dac-269903a44d9e',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Operator'.'21d7c394-0573-4007-ba65-6c0d2d625ae9'); 
                     
                }  
                part 'Water Source' : LogicalComponent { 
                    @CapellaID { eid = "39a38305-7033-45d0-8e66-5be9a03308c7"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation 'ebb8f9fb-0d33-4786-9f47-29058ccb6193' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water' ; 
                    port 'dirty' : ComponentPort { 
                        @CapellaID { eid = "901dced8-e31d-4a9d-bde7-380502c1e423"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'cd5529ec-0186-49a1-b281-315b16b0f08d' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'outDirty Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'dirty'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'dirty'.'cd5529ec-0186-49a1-b281-315b16b0f08d'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "f36908e8-3b50-476a-9768-17c315c07896"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '86bba355-607f-4189-b8a8-8d37d099474f' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'inWater Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'CP 2'; 
                        ref allocation 'ae2d7b31-56fd-4fc3-9432-51f8fa3603d1' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'FIP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'CP 2'.'86bba355-607f-4189-b8a8-8d37d099474f',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'CP 2'.'ae2d7b31-56fd-4fc3-9432-51f8fa3603d1'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Source'.'ebb8f9fb-0d33-4786-9f47-29058ccb6193'); 
                     
                }  
                part 'Heat Source' : LogicalComponent { 
                    @CapellaID { eid = "6ecea0ca-3652-4035-9315-29475746d043"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '14ea23eb-08e4-43ff-81b4-25ca055403c1' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat' ; 
                    port 'q in' : ComponentPort { 
                        @CapellaID { eid = "148d5e8a-7758-472a-8985-818a4fc4fb90"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '21e7f52a-98f9-43eb-85c9-d5557d8b4c60' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'FOP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'q in'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'q in'.'21e7f52a-98f9-43eb-85c9-d5557d8b4c60'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "b494e4fd-2d57-4c74-b8ef-52e46797b68b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'e329549d-b5fb-4844-ae88-d3d1ce61c81e' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'FIP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'CP 2'; 
                        ref allocation 'd936ced3-083f-4991-b643-6a4b7d6ace17' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'inPower Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'CP 2'.'e329549d-b5fb-4844-ae88-d3d1ce61c81e',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'CP 2'.'d936ced3-083f-4991-b643-6a4b7d6ace17'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Heat Source'.'14ea23eb-08e4-43ff-81b4-25ca055403c1'); 
                     
                }  
                part 'Water Distribution System' : LogicalComponent { 
                    @CapellaID { eid = "91e447c8-67c7-46dc-bad1-385f741314ee"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation 'adb8b9e5-abf8-4c2f-b19c-9a7420df4023' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water' ; 
                    allocation '4ab49737-b29d-4e0a-bede-4365636e7002' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water' ; 
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "3fdc98a1-c50c-4e75-a989-9c0f585d5273"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'd550b847-c002-4ec2-8522-8d70989a4e74' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water'.'outSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'CP 2'.'d550b847-c002-4ec2-8522-8d70989a4e74'); 
                    }  
                    port 'CP 3' : ComponentPort { 
                        @CapellaID { eid = "b46e3e7e-8c5f-4f54-9dcb-b2d17d61e7fa"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '93aa7934-2874-4310-8bf6-439b6c1d7a48' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'CP 3'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'CP 3'.'93aa7934-2874-4310-8bf6-439b6c1d7a48'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'adb8b9e5-abf8-4c2f-b19c-9a7420df4023',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water Distribution System'.'4ab49737-b29d-4e0a-bede-4365636e7002'); 
                     
                }  
                part 'Water USer' : LogicalComponent { 
                    @CapellaID { eid = "4a2ee10f-c636-4b4f-afb4-1f2b13ba51cd"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation 'f0d15466-3152-41a1-bc24-084a4f7ae594' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Get Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water USer';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Get Clean Water' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "2d706ad3-50c4-4bff-88f4-21ef2ab24747"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'e726d0c3-43fa-4637-8361-4a00a531ccd7' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Get Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water USer'.'CP 1'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water USer'.'CP 1'.'e726d0c3-43fa-4637-8361-4a00a531ccd7'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Water USer'.'f0d15466-3152-41a1-bc24-084a4f7ae594'); 
                     
                }  
                part 'Waste Management System' : LogicalComponent { 
                    @CapellaID { eid = "dd444e3c-8338-4e5b-9343-f16dc3434fdf"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation 'c0907788-49f3-4f44-ad4e-2193d2fda823' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Residue'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Waste Management System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Residue' ; 
                    port 'sludge' : ComponentPort { 
                        @CapellaID { eid = "2436a86d-ce01-422b-9922-a872b30010e1"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '87cf1545-d811-4cf7-abfe-ebc466e4c99e' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Residue'.'FIP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Waste Management System'.'sludge'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Waste Management System'.'sludge'.'87cf1545-d811-4cf7-abfe-ebc466e4c99e'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Waste Management System'.'c0907788-49f3-4f44-ad4e-2193d2fda823'); 
                     
                }  
                part 'Excess Water Discharge' : LogicalComponent { 
                    @CapellaID { eid = "19d1ec52-a0c8-443a-86ef-dad8c8739eea"; sid = "19d1ec52-a0c8-443a-86ef-dad8c8739eea"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '60861243-2f35-40f8-a378-c4e7a7f56553' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Excess Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Excess Water Discharge';
                    perform 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Excess Water' ; 
                    port 'FIP 1' : ComponentPort { 
                        @CapellaID { eid = "f2f6ce72-c485-4ba0-95c5-607431fda569"; sid = "f2f6ce72-c485-4ba0-95c5-607431fda569"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '46f27ff8-9cdc-49e0-b4fa-b714e3318545' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Excess Water'.'FIP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Excess Water Discharge'.'FIP 1'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Excess Water Discharge'.'FIP 1'.'46f27ff8-9cdc-49e0-b4fa-b714e3318545'); 
                    }  
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Excess Water Discharge'.'60861243-2f35-40f8-a378-c4e7a7f56553'); 
                }  
            } 
            package  'Logical Functions' {
                @PackageMeta {
                    type = "LogicalFunctionPkg";
                } 
                @CapellaID { eid = "4ffe25b2-1b11-4c87-9a04-0f5266a32bf6"; } 
                action 'Root Logical Function' : LogicalFunction  { 
                    @CapellaID { eid = "750f687b-e9c9-42f2-a702-cd9de1572ead"; sid = "750f687b-e9c9-42f2-a702-cd9de1572ead"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    interface '8e71177c-e6be-4cec-b557-4a34f95dc583' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'.'outWater Control'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'inWater Control' { 
                        @CapellaID { eid = "8e71177c-e6be-4cec-b557-4a34f95dc583"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Supply"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Water Supply Control'); 
                    }  
                    interface '2ff7c5f7-1d47-495e-9625-bda1154abb5c' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'.'outPower Control'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'inPower Control' { 
                        @CapellaID { eid = "2ff7c5f7-1d47-495e-9625-bda1154abb5c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat Supply"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Power Supply Control'); 
                    }  
                    interface 'ee4ef5c7-9d15-4012-95f0-4381411f7d11' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'outDirty Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'.'inDirty Water' { 
                        @CapellaID { eid = "ee4ef5c7-9d15-4012-95f0-4381411f7d11"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '495e683d-7b8f-4673-bf53-f31463b9f382' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "495e683d-7b8f-4673-bf53-f31463b9f382"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Distilled Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface 'efb66b4c-a4a6-418e-81c0-add5fe6b5ca1' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "efb66b4c-a4a6-418e-81c0-add5fe6b5ca1"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '404da265-10b8-45b6-afe1-37adddb71c71' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Get Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "404da265-10b8-45b6-afe1-37adddb71c71"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface 'bc9cd606-27ff-4908-b9cf-53309f86348d' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Maintain and Serivce System'.'outMaintainance'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Allow maintenance and service'.'inMaintainance' { 
                        @CapellaID { eid = "bc9cd606-27ff-4908-b9cf-53309f86348d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                         
                    }  
                    interface '20296ce7-bcf9-48f0-a898-19736f79a09f' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Install System'.'outInstallation'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Deploymentability'.'inInstallation' { 
                        @CapellaID { eid = "20296ce7-bcf9-48f0-a898-19736f79a09f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                         
                    }  
                    interface '8d29ec83-4928-4007-9887-b84efebfc041' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Certify System'.'outCertification'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Deploymentability'.'inCertification' { 
                        @CapellaID { eid = "8d29ec83-4928-4007-9887-b84efebfc041"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                         
                    }  
                    interface 'e062898a-9114-495b-9505-4e71046a16b7' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FIP 1' { 
                        @CapellaID { eid = "e062898a-9114-495b-9505-4e71046a16b7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface '01d0fa94-76dd-4485-8e26-b3c129250abd' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Residue'.'FIP 1' { 
                        @CapellaID { eid = "01d0fa94-76dd-4485-8e26-b3c129250abd"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Residue"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                    }  
                    interface '52845e7f-0f6e-463e-ad9f-fc069d9e47ef' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Water Source'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'FIP 2' { 
                        @CapellaID { eid = "52845e7f-0f6e-463e-ad9f-fc069d9e47ef"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '295cbfcc-9b18-4c51-b1ab-605ccb4c1935' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Heat Source'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'FIP 2' { 
                        @CapellaID { eid = "295cbfcc-9b18-4c51-b1ab-605ccb4c1935"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Fuel"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface 'f63dc13b-839b-4a06-863a-bf7302dd583f' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FIP 2' { 
                        @CapellaID { eid = "f63dc13b-839b-4a06-863a-bf7302dd583f"; sid = "f63dc13b-839b-4a06-863a-bf7302dd583f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface 'fabaeebd-3e11-4d73-913e-cc9d62e3caca' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'hotDirtyWater' { 
                        @CapellaID { eid = "fabaeebd-3e11-4d73-913e-cc9d62e3caca"; sid = "fabaeebd-3e11-4d73-913e-cc9d62e3caca"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '788bca82-4484-4a3e-bcc5-c2324542e256' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Excess Water'.'FIP 1' { 
                        @CapellaID { eid = "788bca82-4484-4a3e-bcc5-c2324542e256"; sid = "788bca82-4484-4a3e-bcc5-c2324542e256"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Bypass"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    action 'Distill Water' : LogicalFunction  { 
                        @CapellaID { eid = "b9612407-ecbf-4587-9c60-f8fca36668a1"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        interface '134d7320-3277-4493-99f2-e729116897d5' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FOP 1'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'.'FIP 1' { 
                            @CapellaID { eid = "134d7320-3277-4493-99f2-e729116897d5"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Sludge"; 
                             
                            ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                        }  
                        interface 'df2902c9-85f5-4e56-a697-a92a5ed5dbd8' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FOP 2'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'FIP 1' { 
                            @CapellaID { eid = "df2902c9-85f5-4e56-a697-a92a5ed5dbd8"; sid = "df2902c9-85f5-4e56-a697-a92a5ed5dbd8"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Steam"; 
                             
                        }  
                        interface 'c3e29f93-3cee-4a6b-9ad0-9c908cc84506' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'FOP 2'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'.'FIP 3' { 
                            @CapellaID { eid = "c3e29f93-3cee-4a6b-9ad0-9c908cc84506"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Recovered Heat"; 
                             
                            ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat'); 
                        }  
                        interface 'ee872da7-9446-4409-90e3-ee56f5e9292c' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'.'FOP 1'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'hotDirtyWater' { 
                            @CapellaID { eid = "ee872da7-9446-4409-90e3-ee56f5e9292c"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "HotDirtyWater"; 
                        }  
                        out port 'outWaste' : FunctionOutputPort  { 
                            @CapellaID { eid = "8f70ba0e-6773-4cfc-8894-aa75e77e7de6"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        action 'Distill Water' : FunctionalChain  { 
                            @CapellaID { eid = "d1e25547-0705-4dba-9b8c-fe3b6fe66a7e"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            connection '18c351b8-6968-4645-92bb-802c78aaa43d' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'b44a2dcc-2752-45e5-87a8-787401ddc81a'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'4acc437f-d59e-4ada-9ebc-76f141b8462f' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'ee872da7-9446-4409-90e3-ee56f5e9292c';

                                } 
                            ref action '4acc437f-d59e-4ada-9ebc-76f141b8462f' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'; 
                            ref action 'b44a2dcc-2752-45e5-87a8-787401ddc81a' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'; 
                            ref action 'ebe0e612-077b-4a38-8570-b375f7bdc0b0' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'; 
                            connection '8c79a349-7a78-4224-9866-c515bad64ec0' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'ebe0e612-077b-4a38-8570-b375f7bdc0b0'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'b44a2dcc-2752-45e5-87a8-787401ddc81a' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'ee4ef5c7-9d15-4012-95f0-4381411f7d11';

                                } 
                            ref action 'c4fd976f-5d53-43d9-bc41-fc957d8d430e' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'; 
                            connection 'bf45d9eb-4679-407a-8389-d3ba975422bc' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'4acc437f-d59e-4ada-9ebc-76f141b8462f'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'c4fd976f-5d53-43d9-bc41-fc957d8d430e' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'134d7320-3277-4493-99f2-e729116897d5';

                                } 
                            ref action '4f498901-4624-4050-8874-1e87a260b442' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'; 
                            connection 'edb7274f-9006-4b4f-aba3-fd746ee5348d' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'4acc437f-d59e-4ada-9ebc-76f141b8462f'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'4f498901-4624-4050-8874-1e87a260b442' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'df2902c9-85f5-4e56-a697-a92a5ed5dbd8';

                                } 
                            ref action '706ca35e-0a1a-47c3-b8b2-06c583f16180' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'; 
                            connection 'bc414d27-579e-424b-87de-141c3a210ee0' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'4f498901-4624-4050-8874-1e87a260b442'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Distill Water'.'706ca35e-0a1a-47c3-b8b2-06c583f16180' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'495e683d-7b8f-4673-bf53-f31463b9f382';

                                } 
                        }  
                        action 'Heat Water' : LogicalFunction  { 
                            @CapellaID { eid = "a55f3ef6-c448-464a-a28c-220ff800aead"; sid = "a55f3ef6-c448-464a-a28c-220ff800aead"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "18eb543c-b736-4e31-83f7-f24f33b3ab18"; sid = "18eb543c-b736-4e31-83f7-f24f33b3ab18"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                                ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            in port 'inDirty Water' : FunctionInputPort  { 
                                @CapellaID { eid = "9ba26a10-f8cf-4cdc-966d-9d9d7f41a147"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                @CapellaID { eid = "8330d940-7cf6-4047-bef7-6fe0a9ea38a6"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'.'FOP 1'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'.'inDirty Water',
                            'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'.'FIP 3'); 
                             
                        }  
                        action 'Boil Water' : LogicalFunction  { 
                            @CapellaID { eid = "65d2d364-202a-464f-a7f9-6b25863ae48f"; sid = "65d2d364-202a-464f-a7f9-6b25863ae48f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "59848b93-e737-452f-8d8a-ff21bdb6ad93"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "be213062-b177-4db1-a6e9-2bb515d996b8"; sid = "be213062-b177-4db1-a6e9-2bb515d996b8"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "d291a56a-252a-4f95-aee3-8f2bec6da1f4"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'hotDirtyWater' : FunctionInputPort  { 
                                @CapellaID { eid = "49c5ac52-2e74-4cbc-86f8-362367c1d53a"; sid = "49c5ac52-2e74-4cbc-86f8-362367c1d53a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                ref :>> incomingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FOP 1',
                            'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'FIP 1',
                            'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'.'hotDirtyWater'); 
                             
                        }  
                        action 'Condense Steam' : LogicalFunction  { 
                            @CapellaID { eid = "ba3eab06-8c84-40c9-8c5c-61bb757d6d80"; sid = "ba3eab06-8c84-40c9-8c5c-61bb757d6d80"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "5a930452-d6a7-463b-ae09-d20511932da3"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "ec3d0f79-829e-4af6-9213-dda9adfaeb05"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "49498d72-317e-4729-9e5b-0d4e48e0c61d"; sid = "49498d72-317e-4729-9e5b-0d4e48e0c61d"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water',
                            'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'.'FIP 1'); 
                             
                        }  
                        action 'Drain Residue' : LogicalFunction  { 
                            @CapellaID { eid = "8429f8e5-bd36-4638-81a3-1902870417c0"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "fc3631de-d80d-4f6c-bb81-9cde868d7069"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "38dc77ea-7e72-49aa-9a42-06956597f23d"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'.'FIP 1'); 
                             
                        }  
                        ref :>> ownedFunctionalExchanges =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'134d7320-3277-4493-99f2-e729116897d5',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'df2902c9-85f5-4e56-a697-a92a5ed5dbd8',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'c3e29f93-3cee-4a6b-9ad0-9c908cc84506',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'ee872da7-9446-4409-90e3-ee56f5e9292c'); 
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'outWaste'); 
                         
                        ref :>> ownedFunctions =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'); 
                    }  
                    action 'Allow maintenance and service' : LogicalFunction  { 
                        @CapellaID { eid = "593350ad-48e2-407c-8abb-2912c00515a8"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inMaintainance' : FunctionInputPort  { 
                            @CapellaID { eid = "2e738b3a-10fc-4e90-aa6e-4437b88f010c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Allow maintenance and service'.'inMaintainance'); 
                         
                    }  
                    action 'Maintain and Serivce System' : LogicalFunction  { 
                        @CapellaID { eid = "ecd7277e-bc43-4e59-8c28-274d03de985f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outMaintainance' : FunctionOutputPort  { 
                            @CapellaID { eid = "f0e01e61-1481-4d90-92ba-d3e0ca6d0a04"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Maintain and Serivce System'.'outMaintainance'); 
                         
                    }  
                    action 'Install System' : LogicalFunction  { 
                        @CapellaID { eid = "8fe99a8c-2328-41e3-b6f8-953393ac55c2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outInstallation' : FunctionOutputPort  { 
                            @CapellaID { eid = "3654015b-657d-4ca0-95ec-e99fc3cfd5df"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Install System'.'outInstallation'); 
                         
                    }  
                    action 'Certify System' : LogicalFunction  { 
                        @CapellaID { eid = "ae42fa79-f827-469a-a41f-86f72da393e6"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outCertification' : FunctionOutputPort  { 
                            @CapellaID { eid = "0759ee62-5578-459c-b480-51f8bdc0ee97"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Certify System'.'outCertification'); 
                         
                    }  
                    action 'Provide Deploymentability' : LogicalFunction  { 
                        @CapellaID { eid = "2d7738c8-0abf-4212-b01e-cdf9ea9a04a1"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inInstallation' : FunctionInputPort  { 
                            @CapellaID { eid = "ccf4317f-b78b-4688-96e6-77b7117bab08"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inCertification' : FunctionInputPort  { 
                            @CapellaID { eid = "8310e34a-72ce-427e-96a6-dc0934ba797c"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Deploymentability'.'inInstallation',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Deploymentability'.'inCertification'); 
                         
                    }  
                    action 'Divert Feed' : LogicalFunction  { 
                        @CapellaID { eid = "c4f9069b-a4ee-46d1-8b13-1c8b8d3e84d0"; sid = "c4f9069b-a4ee-46d1-8b13-1c8b8d3e84d0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "fa51849a-fc51-46f3-a723-8c4afd704747"; sid = "fa51849a-fc51-46f3-a723-8c4afd704747"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "48371bea-4f72-4a39-8157-6fcdb8d8003e"; sid = "48371bea-4f72-4a39-8157-6fcdb8d8003e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "69a6820f-8dd2-44ce-a1cf-14cc0353cf8e"; sid = "69a6820f-8dd2-44ce-a1cf-14cc0353cf8e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                            ref :>> incomingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FOP 1',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FOP 2'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'.'FIP 2'); 
                    }  
                    action 'Operate Distiller' : LogicalFunction  { 
                        @CapellaID { eid = "0b6587c8-4c8d-43ca-9518-23ae9ad122bc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outWater Control' : FunctionOutputPort  { 
                            @CapellaID { eid = "ef20df7e-c4e5-400b-99ae-d6ffade01cdf"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        out port 'outPower Control' : FunctionOutputPort  { 
                            @CapellaID { eid = "3ecc0bc1-5835-41d7-9fde-41f8cd1b1034"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'.'outWater Control',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'.'outPower Control'); 
                         
                    }  
                    action 'Provide Water' : LogicalFunction  { 
                        @CapellaID { eid = "e79f1e3d-a1ed-402b-a690-8128a265b71d"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outDirty Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "b1a5564e-949e-4c06-954f-e997f493d71a"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inWater Control' : FunctionInputPort  { 
                            @CapellaID { eid = "2edf5181-8ff9-4712-8ff7-3f4cb22933d2"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "d0d3dd7b-b40a-4db9-b8d7-60728c2b8830"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'outDirty Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'inWater Control',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'.'FIP 2'); 
                         
                    }  
                    action 'Generate Heat' : LogicalFunction  { 
                        @CapellaID { eid = "ed375ff1-46b1-4769-a125-f7ea724966c6"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "cda6f027-1d6c-42a1-b2ab-e5b5118004b6"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inPower Control' : FunctionInputPort  { 
                            @CapellaID { eid = "5618f02d-adf1-4ad8-9876-379c2df1d16f"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "9a2e982e-8428-4fe4-9e15-bc501d63c82b"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'FOP 2'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'inPower Control',
                        'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'.'FIP 2'); 
                         
                    }  
                    action 'Store Clean Water' : LogicalFunction  { 
                        @CapellaID { eid = "cf8f36e1-64e3-480d-aba3-f8c7a9ae2929"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "d6fd5c43-a245-45b4-a1e5-8fd7e2339251"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "78dfc40f-d583-45d7-bed4-d8a2862372cb"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'.'outSafe Drinking Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Distribute Clean Water' : LogicalFunction  { 
                        @CapellaID { eid = "c8f8e224-7747-4d26-9108-7beb299e15b2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "8995ba7b-a1c5-4c6c-a994-afa53a62bddc"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "9f321dda-e172-42cc-a11f-9a09cb9c09ed"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water'.'outSafe Drinking Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Get Clean Water' : LogicalFunction  { 
                        @CapellaID { eid = "eb1c9eee-3a54-490c-917d-d1800da14f71"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "f91d98b1-d08b-48d2-8b3a-22bdbcd9aa12"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Get Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Discharge Residue' : LogicalFunction  { 
                        @CapellaID { eid = "79d300a4-52d0-43c1-b65e-6d4f2bd12c03"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "bc8409ab-a096-422a-b73f-e344d30a1126"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Residue'.'FIP 1'); 
                         
                    }  
                    action 'Tend Water Source' : LogicalFunction  { 
                        @CapellaID { eid = "81a07fb3-cd26-48c2-b4f4-2fc252f0b58a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "412e58a1-6079-4d69-82fe-7c1e0d57e393"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Water Source'.'FOP 1'); 
                         
                    }  
                    action 'Tend Heat Source' : LogicalFunction  { 
                        @CapellaID { eid = "134b613e-0615-47ba-8cc1-f159d668abcc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "5d0d0384-8810-4928-b1d4-ecc8e3e1b754"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Tend Heat Source'.'FOP 1'); 
                         
                    }  
                    action 'Discharge Excess Water' : LogicalFunction  { 
                        @CapellaID { eid = "608868e7-4609-47c0-9a1b-77d79fb607b2"; sid = "608868e7-4609-47c0-9a1b-77d79fb607b2"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "c6eaa670-32a8-4205-b1c5-f97fc8af4ffc"; sid = "c6eaa670-32a8-4205-b1c5-f97fc8af4ffc"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Excess Water'.'FIP 1'); 
                    }  
                    action 'Test chain - Distill and Distribute Water' : FunctionalChain  { 
                        @CapellaID { eid = "0ba89261-3c27-474a-81fe-bc7a661f18c5"; sid = "0ba89261-3c27-474a-81fe-bc7a661f18c5"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '1a22c4d3-0037-4473-8404-31a4a3fd57e7' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Operate Distiller'; 
                        connection '255c315a-9d21-4938-86ae-ffc606f8db5c' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'1a22c4d3-0037-4473-8404-31a4a3fd57e7'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'c1e2a9d0-b740-472c-8b3d-5eb76c380e52' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'8e71177c-e6be-4cec-b557-4a34f95dc583';

                            } 
                        ref action 'c1e2a9d0-b740-472c-8b3d-5eb76c380e52' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Provide Water'; 
                        connection '17b071f7-d991-4b48-b457-e208b93b28d5' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'1a22c4d3-0037-4473-8404-31a4a3fd57e7'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'93037076-1d1f-4120-89f4-83e22e8dd425' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'2ff7c5f7-1d47-495e-9625-bda1154abb5c';

                            } 
                        ref action '93037076-1d1f-4120-89f4-83e22e8dd425' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Generate Heat'; 
                        connection '66ea36d1-c291-4167-a170-e6a607ea1bc4' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'c1e2a9d0-b740-472c-8b3d-5eb76c380e52'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'2914868b-39ca-401d-88e6-343f2046df6b' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'ee4ef5c7-9d15-4012-95f0-4381411f7d11';

                            } 
                        connection '2dd2be46-fa7f-4a39-a428-60b6f1b46599' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'a0ba19cc-5818-41f4-957f-2715e6436c5f'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'8f282e2a-9cb3-40e3-9f29-23522acfe2a2' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'495e683d-7b8f-4673-bf53-f31463b9f382';

                            } 
                        ref action '8f282e2a-9cb3-40e3-9f29-23522acfe2a2' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Store Clean Water'; 
                        connection '18fed45d-c5c9-4e5f-aa24-f48235fb015e' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'8f282e2a-9cb3-40e3-9f29-23522acfe2a2'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'46eed045-190f-4368-99f3-c5dd8077471f' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'efb66b4c-a4a6-418e-81c0-add5fe6b5ca1';

                            } 
                        ref action '46eed045-190f-4368-99f3-c5dd8077471f' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distribute Clean Water'; 
                        connection 'cd83dd61-9f73-412e-8bfa-3ce1f5160e8b' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'46eed045-190f-4368-99f3-c5dd8077471f'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'b9474ac9-6344-465f-b8f4-d60c87ea5a7d' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'404da265-10b8-45b6-afe1-37adddb71c71';

                            } 
                        ref action 'b9474ac9-6344-465f-b8f4-d60c87ea5a7d' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Get Clean Water'; 
                        ref action '2914868b-39ca-401d-88e6-343f2046df6b' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'; 
                        ref action 'a0ba19cc-5818-41f4-957f-2715e6436c5f' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Condense Steam'; 
                        ref action '52245c69-0f49-46fe-9d7f-dd7f0a306a75' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Boil Water'; 
                        connection 'abe2f78e-03c8-47b5-8343-3408bd218de6' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'2914868b-39ca-401d-88e6-343f2046df6b'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'cfe778e6-8d2b-43c4-bbb6-4984e3effb6b' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'f63dc13b-839b-4a06-863a-bf7302dd583f';

                            } 
                        connection 'f44ba065-954f-43ca-8f47-c66a78513226' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'52245c69-0f49-46fe-9d7f-dd7f0a306a75'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'134d7320-3277-4493-99f2-e729116897d5';

                            } 
                        ref action '369bda6b-8caa-435f-8488-600243576e3f' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Discharge Residue'; 
                        connection '65b84872-3dae-4f3c-bdd0-3f0ac96e494a' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'369bda6b-8caa-435f-8488-600243576e3f' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'01d0fa94-76dd-4485-8e26-b3c129250abd';

                            } 
                        connection 'ff6210be-a767-4dbe-8cc0-7d299863937f' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'93037076-1d1f-4120-89f4-83e22e8dd425'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'52245c69-0f49-46fe-9d7f-dd7f0a306a75' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'e062898a-9114-495b-9505-4e71046a16b7';

                            } 
                        ref action 'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Drain Residue'; 
                        connection 'e83f498c-f698-4a97-bd21-358d4d062526' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'52245c69-0f49-46fe-9d7f-dd7f0a306a75'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'a0ba19cc-5818-41f4-957f-2715e6436c5f' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'df2902c9-85f5-4e56-a697-a92a5ed5dbd8';

                            } 
                        ref action 'b395f56a-8ffe-416e-b6e9-eeccc2403bb6' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'Heat Water'; 
                        connection '33348c66-20ca-44ad-bd35-0ef7110c51f4' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'a0ba19cc-5818-41f4-957f-2715e6436c5f'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'b395f56a-8ffe-416e-b6e9-eeccc2403bb6' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Distill Water'.'c3e29f93-3cee-4a6b-9ad0-9c908cc84506';

                            } 
                        ref action 'cfe778e6-8d2b-43c4-bbb6-4984e3effb6b' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Divert Feed'; 
                        connection '3f503936-c8d9-4a19-9e45-a4fe214e2c1e' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'cfe778e6-8d2b-43c4-bbb6-4984e3effb6b'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'.'52245c69-0f49-46fe-9d7f-dd7f0a306a75' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'fabaeebd-3e11-4d73-913e-cc9d62e3caca';

                            } 
                         
                    }  
                    action 'Maintain System' : FunctionalChain  { 
                        @CapellaID { eid = "9631a35f-3ea0-4f95-9bb2-c937bf371d32"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '8a6d8993-ba2a-4918-a2e2-0c555afdf77f' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Maintain and Serivce System'; 
                        connection '8a44fee8-6900-4d1d-b39e-002a7378b9c2' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Maintain System'.'8a6d8993-ba2a-4918-a2e2-0c555afdf77f'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Maintain System'.'ef3d2cb1-9ef3-4c8c-a973-56d804bd0d31' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'bc9cd606-27ff-4908-b9cf-53309f86348d';

                            } 
                        ref action 'ef3d2cb1-9ef3-4c8c-a973-56d804bd0d31' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Allow maintenance and service'; 
                         
                    }  
                    ref :>> ownedFunctionalExchanges =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'8e71177c-e6be-4cec-b557-4a34f95dc583',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'2ff7c5f7-1d47-495e-9625-bda1154abb5c',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'ee4ef5c7-9d15-4012-95f0-4381411f7d11',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'495e683d-7b8f-4673-bf53-f31463b9f382',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'efb66b4c-a4a6-418e-81c0-add5fe6b5ca1',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'404da265-10b8-45b6-afe1-37adddb71c71',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'bc9cd606-27ff-4908-b9cf-53309f86348d',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'20296ce7-bcf9-48f0-a898-19736f79a09f',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'8d29ec83-4928-4007-9887-b84efebfc041',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'e062898a-9114-495b-9505-4e71046a16b7',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'01d0fa94-76dd-4485-8e26-b3c129250abd',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'52845e7f-0f6e-463e-ad9f-fc069d9e47ef',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'295cbfcc-9b18-4c51-b1ab-605ccb4c1935',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'f63dc13b-839b-4a06-863a-bf7302dd583f',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'fabaeebd-3e11-4d73-913e-cc9d62e3caca',
                    'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'788bca82-4484-4a3e-bcc5-c2324542e256'); 
                     
                     
                     
                }  
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "ceddd3bb-3aa6-4c34-84df-abee827e9778"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "3a52e33b-063f-4d71-a691-fa36111cfc10"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "7e933f41-3fdd-43b1-b673-e4b6b0c8abb9"; sid = "7e933f41-3fdd-43b1-b673-e4b6b0c8abb9"; } 
                use case 'Operate Distiller' : CapabilityRealization { 
                    @CapellaID { eid = "ebf4dbb6-3921-4359-a9ec-8b0a59894061"; sid = "ebf4dbb6-3921-4359-a9ec-8b0a59894061"; } 
                    ref action '2e8160ee-68b9-4fb4-b0b6-ed75cf389aa6' = 'Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'; 
                     
                     
                }  
            } 
        } 
        package  'Physical Architecture' {
            @PackageMeta {
                type = "PhysicalArchitecture";
            } 
            @CapellaID { eid = "99dbdc7b-e875-4169-9786-a4d4b198d34b"; } 
            package  'Physical Functions' {
                @PackageMeta {
                    type = "PhysicalFunctionPkg";
                } 
                @CapellaID { eid = "d840c4c2-44b9-4666-a1b5-c405ea97c680"; } 
                action 'Root Physical Function' : PhysicalFunction  { 
                    @CapellaID { eid = "900faa67-2ea3-4bb9-8cde-29b86fbd41a9"; } 
                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                    attribute :>> isFinal = false; 
                    attribute :>> isAbstract = false; 
                    attribute :>> isDerived = false; 
                    attribute :>> isPartOfKey = false; 
                    attribute :>> isReadOnly = false; 
                    attribute :>> isStatic = false; 
                    attribute :>> kind = FunctionKind::FUNCTION; 
                    attribute :>> isMaxInclusive = false; 
                    attribute :>> isMinInclusive = false; 
                    attribute :>> isOrdered = false; 
                    attribute :>> isUnique = false; 
                    action 'Distill Water' : PhysicalFunction  { 
                        @CapellaID { eid = "e27423db-0d42-4863-8063-a9b33c4fe3fc"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        interface '2dedf276-8988-40b1-9f20-fa6aa4bfb1bc' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FOP 1'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'FIP 1' { 
                            @CapellaID { eid = "2dedf276-8988-40b1-9f20-fa6aa4bfb1bc"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Sludge"; 
                             
                            ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                        }  
                        interface '6d85b198-fe16-4158-bc1f-dae442d8807e' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'FOP 2'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'FIP 3' { 
                            @CapellaID { eid = "6d85b198-fe16-4158-bc1f-dae442d8807e"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Recovered Heat"; 
                             
                            ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat'); 
                        }  
                        interface 'afc69fbe-0dd9-480b-aa5f-b72c8a537751' : FunctionalExchange 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FOP 2'
                            to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'FIP 1' { 
                            @CapellaID { eid = "afc69fbe-0dd9-480b-aa5f-b72c8a537751"; } 
                            attribute :>> isMulticast = false; 
                            attribute :>> isMultireceive = false; 
                            attribute :>> kindOfRate = RateKind::Unspecified; 
                            attribute :>> interfaceName = "Steam"; 
                             
                        }  
                        action 'Heat Water' : PhysicalFunction  { 
                            @CapellaID { eid = "70b66252-9899-4aae-862d-1af4efa40cfd"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "0ca66c33-c15a-4484-8b67-2534bb7bcbba"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                                ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            in port 'inDirty Water' : FunctionInputPort  { 
                                @CapellaID { eid = "6a66c976-b182-4a10-96f4-05e4d068cd30"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 3' : FunctionInputPort  { 
                                @CapellaID { eid = "c20bcd8b-b1db-421b-b808-be8b586ec8da"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'FOP 1'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'inDirty Water',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'FIP 3'); 
                             
                        }  
                        action 'Boil Water' : PhysicalFunction  { 
                            @CapellaID { eid = "18bc4cbf-1dd5-4857-b6bc-ea9b029936c2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "228b1d8d-a768-4ee7-a051-95469722d844"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "988b2777-2ceb-4cc2-b623-6f31e01280ea"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "81f90468-03be-4908-9a9a-d15de1255dd9"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "07878083-7d56-495f-81fe-72b0d4365e8a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                                ref :>> incomingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FOP 1',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FIP 1',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FIP 2'); 
                             
                        }  
                        action 'Drain Residue' : PhysicalFunction  { 
                            @CapellaID { eid = "6192faff-ada6-4831-97ff-15d2b83444b6"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "cc45e2d5-5221-4ffc-a292-17659c44bd88"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'outWaste' : FunctionOutputPort  { 
                                @CapellaID { eid = "8d37ea6f-a96b-4183-a51b-62218edd0f89"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "36ccd74a-b142-4206-8f2c-cdf9683fdcc9"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'FOP 2',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'outWaste'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'FIP 1'); 
                             
                        }  
                        action 'Condense Steam' : PhysicalFunction  { 
                            @CapellaID { eid = "9e0aba7a-0850-436c-9dc8-c9f9d337d408"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = FunctionKind::FUNCTION; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> isUnique = false; 
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "de830eb2-b8d3-4f77-a0e1-53c5a9fddc25"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "91c81467-bc79-47bc-bbfa-e2a8d8becf68"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            in port 'FIP 1' : FunctionInputPort  { 
                                @CapellaID { eid = "68a70947-f467-40f1-9ecd-4496a58e3c15"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'FOP 2'); 
                            ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'FIP 1'); 
                             
                        }  
                        ref :>> ownedFunctionalExchanges =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'2dedf276-8988-40b1-9f20-fa6aa4bfb1bc',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'6d85b198-fe16-4158-bc1f-dae442d8807e',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'afc69fbe-0dd9-480b-aa5f-b72c8a537751'); 
                         
                        ref :>> ownedFunctions =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'); 
                    }  
                    action 'Manage Waste' : PhysicalFunction  { 
                        @CapellaID { eid = "d19e9cfc-5f75-442e-b9c0-bbcfff06c50c"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inWaste' : FunctionInputPort  { 
                            @CapellaID { eid = "ff99dea9-94cc-4717-b7d7-440dd8438d04"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Manage Waste'.'inWaste'); 
                    }  
                    action 'Allow maintenance and service' : PhysicalFunction  { 
                        @CapellaID { eid = "21683378-bce6-477f-bc4c-313ae74ea43b"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inMaintainance' : FunctionInputPort  { 
                            @CapellaID { eid = "621e9484-df98-4f39-9857-bed5c466a7e6"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Allow maintenance and service'.'inMaintainance'); 
                         
                    }  
                    action 'Maintain and Serivce System' : PhysicalFunction  { 
                        @CapellaID { eid = "45dd6711-f199-4341-b480-f1ff23ba763f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outMaintainance' : FunctionOutputPort  { 
                            @CapellaID { eid = "67814301-19a9-40e9-94a7-1609f8d3ce23"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Maintain and Serivce System'.'outMaintainance'); 
                         
                    }  
                    action 'Install System' : PhysicalFunction  { 
                        @CapellaID { eid = "610ad9e2-26fb-44cd-a1cc-a14db77b728e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outInstallation' : FunctionOutputPort  { 
                            @CapellaID { eid = "68d66845-a9bc-47ae-a8bf-ec902180c400"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Install System'.'outInstallation'); 
                         
                    }  
                    action 'Certify System' : PhysicalFunction  { 
                        @CapellaID { eid = "7e176cd0-1eaa-4355-96b2-0732afd621a5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outCertification' : FunctionOutputPort  { 
                            @CapellaID { eid = "78b1b505-de3d-4782-94df-0915dc0979bc"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Certify System'.'outCertification'); 
                         
                    }  
                    action 'Provide Deploymentability' : PhysicalFunction  { 
                        @CapellaID { eid = "cc3e5023-91d6-4ce9-87bc-6c58008d9677"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inInstallation' : FunctionInputPort  { 
                            @CapellaID { eid = "9afd72dd-73b6-4450-aa41-a39e145c10c5"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inCertification' : FunctionInputPort  { 
                            @CapellaID { eid = "10d732ab-578a-4563-a4b1-dff0a339a4b8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Deploymentability'.'inInstallation',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Deploymentability'.'inCertification'); 
                         
                    }  
                    action 'Divert Feed' : PhysicalFunction  { 
                        @CapellaID { eid = "721dc12e-cec1-404c-be6c-7ee12e0b7a30"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "be389065-3eaf-4e90-b5c8-75d9707cfda4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                            ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "9505a27f-b143-4108-b863-6bef38a4c20e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                            ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "24e273d9-78f8-4588-a1c6-2fe12d16c9c1"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                            ref :>> incomingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Feed'.'FOP 1',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Feed'.'FOP 2'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Feed'.'FIP 2'); 
                         
                    }  
                    action 'Operate Distiller' : PhysicalFunction  { 
                        @CapellaID { eid = "0883708b-8466-4bf2-bb67-78c1ad709c3a"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outWater Control' : FunctionOutputPort  { 
                            @CapellaID { eid = "a26e8d54-5412-4a13-873b-686a82153a4e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        out port 'outPower Control' : FunctionOutputPort  { 
                            @CapellaID { eid = "889506d4-42b2-47ae-9e9e-1c8779de6bb8"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        action 'Test Chain - Distill and Distribute Water' : FunctionalChain  { 
                            @CapellaID { eid = "c5bc05a8-92a9-4854-b41f-c356efec1609"; } 
                            attribute :>> kind = FunctionalChainKind::SIMPLE; 
                            ref action '9487b02b-054b-41ce-8bb4-bd513ddaea98' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'; 
                            connection '119fa752-abcd-4228-9e9f-c092b3e32db9' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'9487b02b-054b-41ce-8bb4-bd513ddaea98'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'afe9068c-2017-4845-9604-935416db840e' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'02ad4ead-4d78-4fcf-b476-906943c4ff06';

                                } 
                            ref action 'afe9068c-2017-4845-9604-935416db840e' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'; 
                            connection '2f4ae201-96c3-42ce-af8a-8e55c41d83fe' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'9487b02b-054b-41ce-8bb4-bd513ddaea98'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'531a7a6e-359e-4e09-99a0-0d59a58bcc7c' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8d255656-b25a-46bf-858e-d6ba28161f3b';

                                } 
                            ref action '531a7a6e-359e-4e09-99a0-0d59a58bcc7c' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'; 
                            connection 'f9849e21-10b6-4e93-a497-cc0dd22223c5' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'afe9068c-2017-4845-9604-935416db840e'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'9ba11de0-0c83-443b-ae92-f378256149aa' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d2fadfc2-5ca1-4fe0-aee5-37b8987689b5';

                                } 
                            ref action '9ba11de0-0c83-443b-ae92-f378256149aa' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'; 
                            connection 'bd8d9200-6bb0-46fb-9323-189b5d5cb7fc' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'531a7a6e-359e-4e09-99a0-0d59a58bcc7c'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'95aef41e-f398-424e-8f0e-d166c06f0384' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'fbf93101-8edf-4ee0-9a61-b7a8209c30ee';

                                } 
                            ref action '95aef41e-f398-424e-8f0e-d166c06f0384' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'; 
                            connection '17128410-8aa2-4181-84cf-4848fe1c5b54' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'9ba11de0-0c83-443b-ae92-f378256149aa'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'1d958367-6231-49da-88d8-2b5c56a7ec71' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'2b1b287f-82fd-4aa3-bc91-41164bfa7f1c';

                                } 
                            ref action '1d958367-6231-49da-88d8-2b5c56a7ec71' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'; 
                            connection 'c7d642e0-81f4-4030-b479-04ee04f0fdf6' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'1d958367-6231-49da-88d8-2b5c56a7ec71'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'821a4a61-804e-45d2-bdc5-85a18db2d538' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4babf37b-7c92-4d8e-b68f-bb3643e0d97c';

                                } 
                            ref action '821a4a61-804e-45d2-bdc5-85a18db2d538' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'; 
                            connection '376a1a1b-38e1-45a2-8d51-4633204db669' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'821a4a61-804e-45d2-bdc5-85a18db2d538'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'95aef41e-f398-424e-8f0e-d166c06f0384' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'1e0bb105-78e7-4461-b461-3815eebe0022';

                                } 
                            connection '653b7959-43bf-45b9-a327-9dc723ed740a' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'95aef41e-f398-424e-8f0e-d166c06f0384'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'97bd0038-c289-471b-989e-c3bd62dedba5' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'afc69fbe-0dd9-480b-aa5f-b72c8a537751';

                                } 
                            ref action '97bd0038-c289-471b-989e-c3bd62dedba5' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'; 
                            connection 'a7ca6d2f-59e9-4802-932f-7acd1dc63e70' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'97bd0038-c289-471b-989e-c3bd62dedba5'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'7d8c7503-e8ca-46b5-b10a-dd07fc783d70' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4689b116-bb9c-4af2-a3ca-935679587f3b';

                                } 
                            ref action '7d8c7503-e8ca-46b5-b10a-dd07fc783d70' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'; 
                            connection 'ab529ab7-76a2-4d15-be45-bab0066796a8' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'7d8c7503-e8ca-46b5-b10a-dd07fc783d70'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'9fe48cbb-0f4d-4e46-9f7d-7bf4ed217c35' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d9cee39d-3bed-49ed-bc4c-f01c6560681a';

                                } 
                            ref action '9fe48cbb-0f4d-4e46-9f7d-7bf4ed217c35' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'; 
                            connection '245e38af-816a-41b4-846d-f00a67d82e63' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'9fe48cbb-0f4d-4e46-9f7d-7bf4ed217c35'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'701bc8cb-942a-47e4-89a7-a3997e6dea84' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d86eee53-1e17-472a-a454-779e07b4c76b';

                                } 
                            ref action '701bc8cb-942a-47e4-89a7-a3997e6dea84' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Get Clean Water'; 
                            connection '144d2d85-d66b-4141-9539-dc7808d9b533' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'95aef41e-f398-424e-8f0e-d166c06f0384'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'cc0ddcd4-7a25-4f19-81a6-9a43c6c5cee3' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'2dedf276-8988-40b1-9f20-fa6aa4bfb1bc';

                                } 
                            ref action 'cc0ddcd4-7a25-4f19-81a6-9a43c6c5cee3' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'; 
                            connection '1925c720-3e12-4195-a327-62e9d90c5447' : FunctionalChainInvolvementLink 
                                connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'cc0ddcd4-7a25-4f19-81a6-9a43c6c5cee3'
                                to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'Test Chain - Distill and Distribute Water'.'244e9812-e7c0-4339-9836-73845e2bae7a' {

                                    ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'c27e7350-f701-46fd-b455-c3f99a6d9b3d';

                                } 
                            ref action '244e9812-e7c0-4339-9836-73845e2bae7a' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Residue'; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'outWater Control',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'outPower Control'); 
                         
                    }  
                    action 'Provide Water' : PhysicalFunction  { 
                        @CapellaID { eid = "dcda026e-7437-4231-9024-4f28f604babe"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outDirty Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "68cfa5f2-2174-4d77-a718-8a644bbec56d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inWater Control' : FunctionInputPort  { 
                            @CapellaID { eid = "b295a749-6fdf-430b-b65e-a60379d125a4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "2570c359-329b-4aaa-97b7-dc4bf365c509"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'outDirty Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'inWater Control',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'FIP 2'); 
                         
                    }  
                    action 'Generate Heat' : PhysicalFunction  { 
                        @CapellaID { eid = "5748d3b8-8b2d-48ca-b319-cf7d50d6ce00"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "0ccbbd28-e0f7-43b1-b29b-4c2a1294759f"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inPower Control' : FunctionInputPort  { 
                            @CapellaID { eid = "32ad8004-17af-4b4c-b301-af2b27c384ec"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "d6cd35df-85c0-4341-b748-1c9f60471d68"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'FOP 2'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'inPower Control',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'FIP 2'); 
                         
                    }  
                    action 'Store Clean Water' : PhysicalFunction  { 
                        @CapellaID { eid = "54a635be-01a6-42dc-ba03-8e2f7ee84b69"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "2a233698-4a98-4606-8b4f-186b99c15e30"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "ae91e10a-f969-45c2-b2f9-f90a71362078"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'.'outSafe Drinking Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Distribute Clean Water' : PhysicalFunction  { 
                        @CapellaID { eid = "01c57e99-e0c6-4b91-8c7e-369252acd485"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                            @CapellaID { eid = "1a77c3a8-3acc-48f7-bd7e-8963df0e2202"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "82a3965d-22fb-4f70-845c-5a0c8e57130e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'.'outSafe Drinking Water'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Get Clean Water' : PhysicalFunction  { 
                        @CapellaID { eid = "d55e4653-d35c-4f96-9a51-e78d62fb651e"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'inSafe Drinking Water' : FunctionInputPort  { 
                            @CapellaID { eid = "ce93ed2e-2d88-41d2-a651-ada393f8e37e"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Get Clean Water'.'inSafe Drinking Water'); 
                         
                    }  
                    action 'Discharge Residue' : PhysicalFunction  { 
                        @CapellaID { eid = "aa8bac5d-73ab-45fa-99aa-8387a8dac901"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "d81561c2-9cc7-42a1-94c6-9c6cbd3489fa"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Residue'.'FIP 1'); 
                         
                    }  
                    action 'Tend Water Source' : PhysicalFunction  { 
                        @CapellaID { eid = "0f1369d5-d2c5-46cc-b08d-fd127a4657cd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "0c8c11da-a0c0-4bc1-b138-979b5724e4f4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Water Source'.'FOP 1'); 
                         
                    }  
                    action 'Tend Heat Source' : PhysicalFunction  { 
                        @CapellaID { eid = "f007b3ec-dd79-4f8c-bfe6-ab73879909a5"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "7462565f-142f-47f1-ba4c-693d6b94f4c0"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Heat Source'.'FOP 1'); 
                         
                    }  
                    action 'Discharge Excess Water' : PhysicalFunction  { 
                        @CapellaID { eid = "2385a9c8-8a23-483c-a083-21e89f6d82f9"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "2f00b5f5-e9da-4181-a484-bbb75d4b30b4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                             
                            ref :>> incomingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water'.'FIP 1'); 
                         
                    }  
                    interface '02ad4ead-4d78-4fcf-b476-906943c4ff06' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'outWater Control'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'inWater Control' { 
                        @CapellaID { eid = "02ad4ead-4d78-4fcf-b476-906943c4ff06"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Supply"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Water Supply Control'); 
                    }  
                    interface '8d255656-b25a-46bf-858e-d6ba28161f3b' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'outPower Control'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'inPower Control' { 
                        @CapellaID { eid = "8d255656-b25a-46bf-858e-d6ba28161f3b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat Supply"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Power Supply Control'); 
                    }  
                    interface 'd2fadfc2-5ca1-4fe0-aee5-37b8987689b5' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'outDirty Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'inDirty Water' { 
                        @CapellaID { eid = "d2fadfc2-5ca1-4fe0-aee5-37b8987689b5"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '4689b116-bb9c-4af2-a3ca-935679587f3b' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "4689b116-bb9c-4af2-a3ca-935679587f3b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Distilled Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface 'd9cee39d-3bed-49ed-bc4c-f01c6560681a' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "d9cee39d-3bed-49ed-bc4c-f01c6560681a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '406cefff-802f-442d-8f92-ac38277f7136' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'outWaste'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Manage Waste'.'inWaste' { 
                        @CapellaID { eid = "406cefff-802f-442d-8f92-ac38277f7136"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Waste"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Waste'); 
                    }  
                    interface 'd86eee53-1e17-472a-a454-779e07b4c76b' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Get Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "d86eee53-1e17-472a-a454-779e07b4c76b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '39ffbf26-a32f-4c23-a317-101ee271ae8f' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Maintain and Serivce System'.'outMaintainance'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Allow maintenance and service'.'inMaintainance' { 
                        @CapellaID { eid = "39ffbf26-a32f-4c23-a317-101ee271ae8f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                         
                    }  
                    interface 'f935fe2c-7abd-4fbe-b4e1-0b0229d8297c' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Install System'.'outInstallation'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Deploymentability'.'inInstallation' { 
                        @CapellaID { eid = "f935fe2c-7abd-4fbe-b4e1-0b0229d8297c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                         
                    }  
                    interface 'e9598749-2eae-478f-9ab5-3c00d8ba0952' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Certify System'.'outCertification'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Deploymentability'.'inCertification' { 
                        @CapellaID { eid = "e9598749-2eae-478f-9ab5-3c00d8ba0952"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                         
                    }  
                    interface 'fbf93101-8edf-4ee0-9a61-b7a8209c30ee' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FIP 1' { 
                        @CapellaID { eid = "fbf93101-8edf-4ee0-9a61-b7a8209c30ee"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface 'c27e7350-f701-46fd-b455-c3f99a6d9b3d' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Residue'.'FIP 1' { 
                        @CapellaID { eid = "c27e7350-f701-46fd-b455-c3f99a6d9b3d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Residue"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                    }  
                    interface '947328ac-5f47-4745-a87b-c30aba98372a' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Water Source'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'FIP 2' { 
                        @CapellaID { eid = "947328ac-5f47-4745-a87b-c30aba98372a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Water"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '90dd0efb-797b-4506-a33e-8d26b1b6289b' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Heat Source'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'FIP 2' { 
                        @CapellaID { eid = "90dd0efb-797b-4506-a33e-8d26b1b6289b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Fuel"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface '19fb9821-877c-42ca-8856-ffe2d2b947ec' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Feed'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water'.'FIP 1' { 
                        @CapellaID { eid = "19fb9821-877c-42ca-8856-ffe2d2b947ec"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Bypass"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '4babf37b-7c92-4d8e-b68f-bb3643e0d97c' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FIP 1' { 
                        @CapellaID { eid = "4babf37b-7c92-4d8e-b68f-bb3643e0d97c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Dirty Water"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '2b1b287f-82fd-4aa3-bc91-41164bfa7f1c' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FIP 2' { 
                        @CapellaID { eid = "2b1b287f-82fd-4aa3-bc91-41164bfa7f1c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water CS"; 
                         
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '887d30a2-1d82-47f5-8cd6-b59f75bf6218' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 2'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water'.'FIP 1' { 
                        @CapellaID { eid = "887d30a2-1d82-47f5-8cd6-b59f75bf6218"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Bypass Water"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '1e0bb105-78e7-4461-b461-3815eebe0022' : FunctionalExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FOP 1'
                        to target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FIP 2' { 
                        @CapellaID { eid = "1e0bb105-78e7-4461-b461-3815eebe0022"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water FE"; 
                        ref :>> exchangedItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    action 'Test Chain - Distill and Distribute Water (Backup Pipeline)' : FunctionalChain  { 
                        @CapellaID { eid = "8fa48383-648b-414c-b555-88aaefb7cd80"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action 'bf430795-a77f-40f0-a0b4-4ef05d30f2ed' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'; 
                        connection '332a98f0-3e3e-4715-bd22-b6e77bbc90d5' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'bf430795-a77f-40f0-a0b4-4ef05d30f2ed'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'b2bef7bf-98ad-4417-8aae-713e690b7f73' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'02ad4ead-4d78-4fcf-b476-906943c4ff06';

                            } 
                        ref action 'b2bef7bf-98ad-4417-8aae-713e690b7f73' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'; 
                        connection '34814177-20b9-4adf-bb38-d4b4d45ae171' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'bf430795-a77f-40f0-a0b4-4ef05d30f2ed'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'666aaa23-6a3a-4356-a091-3239cac92afc' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8d255656-b25a-46bf-858e-d6ba28161f3b';

                            } 
                        ref action '666aaa23-6a3a-4356-a091-3239cac92afc' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'; 
                        connection '8b9c67ee-c969-44b6-a87d-3eb50f9bd865' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'b2bef7bf-98ad-4417-8aae-713e690b7f73'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'4322a4b9-bccc-4561-8068-b599b1715568' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d2fadfc2-5ca1-4fe0-aee5-37b8987689b5';

                            } 
                        connection '14561966-305b-4cff-9ea7-5d3efe2507b1' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'22276e04-8e53-4d41-87c4-a6dcad475f16'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'be61662b-b640-4204-8e91-aeda3e8eccd2' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4689b116-bb9c-4af2-a3ca-935679587f3b';

                            } 
                        ref action 'be61662b-b640-4204-8e91-aeda3e8eccd2' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'; 
                        connection '82eece44-fbc8-4831-8c6b-9935b8075c08' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'be61662b-b640-4204-8e91-aeda3e8eccd2'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'cebf2363-11c4-4116-9afb-7cd43638f0b5' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d9cee39d-3bed-49ed-bc4c-f01c6560681a';

                            } 
                        ref action 'cebf2363-11c4-4116-9afb-7cd43638f0b5' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'; 
                        connection '672d5611-f431-43c6-a791-398c4cb78192' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'cebf2363-11c4-4116-9afb-7cd43638f0b5'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'7a7e5532-f91c-4cd1-9a4b-09aadd3b279b' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d86eee53-1e17-472a-a454-779e07b4c76b';

                            } 
                        ref action '7a7e5532-f91c-4cd1-9a4b-09aadd3b279b' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Get Clean Water'; 
                        ref action '4322a4b9-bccc-4561-8068-b599b1715568' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'; 
                        ref action '22276e04-8e53-4d41-87c4-a6dcad475f16' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'; 
                        ref action '758f0a51-3288-43e7-8963-a909e5710572' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'; 
                        connection 'c6fc7169-afbe-4ab5-87d2-59d0e598324b' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'758f0a51-3288-43e7-8963-a909e5710572'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'3f378a93-ab38-447b-8cfa-2980a989390c' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'2dedf276-8988-40b1-9f20-fa6aa4bfb1bc';

                            } 
                        ref action 'bc781924-da75-4f62-84a2-53f8c9a15c18' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Residue'; 
                        connection 'eff881b0-b957-405b-b776-aab089824d37' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'3f378a93-ab38-447b-8cfa-2980a989390c'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'bc781924-da75-4f62-84a2-53f8c9a15c18' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'c27e7350-f701-46fd-b455-c3f99a6d9b3d';

                            } 
                        connection 'fd830524-9d78-4886-89eb-f87c733d7898' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'666aaa23-6a3a-4356-a091-3239cac92afc'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'758f0a51-3288-43e7-8963-a909e5710572' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'fbf93101-8edf-4ee0-9a61-b7a8209c30ee';

                            } 
                        ref action '3f378a93-ab38-447b-8cfa-2980a989390c' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'; 
                        connection '9f5c9ee7-01c0-4902-8978-8d86e855dd4e' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'758f0a51-3288-43e7-8963-a909e5710572'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'22276e04-8e53-4d41-87c4-a6dcad475f16' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'afc69fbe-0dd9-480b-aa5f-b72c8a537751';

                            } 
                        ref action '560cb55b-88c7-4698-9dd3-befc5224c086' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'; 
                        connection '5656b2f0-4d65-4b64-ad62-ba215f4d8eea' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'4322a4b9-bccc-4561-8068-b599b1715568'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'560cb55b-88c7-4698-9dd3-befc5224c086' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'2b1b287f-82fd-4aa3-bc91-41164bfa7f1c';

                            } 
                        ref action '9d736556-09c7-499c-8433-28beef625210' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'; 
                        connection 'e6f5b786-d878-43be-befc-c907fdcb43bb' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'9d736556-09c7-499c-8433-28beef625210'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'.'758f0a51-3288-43e7-8963-a909e5710572' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'1e0bb105-78e7-4461-b461-3815eebe0022';

                            } 
                         
                    }  
                    action 'Maintain System' : FunctionalChain  { 
                        @CapellaID { eid = "d3be1d4c-5f70-4132-8173-7e2d7b705a5c"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '269ef3c3-85ba-4d92-a66a-ac3be75e751c' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Maintain and Serivce System'; 
                        connection 'd0d34f19-e572-4a83-90e2-1a68cab56cf7' : FunctionalChainInvolvementLink 
                            connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Maintain System'.'269ef3c3-85ba-4d92-a66a-ac3be75e751c'
                            to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Maintain System'.'07c8e7c5-be1c-44be-bbbc-9517c44c2a88' {

                                ref :>> involved = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'39ffbf26-a32f-4c23-a317-101ee271ae8f';

                            } 
                        ref action '07c8e7c5-be1c-44be-bbbc-9517c44c2a88' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Allow maintenance and service'; 
                         
                    }  
                    action 'Backup Flow' : FunctionalChain  { 
                        @CapellaID { eid = "4c40bbdb-bded-4cd5-a659-62d3d43c3532"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '6407cf6c-d0b8-4b9f-80e2-1317a9d030d1' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'; 
                    }  
                    action 'Main Flow' : FunctionalChain  { 
                        @CapellaID { eid = "9168cc43-cf40-4595-aaeb-6c397aeaad4e"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action 'bd436bb9-98ed-4c6b-8900-a810ea3a3795' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'; 
                        ref action 'd9986923-caae-4461-9659-8638c8915b53' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water'; 
                    }  
                    action 'Throttle Flow' : PhysicalFunction  { 
                        @CapellaID { eid = "8315c51a-55f9-4705-81e7-bc410cfd8402"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "9f549a2f-cf52-493c-9e92-22a7bac723a4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "f8507e9e-6d37-48c7-80af-10d7e19a5e68"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FOP 1'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FIP 1'); 
                    }  
                    action 'Divert Flow' : PhysicalFunction  { 
                        @CapellaID { eid = "1250b6df-7039-4d41-b1ee-9af8e254b055"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = FunctionKind::FUNCTION; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "4e1edfbe-37eb-4fcd-8beb-d6f842a23fd9"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "601957bc-67ef-4b8f-9b09-5ac70b7d573d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        in port 'FIP 2' : FunctionInputPort  { 
                            @CapellaID { eid = "9c1575c6-1ed7-4058-ac3e-62e757a3c219"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        ref :>> outputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 1',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 2'); 
                        ref :>> inputs =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FIP 2'); 
                    }  
                     
                    ref :>> ownedFunctionalExchanges =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'02ad4ead-4d78-4fcf-b476-906943c4ff06',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8d255656-b25a-46bf-858e-d6ba28161f3b',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d2fadfc2-5ca1-4fe0-aee5-37b8987689b5',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4689b116-bb9c-4af2-a3ca-935679587f3b',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d9cee39d-3bed-49ed-bc4c-f01c6560681a',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'406cefff-802f-442d-8f92-ac38277f7136',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d86eee53-1e17-472a-a454-779e07b4c76b',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'39ffbf26-a32f-4c23-a317-101ee271ae8f',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'f935fe2c-7abd-4fbe-b4e1-0b0229d8297c',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'e9598749-2eae-478f-9ab5-3c00d8ba0952',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'fbf93101-8edf-4ee0-9a61-b7a8209c30ee',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'c27e7350-f701-46fd-b455-c3f99a6d9b3d',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'947328ac-5f47-4745-a87b-c30aba98372a',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'90dd0efb-797b-4506-a33e-8d26b1b6289b',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'19fb9821-877c-42ca-8856-ffe2d2b947ec',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4babf37b-7c92-4d8e-b68f-bb3643e0d97c',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'2b1b287f-82fd-4aa3-bc91-41164bfa7f1c',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'887d30a2-1d82-47f5-8cd6-b59f75bf6218',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'1e0bb105-78e7-4461-b461-3815eebe0022'); 
                     
                     
                    ref :>> ownedFunctions =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'); 
                }  
            } 
            constraint '1ad8651c-3ce4-4381-9ec6-c807d18bce55' : CapellaConstraint { 
                language "capella:linkedText" /* Phase Change Heat Transfer=(<a href="ccfaa68b-325b-4984-8804-ced9f3b18819"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                @CapellaID { eid = "1ad8651c-3ce4-4381-9ec6-c807d18bce55"; }
                ref :>> constrainedElements =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'a47555fc-935f-408d-96db-4203c80f91cf');
                
            } 
            constraint 'bfeb0fa2-9bdf-4125-b5fc-fe26be37224c' : CapellaConstraint { 
                language "capella:linkedText" /* Phase Change Heat Transfer = (<a href="6e33c9fe-194b-45c0-832f-e874d2b9b80e"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                @CapellaID { eid = "bfeb0fa2-9bdf-4125-b5fc-fe26be37224c"; }
                
            } 
            package  'Structure' {
                @PackageMeta {
                    type = "PhysicalComponentPkg";
                } 
                @CapellaID { eid = "88529b0f-a74c-4693-a72b-5c11c0c71b1b"; } 
                interface 'bccb38b3-121a-4260-bc37-18c445875d0f' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 2'
                    to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'PP 3' {
                    @CapellaID { eid = "bccb38b3-121a-4260-bc37-18c445875d0f"; } 
                    attribute :>> interfaceName = "Clean Water Distribution Pipeline"; 
                     
                }  
                interface '2672b9e1-f3d6-49de-9ce4-fa4ad3e4c545' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'PP 3'
                    to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 3' {
                    @CapellaID { eid = "2672b9e1-f3d6-49de-9ce4-fa4ad3e4c545"; } 
                    attribute :>> interfaceName = "Heat Pipe"; 
                     
                }  
                interface 'ae8cbcbd-02d1-454d-8d4e-d21d28f76c75' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'splitter out'
                    to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge'.'PP 2' {
                    @CapellaID { eid = "ae8cbcbd-02d1-454d-8d4e-d21d28f76c75"; } 
                    attribute :>> interfaceName = "Excess Water Pipeline"; 
                     
                }  
                interface 'a491b707-1647-4fc0-92e6-4cf6c1d28924' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'PP 4'
                    to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 4' {
                    @CapellaID { eid = "a491b707-1647-4fc0-92e6-4cf6c1d28924"; } 
                    attribute :>> interfaceName = "Source Pipeline"; 
                     
                }  
                interface '23c18e83-ffb0-4ce4-ab06-fadbdcbabc8f' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Drain Valve'.'PP 2'
                    to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'PP 2' {
                    @CapellaID { eid = "23c18e83-ffb0-4ce4-ab06-fadbdcbabc8f"; } 
                    attribute :>> interfaceName = "Waste Water Drainage Pipe"; 
                     
                }  
                part 'Physical System' : PhysicalComponent { 
                    @CapellaID { eid = "9c03a89f-fac4-43c3-879c-a66ebedf2414"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::UNSET; 
                    part 'Condenser' : PhysicalComponent { 
                        @CapellaID { eid = "3b2e8898-0e75-4a20-b439-d0bd983e795d"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation '241b0033-d41e-435d-ad01-90c055db6432' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser';
                        perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam' ; 
                        allocation 'b8aab39a-76c2-424d-998e-3c42cd267d9d' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser';
                        perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water' ; 
                        port 'h in' : ComponentPort { 
                            @CapellaID { eid = "890f6d67-977b-439c-8d1e-10c908695036"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'cf20e6e0-04c6-4b28-8e4e-02482c36919e' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'h in'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'h in'.'cf20e6e0-04c6-4b28-8e4e-02482c36919e'); 
                        }  
                        port 'CP 4' : ComponentPort { 
                            @CapellaID { eid = "0c5af5e9-e36d-4615-a1eb-876a4ba01f04"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '14c65679-86fe-4576-ad0d-c605dbae6ce9' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'CP 4'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'CP 4'.'14c65679-86fe-4576-ad0d-c605dbae6ce9'); 
                        }  
                        port 'c in' : ComponentPort { 
                            @CapellaID { eid = "7fcf3864-b969-48a2-94e7-a8c536a8e8b2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '46b40a53-bf2b-44b9-9c20-7eaeb0799639' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'inDirty Water'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c in'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c in'.'46b40a53-bf2b-44b9-9c20-7eaeb0799639'); 
                        }  
                        port 'c out' : ComponentPort { 
                            @CapellaID { eid = "c74536f7-abc8-4036-acff-4dd7e6fbae9f"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '9c601b34-0648-40b4-93b6-2d20d5ed8064' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Heat Water'.'FOP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c out'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c out'.'9c601b34-0648-40b4-93b6-2d20d5ed8064'); 
                        }  
                         
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'241b0033-d41e-435d-ad01-90c055db6432',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'b8aab39a-76c2-424d-998e-3c42cd267d9d'); 
                         
                        constraint 'c98141c2-a58d-434c-bec9-14bd625d6e0a' : CapellaConstraint { 
                            language "capella:linkedText" /* Single Phase Heat Transfer=((<a href="e8db4983-0311-4bca-bd16-5444cc0f2ace"/>-<a href="30dc3067-4626-44a4-9a2c-941f612a8500"/>)*<a href="0324618e-e8d5-4224-90fd-44ffa69e5a27"/>*<a href="1feb9267-7841-4e28-8506-55903b671bfe"/>) */
                            @CapellaID { eid = "c98141c2-a58d-434c-bec9-14bd625d6e0a"; }
                            
                            
                        } 
                    }  
                    part 'Evaporator' : PhysicalComponent { 
                        @CapellaID { eid = "78ce67de-970f-4977-bad0-e532637fdd72"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'bb60edd8-2751-4ea5-99ea-e2a7433ab045' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator';
                        perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water' ; 
                        port 'bottom' : ComponentPort { 
                            @CapellaID { eid = "2babd4ff-fa78-4da4-8f0b-c952ef861c30"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '310da036-b550-493f-82ed-3780dae746a0' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FOP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'bottom'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'bottom'.'310da036-b550-493f-82ed-3780dae746a0'); 
                        }  
                        port 'top' : ComponentPort { 
                            @CapellaID { eid = "c0d74159-97eb-45c7-a8b5-670099dace64"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'ad9f984a-292a-435b-8de8-b38d2477c52c' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FOP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'top'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'top'.'ad9f984a-292a-435b-8de8-b38d2477c52c'); 
                        }  
                        port 'middle' : ComponentPort { 
                            @CapellaID { eid = "b09d3084-5ccc-414c-b1c4-36e277852236"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'b9cae6db-2ee9-47ef-8434-09ae8b46af5b' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FIP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'middle'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'middle'.'b9cae6db-2ee9-47ef-8434-09ae8b46af5b'); 
                        }  
                        port 'heater' : ComponentPort { 
                            @CapellaID { eid = "f75f8ef3-f140-433a-8a46-ab9423b454fa"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '8cc34582-12d1-4190-bfe6-00b1cf58fb4f' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Boil Water'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'heater'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'heater'.'8cc34582-12d1-4190-bfe6-00b1cf58fb4f'); 
                        }  
                         
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'bb60edd8-2751-4ea5-99ea-e2a7433ab045'); 
                         
                    }  
                    part 'Drain' : PhysicalComponent { 
                        @CapellaID { eid = "843b4644-05ec-4039-95f6-4a30835692d0"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'f9986bd9-5e55-4662-8f95-b7f1fd7ee479' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain';
                        perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue' ; 
                        port 'in' : ComponentPort { 
                            @CapellaID { eid = "9ba61bba-a632-4c3a-8990-ae8ef795f61a"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'bfad8337-2fa6-4876-b4f4-84217b055eb9' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'in'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'in'.'bfad8337-2fa6-4876-b4f4-84217b055eb9'); 
                        }  
                        port 'out' : ComponentPort { 
                            @CapellaID { eid = "34845a2f-dbc4-4b79-82a9-64de8d6a2ab1"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '9220f7b7-16a5-4a54-8712-a831b0629638' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'FOP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'out'; 
                            ref allocation 'f8fff004-1d3a-43d9-8fd9-0af1f20b02b8' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'Drain Residue'.'outWaste'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'out'; 
                             
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'out'.'9220f7b7-16a5-4a54-8712-a831b0629638',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'out'.'f8fff004-1d3a-43d9-8fd9-0af1f20b02b8'); 
                        }  
                         
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'f9986bd9-5e55-4662-8f95-b7f1fd7ee479'); 
                         
                    }  
                    part 'Water Distiller' : PhysicalComponent { 
                        @CapellaID { eid = "08d85791-ac2d-45f1-8d3d-935a03369671"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        interface '0ec4d575-6eeb-4ac7-9af6-9ae1d08c7cbf' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 1'
                            to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 1' {
                            @CapellaID { eid = "0ec4d575-6eeb-4ac7-9af6-9ae1d08c7cbf"; } 
                            attribute :>> interfaceName = "Steam Pipe"; 
                             
                        }  
                        interface '7d01eaa0-15e4-4d3b-a8d8-6281604f30a0' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 2'
                            to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Drain Valve'.'PP 1' {
                            @CapellaID { eid = "7d01eaa0-15e4-4d3b-a8d8-6281604f30a0"; } 
                            attribute :>> interfaceName = "Drainage Pipe"; 
                        }  
                        interface '16f1f463-4068-4754-b761-c013629c789e' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'condensor in'
                            to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 3' {
                            @CapellaID { eid = "16f1f463-4068-4754-b761-c013629c789e"; } 
                            attribute :>> interfaceName = "Condenser-Splitter Pipe"; 
                             
                        }  
                        interface '3a8d76f7-572e-4c8b-a722-fead78941a42' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'evaporator out'
                            to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 4' {
                            @CapellaID { eid = "3a8d76f7-572e-4c8b-a722-fead78941a42"; } 
                            attribute :>> interfaceName = "Feed-Boiler Pipeline"; 
                             
                        }  
                        part 'Mechanical Boiler' : PhysicalComponent { 
                            @CapellaID { eid = "f7d5e45f-d8bf-4556-baab-caaf3ae003a9"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "e294c4a0-0ae2-42a5-a6aa-fca33142b5e9"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '86ccb022-828d-48d9-8f7c-4fb1e0f40346' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 1'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'top'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 1'.'86ccb022-828d-48d9-8f7c-4fb1e0f40346'); 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "3a3ff614-450e-4377-bf40-d305f275ad03"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 3' : PhysicalPort { 
                                @CapellaID { eid = "751b9ddf-6cff-4992-83da-840fb6e3d778"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '3620ed4d-0aa2-4ef2-bb6e-67b15cbbd944' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 3'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'heater'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 3'.'3620ed4d-0aa2-4ef2-bb6e-67b15cbbd944'); 
                            }  
                            port 'PP 4' : PhysicalPort { 
                                @CapellaID { eid = "891aec4d-b1ed-4c45-89a6-d42e71b1be0b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '16d31042-2a30-4edb-8586-35931a9fe83d' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 4'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'middle'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 4'.'16d31042-2a30-4edb-8586-35931a9fe83d'); 
                            }  
                            allocation '692bb389-657a-4d35-8277-c36b5c6cdd8f' : PartDeploymentLink
                                allocate deployed ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler'
                                to deploying ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'; 
                        }  
                        part 'Condenser' : PhysicalComponent { 
                            @CapellaID { eid = "63870bb6-f301-4a87-a489-bdde2e2f11f6"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "20c9b63a-99b1-4931-9b77-293e7e2ffc1b"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '29f33cf6-796f-4fd7-b1f1-9b0000a89a2e' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 1'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'h in'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 1'.'29f33cf6-796f-4fd7-b1f1-9b0000a89a2e'); 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "b93fff9c-8431-471d-85e9-8301b9c11b78"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation 'bffa11b5-bf52-448e-afc4-77242d3111ad' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 2'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'CP 4'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 2'.'bffa11b5-bf52-448e-afc4-77242d3111ad'); 
                            }  
                            port 'PP 3' : PhysicalPort { 
                                @CapellaID { eid = "3fa140a4-d378-4623-81f6-98d0227a0d3e"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation 'bbd93b45-68b8-4e21-a904-acdffb883cec' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 3'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c out'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 3'.'bbd93b45-68b8-4e21-a904-acdffb883cec'); 
                            }  
                            port 'PP 4' : PhysicalPort { 
                                @CapellaID { eid = "9dad728d-d113-4329-8025-a74578742c90"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '35db7fa0-0e31-47f1-a032-8ecf428ee4e0' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 4'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c in'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'PP 4'.'35db7fa0-0e31-47f1-a032-8ecf428ee4e0'); 
                            }  
                            state 'Physical Component State Machine' : StateMachine  { 
                                @CapellaID { eid = "baaa6f22-089f-4080-9061-00b8ca6ed8aa"; } 
                                attribute :>> isControlOperator = false; 
                                state 'State 1' : State  { 
                                    @CapellaID { eid = "351798df-a124-417a-9386-511b15f508cf"; } 
                                }  
                            }  
                            ref :>> ownedStateMachines =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'.'Physical Component State Machine'); 
                            allocation 'd47e5b84-73f8-45ae-b798-d8382e3addd7' : PartDeploymentLink
                                allocate deployed ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser'
                                to deploying ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'; 
                        }  
                        part 'Drain Valve' : PhysicalComponent { 
                            @CapellaID { eid = "4bfb576e-6b2a-48df-a900-d4de7cc8bf39"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "087cedc5-8c5f-4f02-95c3-a10e3edfe8c6"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "110f557a-1330-4807-b22d-81b098f101d2"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                                ref allocation '456d2191-b528-4efd-b65b-7de5d2fe0056' : ComponentPortAllocation
                                    allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Drain Valve'.'PP 2'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'out'; 
                                ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Drain Valve'.'PP 2'.'456d2191-b528-4efd-b65b-7de5d2fe0056'); 
                            }  
                            allocation 'b5facf59-02c9-4c34-bef3-2c79a30b9d2c' : PartDeploymentLink
                                allocate deployed ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Drain Valve'
                                to deploying ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'; 
                        }  
                        part 'Diverter Assembly' : PhysicalComponent { 
                            @CapellaID { eid = "c4a90174-38f0-4429-806d-954c9bb10fed"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            interface '50b4e630-a907-46b6-a242-c519f4ba9127' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'PP 1'
                                to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'PP 1' {
                                @CapellaID { eid = "50b4e630-a907-46b6-a242-c519f4ba9127"; } 
                                attribute :>> interfaceName = "Pipeline"; 
                                 
                            }  
                            interface '3702f33d-19cb-46c0-ba5e-fc513590d7ae' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'PP 2'
                                to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'PP 2' {
                                @CapellaID { eid = "3702f33d-19cb-46c0-ba5e-fc513590d7ae"; } 
                                attribute :>> interfaceName = "Backup Pipeline"; 
                                 
                            }  
                            part 'Splitter' : PhysicalComponent { 
                                @CapellaID { eid = "e9503545-713f-4445-8442-c0d2399339d4"; } 
                                attribute :>> isAbstract = false; 
                                attribute :>> isActor = false; 
                                attribute :>> isHuman = false; 
                                attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                                attribute :>> nature = PhysicalComponentNature::NODE; 
                                port 'PP 1' : PhysicalPort { 
                                    @CapellaID { eid = "5a7088e3-6c8d-4da5-a65d-392757394a3f"; } 
                                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                                    attribute :>> isFinal = false; 
                                    attribute :>> isAbstract = false; 
                                    attribute :>> isDerived = false; 
                                    attribute :>> isPartOfKey = false; 
                                    attribute :>> isReadOnly = false; 
                                    attribute :>> isStatic = false; 
                                    attribute :>> isMaxInclusive = false; 
                                    attribute :>> isMinInclusive = false; 
                                    attribute :>> isOrdered = false; 
                                    attribute :>> isUnique = false; 
                                    ref allocation '1dc85021-7844-4062-b975-ed42b1cf2efb' : ComponentPortAllocation
                                        allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'PP 1'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port4'; 
                                    ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'PP 1'.'1dc85021-7844-4062-b975-ed42b1cf2efb'); 
                                }  
                                port 'PP 2' : PhysicalPort { 
                                    @CapellaID { eid = "2549ac8e-e074-4497-81f6-14f0a31a1c98"; } 
                                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                                    attribute :>> isFinal = false; 
                                    attribute :>> isAbstract = false; 
                                    attribute :>> isDerived = false; 
                                    attribute :>> isPartOfKey = false; 
                                    attribute :>> isReadOnly = false; 
                                    attribute :>> isStatic = false; 
                                    attribute :>> isMaxInclusive = false; 
                                    attribute :>> isMinInclusive = false; 
                                    attribute :>> isOrdered = false; 
                                    attribute :>> isUnique = false; 
                                    ref allocation '125ede92-4589-453a-8850-db63940e1538' : ComponentPortAllocation
                                        allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'PP 2'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port3'; 
                                    ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'PP 2'.'125ede92-4589-453a-8850-db63940e1538'); 
                                }  
                                port 'condensor in' : PhysicalPort { 
                                    doc /*
                                    <p>This physical port represents a input to the splitter from the &#39;Hot Water Pipeline&#39; from the &#39;Condenser&#39;.</p>

                                    <p><img src="data:image/png;base64,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" /></p>

                                    */ 
                                    @CapellaID { eid = "595428e6-ed20-49bc-b62c-4e933c616db6"; } 
                                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                                    attribute :>> isFinal = false; 
                                    attribute :>> isAbstract = false; 
                                    attribute :>> isDerived = false; 
                                    attribute :>> isPartOfKey = false; 
                                    attribute :>> isReadOnly = false; 
                                    attribute :>> isStatic = false; 
                                    attribute :>> isMaxInclusive = false; 
                                    attribute :>> isMinInclusive = false; 
                                    attribute :>> isOrdered = false; 
                                    attribute :>> isUnique = false; 
                                    ref allocation 'c1781bab-2e3c-4d71-8827-6f7620a6f7ca' : ComponentPortAllocation
                                        allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'condensor in'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'main2'; 
                                    ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'condensor in'.'c1781bab-2e3c-4d71-8827-6f7620a6f7ca'); 
                                }  
                                port 'splitter out' : PhysicalPort { 
                                    doc /*
                                    <p>This physical port represents the output of &#39;Splitter&#39; to &#39;Excess Water Discharge&#39; through the &#39;Bypass Pipeline&#39;.</p>

                                    <p><img src="data:image/png;base64,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" /></p>

                                    */ 
                                    @CapellaID { eid = "6c4408c9-202d-4339-9820-2ffd52909745"; } 
                                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                                    attribute :>> isFinal = false; 
                                    attribute :>> isAbstract = false; 
                                    attribute :>> isDerived = false; 
                                    attribute :>> isPartOfKey = false; 
                                    attribute :>> isReadOnly = false; 
                                    attribute :>> isStatic = false; 
                                    attribute :>> isMaxInclusive = false; 
                                    attribute :>> isMinInclusive = false; 
                                    attribute :>> isOrdered = false; 
                                    attribute :>> isUnique = false; 
                                    ref allocation 'd6ff7720-30bc-4d28-a52c-9c2905b81d15' : ComponentPortAllocation
                                        allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'splitter out'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port2'; 
                                    ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'splitter out'.'d6ff7720-30bc-4d28-a52c-9c2905b81d15'); 
                                }  
                                allocation 'cf8fec73-4869-48ea-88be-e635d615819e' : PartDeploymentLink
                                    allocate deployed ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'
                                    to deploying ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'; 
                            }  
                            part 'Feed Valve' : PhysicalComponent { 
                                @CapellaID { eid = "ac9af758-b060-43e8-b668-9088ca9c5097"; } 
                                attribute :>> isAbstract = false; 
                                attribute :>> isActor = false; 
                                attribute :>> isHuman = false; 
                                attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                                attribute :>> nature = PhysicalComponentNature::NODE; 
                                port 'PP 1' : PhysicalPort { 
                                    @CapellaID { eid = "e8ffcd6a-c6d4-4d24-b1f0-372f96605291"; } 
                                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                                    attribute :>> isFinal = false; 
                                    attribute :>> isAbstract = false; 
                                    attribute :>> isDerived = false; 
                                    attribute :>> isPartOfKey = false; 
                                    attribute :>> isReadOnly = false; 
                                    attribute :>> isStatic = false; 
                                    attribute :>> isMaxInclusive = false; 
                                    attribute :>> isMinInclusive = false; 
                                    attribute :>> isOrdered = false; 
                                    attribute :>> isUnique = false; 
                                    ref allocation '9bd5d43d-080c-4d44-9824-461cebf6ae60' : ComponentPortAllocation
                                        allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'PP 1'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 2'; 
                                    ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'PP 1'.'9bd5d43d-080c-4d44-9824-461cebf6ae60'); 
                                }  
                                port 'PP 2' : PhysicalPort { 
                                    @CapellaID { eid = "e673bd1a-113f-42c5-96f9-29d7e5f3a567"; } 
                                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                                    attribute :>> isFinal = false; 
                                    attribute :>> isAbstract = false; 
                                    attribute :>> isDerived = false; 
                                    attribute :>> isPartOfKey = false; 
                                    attribute :>> isReadOnly = false; 
                                    attribute :>> isStatic = false; 
                                    attribute :>> isMaxInclusive = false; 
                                    attribute :>> isMinInclusive = false; 
                                    attribute :>> isOrdered = false; 
                                    attribute :>> isUnique = false; 
                                    ref allocation '4f3093dd-0aa7-4531-9884-49f2d023c826' : ComponentPortAllocation
                                        allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'PP 2'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 3'; 
                                    ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'PP 2'.'4f3093dd-0aa7-4531-9884-49f2d023c826'); 
                                }  
                                port 'evaporator out' : PhysicalPort { 
                                    doc /*
                                    <p>This physical port represents an output&nbsp;from the &#39;Feed Valve&#39;&nbsp;to the &#39;Boiler&#39; through the &#39;Dirty Pipeline&#39; physical link.</p>

                                    <p><img src="data:image/png;base64,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" /></p>

                                    */ 
                                    @CapellaID { eid = "b2c69ee4-910a-4296-906c-dc43e1b8316a"; } 
                                    attribute :>> aggregationKind = AggregationKind::UNSET; 
                                    attribute :>> isFinal = false; 
                                    attribute :>> isAbstract = false; 
                                    attribute :>> isDerived = false; 
                                    attribute :>> isPartOfKey = false; 
                                    attribute :>> isReadOnly = false; 
                                    attribute :>> isStatic = false; 
                                    attribute :>> isMaxInclusive = false; 
                                    attribute :>> isMinInclusive = false; 
                                    attribute :>> isOrdered = false; 
                                    attribute :>> isUnique = false; 
                                    ref allocation 'fad54811-abdf-45e8-9139-f4a2e0484bbb' : ComponentPortAllocation
                                        allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'evaporator out'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'out'; 
                                    ref :>> ownedComponentPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'.'evaporator out'.'fad54811-abdf-45e8-9139-f4a2e0484bbb'); 
                                }  
                                allocation '707c62c0-7880-414d-b27e-2af9ead38338' : PartDeploymentLink
                                    allocate deployed ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'
                                    to deploying ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'; 
                            }  
                            ref :>> ownedPhysicalLinks =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'50b4e630-a907-46b6-a242-c519f4ba9127',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'3702f33d-19cb-46c0-ba5e-fc513590d7ae'); 
                            ref :>> ownedPhysicalComponents =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter',
                            'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'Feed Valve'); 
                        }  
                        constraint 'Dirty Mass Flow Rate' : CapellaConstraint { 
                            @CapellaID { eid = "e88f8f11-6ae0-48b8-b344-fa3104cc81d9"; }
                            attribute :>> summary = "Mass Flow Rate Max = 50 g/s";
                        } 
                        state 'Distiller' : StateMachine  { 
                            @CapellaID { eid = "13cbbbf0-36c0-444f-a2e1-d5302f7b93aa"; } 
                            attribute :>> isControlOperator = false; 
                            state 'State 1' : State  { 
                                @CapellaID { eid = "dc47fc8c-3a5e-4630-8956-a68f8499bf8f"; } 
                            }  
                        }  
                        ref :>> ownedPhysicalLinks =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'0ec4d575-6eeb-4ac7-9af6-9ae1d08c7cbf',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'7d01eaa0-15e4-4d3b-a8d8-6281604f30a0',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'16f1f463-4068-4754-b761-c013629c789e',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'3a8d76f7-572e-4c8b-a722-fead78941a42'); 
                        ref :>> ownedPhysicalComponents =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Mechanical Boiler',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Condenser',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Drain Valve',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'); 
                        ref :>> ownedConstraints =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Dirty Mass Flow Rate'); 
                        ref :>> ownedStateMachines =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Distiller'); 
                    }  
                    part 'Feed' : PhysicalComponent { 
                        @CapellaID { eid = "f185e8e8-d65c-49d0-9ea1-734e6ef585dc"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'ea32046e-b0ce-4bde-b954-d0a248089a2f' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed';
                        perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow' ; 
                        port 'out' : ComponentPort { 
                            doc /*
                            <p>This component port represents an output from the &#39;Feed&#39; behavior component to the &#39;Evaporator&#39; component port through the &#39;Hot Water&#39; component exchange.</p>

                            <p><img height="294" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAABTgAAAFwCAYAAACcrRTpAAAAAXNSR0IArs4c6QAAAARnQU1BAACxjwv8YQUAAAAJcEhZcwAAEnQAABJ0Ad5mH3gAAHHESURBVHhe7d0LvCTVfdj5/7U8DAOMZ8TDHr3QJJJh6Gpp7Q/OJ5tYYuSI2KCPJSHPVN8kGyEYr2V/PkrCjuMHWgt3tdEDSY4nrNZZ2zgebCVkb9dFg40XxVnLH70Wi93wMRt1NSPZWoMFRhagGYvHaLgMd8//1Knqququ7uq+fe903/v7NofuPnXq2T1dp/73nFMLq5bIwoIAAAAAAAAAwFyxAc6XVldlgQgnAAAAAAAAgDljA5xnXiLACQAAAAAAAGD+2ADni2deIsAJAAAAAAAAYO7YAOcKAU4AAAAAAAAAc8gGOF94UQOcLgcAAAAAAAAA5oQNcJ5eOUMLTgAAAAAAAABzxwY4v6MBTpcBAAAAAAAAAPMiDnC+8KJ5RYgTAAAAAAAAwHyxAc5TpzXA6XKAmfCCfOjX/0o+9E19fYH8h9Ye+QmbDwAAAAAAAPTYAOfzGuDMOP/cbe5V7LoD18l//I+he9dTLJd47jsr7lXRs/Lu4BvyKfdO5Bz5pfddKv/zJe6t8/Bn/0p+6LMvuHc9P+G/Xj7puTfYUGWfSewC+WQw7QDkC/JhDXA+qa/XY/lnQfQNOT981r1Ro/cre9wHfv8zy7ziLZfKf33LOfb1evlU+Bfy7ih+3bc9uf0r7lvm3/4lF8p/fd+FcoXNBwAAAAAAWJvv0v+trq6apM9xUp/844fkM19+TL7+5HfknrvvkR+4cl+ujCYNfOp0TVpW51HFcrlkS/Tkpn3zW/JDwV+UBtJ03lx50hrTs/LPzfE+v/3sgGmFFH8E5Yrlp5Hcoq3itHlMbldyimWKyRVT+nrYdNU3vXKq9l3Yd0kvgPqpKF9W3/e8IA9/MzOvmZb8YeMK7wLZl5lvdBrje0oikUgkEolEIpFIJBJpyyUX4DQp8yjSQOajjz4qr/8He3LpS1/7grzmknNdqZ7ssoqPxLv818kzzdfI+y9Jpjwj7/5335KH3fQr3vIaM13LxOn/ti3TkrI81vx48lvy91rfkGP2aGfySx898WeXTd8n12VKTuuRlc2f20ft++Lj5V/g9qrKfmVl85NHVjZ/jMcY34V9tQt6LS+ffEG66ZTT8rBtbZt4QY51T6dTu6ZsYt8l29L8kY+xv6c8ePDgwYMHDx48ePDgwYMHj632iAOc+lg1zy4Vve8D77XPH//Vz/Sl7/deJ82P/JSdnsguq5hShfxPhX/jghgi+/a/Rh646pzc9H1XvUZ+94r8PKQ1Jne81cDpmZQvnJ+2bsmtTg2cPscpMWhaNlU57olB0yontww1cHqSLt4m+1w5DXA+nOR/8zn5VC7AKfLwN19I59PXsQvkunH/Hbs51cDpJBKJRCKRSCQSiUQikbZ0smNwfvv5fJfwXedvt93NX/l9F8tley62ef/yZ/6J7aqedEPPevfVP2C7qP/13zxlX//tc6fdlKLn5D23/o3cY15dd+Dvyu/W4txsvsj58ru3aIvAUbLzJIrzviC3/cZj8hEbeNFpF8ixzDzxNmTLGJe8XB74mZe7IM7w+aX2ffK3B853bxKTbNfL5XjpNiT6l7tv/6ttIDhWfZn33P3/yXu6cXbOwP2JHf/8Y/L3Pxd/T/KfXU+2TG5Z3b+RXXc/F78u7Nugben/XEYf+9y6M/LbOsFxz267sW//98m7TJ6dp6/8qM/ISZdZ/F70G3ncM9vXv67R38VJvgu9ec6R9//Mq+VmHUM3s0/X1Z6Te3R6enwyx93lSYXPq9q2jfnv4oDIeyoeewAAAAAAMB96XdQzqej4Y38i9/3RHw4Mbv7KTQfk0M++272LFZeXTVlpfvfZXoDiigvknZnyA5MGU/oCN0qDHXFQJC3rpgwKhGgAZdetmQCXevKEvOdzvZZnw+a3QZ3l53plJ96u/m34+9nlftO8H7Dc4597LL9+l19lmQMlyylJifi4ZdJvnLAt+S5/8/fGwS7VPSEfsWMwviAf+bwLEF7ycvnST79cLtfl2X0qCWAZdp3uddmx1wDZoO3LSoJkaTmXX+UYPazHNxPcVMc/54KbTrrcqp+RJjdN5fJLUqLvuGvKbl92vjG+iwNll1VIl1/cCx5qt3TNO9Z122H+/d6cTH/yOTlmvwMraff1fVecH3/+Jg1S/LwGctMm+neROV7pdBKJRCKRSCQSiUQikUhznXpd1DOPol//4G/JC8++aFtnFtOfR1+T1vvvcCVj2WUVHz2Dc4fPrY9n5YY0SHGO3PzTf0dOfEDT92ZapWl397h01nUH4rJHs7dvvuTl8qc6f7Y14MPPycMD5t931av61iUPn5DbnlzbdqXL/elMa8CHn3VlT8ttnzohxzUv2dbs9qbrr77Md+pxyOZf8b1umefZ5Qx+DBeX2Sa/+BPJcl+w233s898026fvzTH5id1yuS2X2Sejd1yT7epf46D9yX5Ol2eXYdOr0mDrPZ8/MfzzHHjcn5XbPp+0MDxfjrrl/mmhNWa81OqfUfzoyeYOfowjmaf6d3GS78LlV5yflr+n+6zJOS3Hn4rf77vkuzPTXzD5Zg5zTOMg5Dly3RXx+JtVPq/h27bGfxfmWLzTTuXBgwcPHjx48ODBgwcPHjx4zPvDBjjNcy7qWaRd03WszW89851cCoLA3kG9KLusvlRSJqs4LZe6z6UttvZddYn8wsXJtPPlF9LgU9xF1ua7HA1SvXNfnHd55k7Q+644L25Rts9Md3kqXZ97r/P/4puTcUGz63Kt2NawXelyLz5P3pm0gFSa983n5Z6kxeCTJ+QffPAv5eWa0gDWC3LPw64lo8sZuUyXspK80uTKqXf+xN+Rb/1SJr13d9oqb/Xi3fI7yf6a7b3RBQlzxyS7T1d8r9yfHtd4/l9wn5P5zynZnydfkOPJfC49/PnH4+PzwcddYDWWlnHvRx6j3Oe5O21VfPmbzWuXr+z843xGLqUyeQOTK6b6jrumn+gF5pWdZ9zvYnYlRpJXmrLH66kVeTjd/3PMvzFzTC/eJpfbiRoAfc78+1hx70x+ui1xGvl5mZSV5q/13wWJRCKRSCQSiUQikUikTZNcF/XVXFLaOvOtb3i1vUu63kX9S3/a6SunAU6drknL6jy79uzsK5dNqWx+9sYlDz8n92Sn9SVXTtmdyE9P2ff6HL9Vg8pdftG2vjzzxuXp6zhLJeUGl3evlXk9smwuKymnb+I8ZfM0iOfelzLzjLVMTdlMfZeWL0+pAdOy6fI3XSK/eLEra50vv/Cm3nHO7tM+89ln5+0lM3HQdg/Mf0E++pt/KRd+6C/lH6atLjOGzluW794Y2e/I6qr5rib7luRV/oySZbg8o5dXnlIDppn/etJ1uPcqzeulVJKX3Xl9lyk7OMWBSsvs++8//Gy8/xefJ++4WKefJ+9MWknrdJOsK8x0O3/Vz8uksm2rfMzj50Q6P4lEIpFIJBKJRCKRSKRNk1wX9TgQkKSn/vZULv327/yn3PSycpq+9pVvDiybpKw0/6Lz5R1pQOw5+egXVnLz5JIrpfR1dlpRX/lh5Yr5Li+bnZTrK2vkymkaVlbz3WuVLduX716ry9/8Knnq/Xv70hdt8HDAvElyeWpgfjavJBUNKpOk41/4pnzUdVmOPSeHPpUZEzHTwu/4k/mWjbnkyqih+Q+f7K1v3yXpcfn3adTcKJu3LN+9Vsefyn4fX0i7Y1uFsiM/o0L53nIHp6K+Mi5f6evSPJeK0mnuvb7Ili9L79iXtBzVlpKuhaZ+rm765ea19dRzaUtLHbvTzj/O56XJZQ3MMyb+d0EikUgkEolEIpFIJBJpU6TeTYY25KHriWVzV+W75efffJ6bIvKVLzwuP/zFFzLTV+X4Fx+XQ8fNq33nyTvScifk99MScWA0Zsrsi3N74rX35/byBuX3PCcfS7bpqZNyqLiuqWzXgPzccr8pH9MxDdPHc3Lo2HPpu54Ryyzkajfj42l+2aMnm9v3yB6bfZf0glbHn4w/P31kApy5fH0c/2b6vie73f35x59KWgFuk18w3yNbymzHxzJN/MrmLc3PbGP28zz+xZPmdY/NHeMzSh6x/DYMfvRkc7OPHpcz5ncxu4Rq3wXzSI/PinzFBSvfcUVv3M7L9p1fmL5N3rnvu+20cT6v0m2bwr8LHjx48ODBgwcPHjx48ODBg8fmeGS6qOvz+qdUcdrll8gX3uRafRlf+cJfyyUfeTRNb9LAjC17nvz2dUkw9Hn5ybTMk/IHLvcd110ib0+W6/JUdn2pQXlGWta9V+k23XFSvuLyLn/Tbreu6WxXf352uSvysTuS5faWXT7vkPyLMkHGp07Km3R5x57Pz1dIiT84lt2GOP3kw1rGbN+x5NjE2/12c3yS9fzBsSfl9+2ysvtUWJ7ZBt1gu043XeW2xeUpfX/Z5b1gWnp87nhOJNNNvmze0vyLdsnPpy0Ke5+n/R5mxPOP8Rm5lCjmD0qpAdMGTx/zuzjBd2H1ovMyra6VWcZF2emZZVrb5DI3fazPq3TbpvDvgkQikUgkEolEIpFIJNKmSAO7qK9nSg2YdtkPv1L+5hcvSVtm5Z0nb7/clb38kpJy58kdv/hauSMpZ1JWkpfLTvJymYPyzLLf2QvKqXe887Xy+R/OdD1e63aV5etyf7IXKOzZJj//w+cNn7c032zTgGVm58slN73U6op8/Lf/Wj7uWvOlgd+LdskdaeD6efkff/tv4xsDlR6rXqAsK7stWTbPrOPzfZ/NK+XnBgTMspK8svy3m8/3jmy3aT3eP/lK+flBgbiKn1GSEsX8vuTKWcVpLmWl+WN8F8f+Lti0TS7LBjgvPl/eng1wmmW+PXvs9pnpybQxPq+h27bGfxckEolEIpFIJBKJRCKRNkdaWDW+eTJurbX+npef+thTcq959fZ3XmqDLLNtRX71d56QX7VBu/Pkjl+4WN5u87FlPfW3sv93/jZupXr5xfKNQqCukq88JXt+/3nzgu8UAAAAAADAWmXG4NyYlLj39/9K9nwsDh4OKjcrKWvQdNLmTX/w+8Xv5/PyU0lw03j7Ph0/Mjt9RNLA5sfM994GN2MDy5FIJBKJRCKRSCQSiUQikSon24LzGye0Bae+XW/Py09//GnbgjO2Tf71jXvkX2e7us6UFfk3R78h/8a14PzNn7+I1nZbyL1/8HX56SSaWXT5RfLX7xiz9eZXnpZX/kEvuMl3CgAAAAAAYO3iAOe3npOXNiK+OXdW5Nc0wPm0vj5PfvPnLpIft/nYCr56/zfkR+7P31QoCcr/7EXuLQAAAAAAAM4qG+B84mkNcBLhBAAAAAAAADBfbIDzr59+lhacAAAAAAAAAOaODXA+/pQGOIlwAgAAAAAAAJgvNsD52JMEOAEAAAAAAADMHxvgdK8BAAAAAAAAYK7YAOd//n/+0r0FAAAAAAAAgPlBC04AAAAAAAAAc+u73DMAAAAAAAAAzB0CnAAAAAAAAADmFgFOAAAAAAAAAHOLACcAAAAAAACAuZUGOMPGgiwsFFIjdFOri1p1N39Dxp97/cX7ub7b1jsG2VSXVhRP122oJ28AAJgT/ee32TzXj8J5GgCA6dgqcYRJ2H0aciyojwDTlW/B6bdFb6oep7b4YWO8f1BRSxYDkaDj5nfZs8Rvb9C25Y6lpo40PTdtHpjPfqHeEn5OAQDmBC+tuqlkBzVpZ89tbXO6mLWrkKrnL87TAABMxxaII6wb6iPA1Azpou5LM/AkCpfH/LLWpDZP/yABAMBQUWtRAvPoFC86TKW8vaWuQgAAwHDEEQCcHaPH4KzVJPs7k29G3Ws+bfPrgfkRC6Wh0zJNscvmMVNsi5BG6ObJNEcfPU/83D89VmzunWxOvpl3tWXlmt3XWxLqsidodj9M+f4m2xxmttHtT9SSejpPf1P+SY+h3V9dQRTEy+8dvJLlAQA2L3P+CSLxm81cfSBPz+OF84I9RyXnpuS8kz3fD8qLTf38NQVzcZ4GAGBWbLI4gipfdsyen5Pp9ZZ0Xf40DduGmamPEDfAWVIe4EyaiTd7TTP0i18PfekkzafbNQnq8T8Qr9mR1U5gfsT8uPuaa9IxbJ5E1/wj9DLN0avMEzYWRZbi6W0/kmCx1yzazp/tRme3q9ywZek/2kZXW624ZTUjaZgLvWmqsr9R0Eq3sRN48Y+J3WzN60jgmR/3wslg0mNou/Hr5+e5/dbX+qPY6LpuAy4PALD5mYuH0Jyd/Sn87BfP94Pypn7+moK5OE8DADALNmkcYdSyiRu418QNcDaZL51lvner+jZNXrBqvqQZ7VVfvFXzRc3orJp/M6vmi+3eBqvmh8mUTIyaJ37t5QpMME9uvTp/ZpsKdD9781ZZVnFb4mXov+Yy5ockfywLxzO/DaOPa//6Buxj28+sY63H0Mgtz+j7bAEAW4KeD0b+/g847+TOGwPOOwPz1uH8NcCmPE8DAHAW2HNgyfk0Nvo82n+tOcF5cs3n1gHn7tSoZQ+abnL76gd5xA2A6Sq5yVBb/CiQVi5sry04IgnqSVNjTXUZ+keJivPUsoNtTDKP1ZWulpmgpUnpsiLzPGAskJpXLD9AcbDgTknXvor763k19yrhSV9WYq3HcBDvoPj61x6zrMwffAAAqKz/vFPIW4/zV5nNdp4GAOBs2exxhFHLJm7QQ9wAZ1FJF3Vf2m1fwka+abLNz/7jc8kUHWKj5lkH5l9t2b/b6VqP/Z32Mj1pajPzTiBdbeY+YOwOAMAmZCq13oYG1makDpAzD+dpAADONnNuMyeyzRlHGLJs4gYZxA1w9pSPwek37fgMrWRE2EkucDZqnqxpXoiVLKsbTWPhzjS3N7Eey0x4Tem4sTvS7wYAYPOyf4mPJMg1x6jAnITGPkus5/lrUvN2ngYA4GzajHGEUcsumU7cgLgBNtaQu6h70mz6EgWL8V2vzBe0qQPK5gacjaTV6A3K22ej5skaNH/UyjeTryq5qMsMPCxhY7pNrde6v4NMa5nmBzm989uA/e5vqg4A2Hz0L/Ft8fWOmPXCeSQ9N9TEywVB8wPYV7Ye56+1mpfzNAAAM2ETxhFGLTuZTtyAuAHOqiEBTsP+9aX3D9Vva1PleDyFZHyG0DtofsLKbdQ8WX3z182/sLJxJ4bSi7qOBOZRT5aldxgLKmyJXggm87hU9gO31v0dZM3LdH95s/PrhpsfpbiJuVuW3zHLd2UBAJucdl8qnA81tcx50p4LMkFQOy0UP3Pn0XFM/fxVZrOdpwEAmBWbMI4watl+m7gBcQOcbQurOsACxhKaf7AtryOd5lp+SgAAAAAAAACsFQHOcelfWBoibb1DnMsCAAAAAAAAcHYM76IO21ozaSpuE8FNAAAAAAAAYGbQghMAAAAAAADA3LIBzltvu929BQAAW90tN9/kXolQRwAAAAnqCABmVRrgzP5QAQCAralYJ6COAAAAFHUEALOMMTgBAAAAAAAAzC0CnAAAAAAAAADmFgFOAAAAAAAAAHOLACcAAAAAAACAuUWAEwAAAAAAAMDcmokA5w03vMW9AgAAAAAAGI44AoCsDQ9w3nvvJ+Suuz6cS3v37u3L03JVhI0FWVjIpEbopgAAgFmXO4eb9K6D73JT8orlklQmatVL6wRad6i3IvduOmx9ZMD6bH69JcW1lZUHAAD9ph1HiEXSqg8+T6tifWE96g8bYVidSNk6SaF+dbaqKPG2NGQjVz/qc7XHr3B8FhbqsravQvzdoyo4XRse4HzmmWfkFXv2yKWXXmrTzp07bX4xT8sN574Q0pbV1dU0tb3uwB8nAAAwmz75xw/JZ778mHz9ye/IPXffI5fVX++m9Fx34Do7XZOW1Xk2VNgovQBSvu+bMmGhQh5Jt6tPoSznZozz7TyjjFgvAABbwfTiCBnRsjlve+L1nadnxAbWAbygk4+rVKiirNmA/fPbuv62bMTqx+Ln406rqx1pem4aZsaGBzhfOvOSbDvnHHmj91rZtWuXbN++3eYX87TcUPpjFHkSNPNffb/ZND9RAABgHmkg89FHH5VX/ODFufSlr31BXnPJua7UDKqZCyTpSjdbS3d1Fc+LJNJAZyLJr7n3AABgqKnFETLCViDiL0nTjyRo0ZQOmHeVA5ynT592r/LK8susnHnRPj/62En7nJXNS8qVMlcFNSlcMAzQ15w41wY4lEaxaXHUknraJDppNqzldP5eU+nicrOLzU9ba9NlAABm27TqCOp9H3ivff74r36mL32/9zppfuSn7PRpG1ZfsN2l9H0UmDpCflrKOyi+F0mYaQISLYcS+U1p1swyTF0i1TX1F8+Xg/oXWVvvyKw305Jh2HrL6xrldRcAADbazMURUqE5N3vim5Ox3wzE6+uFUc3weEOsNHYw9TpALO7m7ZJZ5oiQyRBV4yXxc9n2DNr/sv3T/GJ38eHHuMI2DDnOaxVvW7au5baj9PPKfP7WpNtdYb+N4nch1G3Jb0Bh+wrL0Fa2ZdNm0MgA56lTp+TGG2+Ua665xj5nnTx5Ms3XclWcWVmREydOyBNPPGGT/rA98sgjfXlabjhfmoE38B9AQj+oelCTdqYZcdA1H1DhAx2l2wrF6+j8cVPpvuV2zA9iXDSeFvrSSaa1axLUubgAAGw+064jqH2v/kfyth/7cXn31T/gcnp++fa75Xd+7ZPu3fSMqi/Y7lLaV8sL4vP7wH5bnhz0PYkyf3ntRpF4Xi3uit7tDaFjg521mq07RMuR+LaO4dZrHvUR661S1yjWXQAA2EizG0dwNKCZ/LHR/pFSA57xpKqqxBuGxg7WoQ6g8ZFG182jqRlJI1jfqFTYWBRZitfX1tawi71AXNn+V6tbVTvGaug2DDnOa+U1lyQw352Wi0lFrUW7/E728yr5/NVat3vY/FW+C0O/TxpgbXQlSLah5DOaJSMDnDt27JAjR47YAXz1B0R/jJQ+Hz582ObrdC03it7l7LHHH5cHH3xQ7r//fpvuvvtuO02fkzydruVG3RXNa3bsF8R8AjainA90mi+ZTupkK/aeNJcm+OuMtr5Iv4W6XPNFa2eW65np9o1b51Kmm7yZV7/w4/5YAgAw66ZZR0gcf+xP5L4/+sOBY2z+yk0H5NDPvtu9qyD3V+deytcNp1df8Gq2qaabR8/9ccsQ8X3x0/G94jpBMv6m12xn6hhmvVqhyARD+1Wsa+TqLgAAbKxZjiMo/WOj5x9059L4j5S53hYjVak/DIsdrEcdIK575Ke3K42nGbmYSpzGa6DlBUvpftjWsFHkWo0O3//RqhzjWPk26CrHPc4DFOuUaWvKeHskaOnRL3w+o/d/rds97NiP/i6M+j6pmo7CFJuDumWlLuq7d+9Of5z0x0h/oJJnzdfpVdx552flwgsvkv1XXSVXX321TQcOHLDT3nP99WnelVdeactp+ZHMFySJ+Nt/lMlVi/3CZz6MhO3aXhgja4RadiF2ueZCJffFcOy0SIK0ibCmuhSC5AAAbBrTqiMkfv2DvyUvPPuibcFZTH8efU1a77/Dlaygb0D4OOUqd1OsL9hAplmarRTqcpOWIWZJ6Tic5n/dQj1C/3qe1htGtSioWNfI1V0AADgLZjaOELWklfwR0vEO+uKFJr/qeb9K/cGWKYkdOFOtA9g6Rv821bzRdYL8TYayAcXR+usc1fd/qCrH2CndBmes4zxIsU7ZyQQFbdBSu/M3JMwGASvs/1q3u3T+Kt+FUd8n17JZhzya5JCdDZXH4Ex+nPTH6NChQ/ZZf6jGvXBZWVnpGwhYl1PM03Jj0S+cNvcd50dpXfiZ5tO9NAeteQEAmMi06ghK76KuY20Wz6NBENg7qM+2uBLbNTXLqNvVWqer/PZahthxOU3lMr6/UFxpzHcNqlJhoK4BAJgPsxhHsOfiYmCnHti87Fja62sd6gBa/4gLITXpcR5PEjjUoYmmY43bXfm7MKxO6UlTu6d3AunasTzHa9l7NlQOcCr9ETp27Jjs37/fPh89etRNqe7FF+MfnFGDAyflxmIj+XpRYV7XBtzNVJVEslOjvghly1XDpgEAsImtpY6grTPf+oZX27uk613Uv9r5CzelRwOcOl2TltV5du3Z6aauwaT1hRJawY30j61hJEk3dJV0X2/puJxJlzi7DlOxzLQCsIHRYahrAADmzGzFESJZNufofIvFOHUCPYcvVwsMVak/DDtnr0cdoGS6jgk+NWbhlZc2antHKZt/nDraJMd5XFFLFnWcTTt84mKvwd1a9n+t213lu1B1+2yv6U5urNFZNVaAU+mPU7PZHPsvLokzZ870DQSs+gYHNuWGsgOe5uPHUUvHPXBNgG0zYf2rTDbKHElrUb90TVNKxV3GglZSIpTGqLa3g5Zrm7ib57J1NnoDvQIAsFlNUkcoXlwcWz7mpuQVy2k6+cS33dQ1qFRfcDLjIpWxXdyiUMLIVBqzf8Q3lZO4+3q+S5ypavYqlraCPKDGkF0vdQ0AwByanTjCsj1H58/FsfgcHsTX9qNUqT8Mix1YU64DJNMzN5rRsSMn7148Qbwka+T+G8PqVlWOcSUVjvPEMttjttcOx5kc/yr7P9Qattt2Lx/xXSg7vsn3acB3Z9aHQBo7wLlW2oz8oYcekgceeMAmfa2KeVpuKG2tWRjoNb47VW+8CL0zVyfo2qa9cZm6hH5HOumgCNrk1pRPlxOKX7ir1SC63LYdY8Ett24+dXcR0zdN12m+XLP9NQAAYOsaXV8w3KDrtsywyr2tUOpzMv5mIhmDKdPiIKkIJ13k9EaYxe5HA9ZLXQMAsNVMK44QtgKJ+s7RjjuHV73ZUJX6Q2nsYJ3qAH7b3W07ma5dnINJawiTxUuySvffThxdt6pyjIeqcpyrKMSeNOkmh426Pd5Lbnu8ZlP8KJBF19Jx6P4Ps+bt1s9u9Hdh6PfJVFjjruku3xz3SQ7dRlpYNW697Xa55eabXNbG07ucVbqhEAAAWFfFOsHZriMAAIDZMGt1BOIIwHjCxoK0vDECxHNmw1twDsKPEgAAAAAAqIo4AjAG2+Xcl+YmDW6qmQhwAgAAAAAAAFg7ba0Zdy93qSG5IR03IwKcAAAAAAAAwCah42tmb865usmDm4oAJwAAAAAAAIC5RYATAAAAAAAAwNwiwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAAAAAAOYWAU4AALAl3HDDW9wrAAAAAJvJ3AU4FxYWKiUAALB13XvvJ+Suuz6cS3v37u3L03JVhY1CfaPekshNAwAAsyt3/jbpXQff5abkFcslqUzUqstCI3Tv8rTeUG9Nt6Zg6yID1mfzB9RLysoDm9FctuBcXV0dmtTxhx+2zxsqbHCxAwDADHjmmWfkFXv2yKWXXmrTzp07bX4xT8uNFkrDXNw0uoF0MvWNdi2Q+kLDTAUAALOuef+/kn/fuV3u+Yu75J6775HL6q93U3quO3CdHH/6y/LHj95ry33izz7kpmyQETEF3/dNmbBQ94ik29WnUJZzM8b5dp5RiGVgE9i0XdT3XXGF3PqBDwz9awsAANicXjrzkmw75xx5o/da2bVrl2zfvt3mF/O03ChhoyGhF0in0xTP5Sm/vSptP5QGLSMAAJgbF2zbaQOZjz76qLziBy/OpS997Quy76I3yOq3XuZKz5iaZ+oiXelmI5HRsoSRyfciiTTQmUjya+49sMmdlQDn6dOn3au8svxJ3fLBD8qv/NIv2SBnlRadtnm5a4JuU+6CRVtv1CXXwjxqpS030qbfkbbmoBk4AACTmFYdYeXMi/b50cdO2uesbF5SrlyoDSXEb+aDmwm/GYgXtmz9oL8bmGv5mcnqdWWLpFXXafFzXPco1DOMfN0kOz2ZP17HAi1JAQCo7H0feK99vvYT/6Avfb/3OvlPn/xPdvq0DYs5VIopeAfF9yIJM001o+VQIr8pzZpZhlZaEt1IIs+Xg1qBsbGLzHozrTWHrZd6CObJhgY4T506JTfeeKNcc8019jnr5MmTab6Wm5YkyHlFrTY0yKn/cOtBTdpp17OOBN3G4B+VAbQVx2rbNz84rvuavgYAAJVMu45wZmVFTpw4IU888YRNGiB95JFH+vK03FC2G5gvpb27vJrUTCVfW0zYLmDdbnrBkHQhy15sdKMo11UsbCyKLLku734kwWLvgsPWTUK/1y2+XZOgnr+A6LZC8To6vW22EgAAVLFw4Rl524/9uBx98x+6nJ43/cYV8ju/9kn3bnpGxRyqxRQ8Oeh7EmWaamrdwjP1kWI9xNY/ajX7B9po2dQ/bH3Brdc86iPWSz0E82ZDA5w7duyQI0eO2EH+9SJDL1iUPh8+fNjm63QtN47eXxTiVMz75Q/F42ZokHOwUFqBSNDJ/qP0pLmkrTKK41sAAIBpm2YdQe+W/tjjj8uDDz4o999/v0133323nabPSZ5O13JTu7u6dhvLjH+lFxZ+YOoS6cWGtgbNdxXzgiVpuqahtjWouUiJL1lc3WQp03LUb0rgxS1KU9piY1DTUgAAUEq7oN/3R38oN37hx11Ozxd/5mE59LPvdu8q0PErM/GHJOXbSk0v5uBpXCOdJ65b+NpM0/fFT+shcX0h+aOq12xn6gtmvU2Tn/2jbB/qIZg/G95Ffffu3ekFjF6w6EVM8qz5On1c8V8heqmYpy041cM6wu4g9sehptclebZVRmF8CwAAsC6mVUe4887PyoUXXiT7r7pKrr76apsOHDhgp73n+uvTvCuvvNKW0/JT4bqNxY0q9ALAXGg0TV0iudjQ+kbSVcyp9VU+XL3D1k0iCdLu65rqEhTqJP3zAwCAUX79g78lLzz7om3BWUx/Hn1N/um7/6krWYHfzsUfkpRrgDnNmIMGMm09w7zO1S1qvXE4zf+6plSm00i+u/monqrUQzCHzsoYnMkFjF6wHDp0yD7rxcwkwc1R9EZD2oJTg5t64yEAADC7plVHWFlZ6buhkC6nmKflhjIV977B/LPsBUTSKjPuNma7hGm+55lLDb24iC82IlMX8fyDvZYQI/mZbmwlF0wAAGBsehd1HWuzeI4NgsDeRV27sM+uOHDZ1TE2tRGX64aerYfYcTltPUTF42Tmu5tXqUxQD8F8OSsBTqUXKseOHZP9+/fb56NHj7op05MEN/Uf4dDgZtnFi71oGfBXloT+oLiXAABgOqZRR3jxxThwOeomQ0m5Ul5Tmjo2ZmtwS4ewFcQD+7u6gnfQt13SQ3NhIS6Yqd3DwrAly2FUvaXDqMAqAAAYS+sf/i/yk/Wb5OrXvt3eRf2rnb9wU3o0wKl3UbdlXv/P5F/+4C/Jrj073dQ1mDTmUKLmeRLpTQ5N3SI7tnfSfb2l43Imf1S16/Cl3el1N7eB0WGoh2AOnbUAp9ILmGazOXarjCr0hkJ6gyENbo6UXLzkBsyNpLWog040zU+Bipt79y5wQmkMatadjp0FAAAmtdY6wpkzZ/puKKT6bjJkyo3it9vi6/hahfO+3nW0EZoLhmxTBu1qFgXSMFUIOx6W0ouEbihhlO8qNlRZ3aTRuwkRAACoJtsCUdOx5WNuSl6xnKaTT3zbTV2DSjEHp0JMwf5BNdK6haljZMb21opG3H3djcuZygQro5YsFvuaq+x6qYdgDp3VAOekemNADE5q3O7oeuewTtC1Tbfj5dQl9DvSSUfM9aSpAwKnAwiH4neC9C8glht01y5j1JgWAABg3Wh39IceekgeeOABm/S1KuZpudG0i5a702laT1iQhuiYW8W7hrogZnasTR2b01wORPaiozqtm7R9V6+wydRNzLJydQ8AADAXRsccjKoxBTvutz7nx/ZO6yHZVqFeU5Y0jpqMp7koslTsZz5gvdRDMG8WVo1bb7tdbrn5JpcFAAC2qmKdYDPVEfRu6VO7oRAAAFvMZq4jAJh/c9mCEwAAYFwENwEAAIDNiQAnAAAAAAAAgLlFgBMAAAAAAADA3CLACQAAAAAAAGBuEeAEAAAAAAAAMLcIcAIAAAAAAACYWwQ4AQAAAAAAAMwtApwAAAAAAAAA5hYBTgAAgBILCws2AQAAAJhdBDiNt73tbekFTNWk8wAAgM1Lz/dff/I7NulrAAAAALOJAKfx6U9/2l68fObLj1VKWlbnAQAAAAAAG++GG97iXgEAAc6cy/ZcLK/a9uzQpGW++o2n3ByDhY3+Fp+N0E1cB1GrLgvruQIAALag1dVVec0l59qkr6ehv45Ql1bkJkokrfr06wzxOhsyjcXqsuq9DS5l6ya5/ZzO+gEAW9O9935C7rrrw7m0d+/evjwtVxXnquqxBI4V5sGWDnAmXdPVe69/lzz39CP29eMrF8i+ffv6kuYnZUbxgo69GEpS23cTAADAzPvC5z+f1hFUUqFPJO+zqapsHaETiAT1bJBz+vy2rqstG1MViYO09aAm7Uw9yKxewmleCYUNWai3zNqmZNrLAwBM1TPPPCOv2LNHLr30Upt27txp84t5Wm60DTpXracNO29tgmO13qhDzIwtHeDUbubJP1B9ff5Fe22+ttJUybhbmlSSDwAANrcd37NbPv+5z0n7U/+Hfa+vNWUV6wmT8JpLEniRhMubo1octRYlMI9OMaDqt/ljLwBgYi+deUm2nXOOvNF7rezatUu2b99u84t5Wm4UzlXVcawwT7Z0gPPaa69NW13o66Lztr2YpmnKN+/ub7Uxanque1u9JV2XDwAApuOHfuCN8uarrpK/83dfbd/ra01ZOmRNkqYrbi1RrAfY83+hG5mtMyStBrQFwYD6w6Bu5cWuZulio5bUM/njtUgIpRVE4jeb4rmcMn1d3XL7lXTVH3EcoiDe1sy8ZXWoOD/bnc4t28w7bHkAgLU5ffq0e5VXll9m5Ux8Tf7oYyftc1Y2LylXbmPOVaOnx8rOW4niNugmTHIeTNh5k+kjYwnTOlbxeusts7z0WLi6R67eke/2Hs8T5Zc9oF4yfN1r/RyGz1/6WZTUybC+tnSA87777pPjx4/b10eOHLHPWRftviBN06L/cOqhL520aXdNgnrvH/Ko6foPqNHVv6C46c1IGuZHBwAATNd//X//m/y9H/jv5KlvnbAV1KK3vuHVaVqrWq136RA2FkWW4vN8248kWIwr877vi3S7mYp9JMumwm0vPPQCodGVoJPUH8qbVdi6RrarWSdIL1yiZbO8ZBmrHdtqo164SCkVhqa+4pvtdO9L9K1f19M1FwKF9ZQeB+1yr/vnufqQ29dhdai4pay5sHJXGGmLFDNv2fIAAJM7deqU3HjjjXLNNdfY56yTJ0+m+VquijMrK3LixAl54oknbNIA6SOPPNKXp+WG2qBzVWLY9FHX/mXn60nOg2rsWMKUj1UUtNJj0Qk8uz0L9vC4ecx5utE3T10WZam33EK9ZBqf06jjpsaqk4xRJ8N0bfkxOHVsTXX48GH7nPX0yWfTNG73M/2H2IvYJ/849C8gIsFS5i8gftP+Q47Hrxg9PQy9wnSahgMAMG06BqcGN7VietHLd9vnbJDTVlhN0h4gyetJhI26BFH+4sELlqTpTvR+01zMRFHcwsIU8qNQ0t7s0bKEuXlrksZJTf0hWUaea43RznQ180xZ98ZrtjPzedLUCbmg6lq5uk4n29XNrGfJ7Ke9kOopPQ4DjapDxesQc3Gla+krCwCYqh07dthGRHojIA1EalBT6bNee2u+Ttdyo+jd0h97/HF58MEH5f7777fp7rvvttP0OcnT6Vpu7XdXn965qnz6qPOWTi8/X/cbvbz1iSVUP1a6Pcmx8JpNW77XOrSkzmG2sZNWTJLltlyLyGl8TqOOW2y8OomqUifDtDEGp7so0ddFz698d5rGlb/JkPsHZ/+RRRLUk8CnJr2wsbOMnh51zT+izD8Up+bxrwUAgGnS7ujFoGXyXv9AmqRB70fJ/hE0bkmRrZjnW3PGzPnf1gU0mNkbrzNaNrUGDXrqG++g+KYy3tBl5q4mCmxdIx9QLdKWDGk9ZOjCJmDX31+XEc/kpfsZKz8OA4yqQyl7YajHqCEhFxsAsO52796dBjk1qKmBzuRZ83V6FXfe+Vm58MKLZL85N1999dU2HThwwE57z/XXp3lXXnmlLafl12SK56rS6aPOWxXO1zmjlrdesYQxjpVn8vI8LTZU3zx2uc40PqdRx80Zq05StU6GqWMMTvcl1tfJHdKTsbSyY2slae38TPPpXur95WTIdPMvqOzfEAAA2Dg6zE0xVZX7I2gn02KgAu2mHoXLpj7guqenVz6eNLUrVCeQrnb5KoxjVU1cGc9306p6ZWWYyr83rMK/7kbVsXoXcv0XWQCA9ZAEOTWoeejQIfusAc+qwc3EyspK3w2FdDnFPC031Fk/V2WNPm+NZ8qxhJk6Vutp2p/DNOpkmMSWH4NTv7jq5z52R3oX9Vdte9aOzanPxZSUmcioH4gJp3ejTf+LAwDAWZf8UVR7fSSvh+WvC22xqd3Uw2L3dMdrSseNY5WMN5kzrK5hW3eYSn4m6Bp1h3fAyrEtFiIJWkOq8WXrL2lZUtmoOpSKWrKo43SZCw4JFhnwHwA2iAYzjx07Jvv377fPR48edVOqe/HFOHA56iZDSblSZ/NclTXqvFXlvJY14fKGxhJm4FhFZjk52Vab01h32TKmYVSdDFO3pQOcWZftudi20Hx85YKhScto2YnYrlHa/DkbwY+k1XAD3Fadnh24OGzQ7BkAgA2iY3InKassf/o0qBlJaC420u7pakB9oL87lTGorhG1pHftkqnk24DgOBVybbHQFl/vHFq8y2myfWV1nUUNOsbjcVWWHf9qVB0quw5T1g7HWbgRRG55AICp0iBns9kcu+Vm4syZM303FFJ9Nxky5Ybb4HNVmVHnrUHTc+drY5zzYDJ9rFjCDByr3DbGNyHykuVOY92jjltV2c9iwHEdWCfD1BHgNLR7+msuOTd3N9RhScvqPJPQu2y17fhPcQsPHd8h9A6an46q092dw5Lp2o0s4B8LAAAboWzYmrL89aCD22utO8jeacBUnONuUK7u4HdKu1b11TXqphauPbZNJd8G/pJxqPSGoWP3z9JuXoW6iqaWuUhyi9L1d4Juvq5jtrd3E4EK3A0A7DLcVcSwOpS9mZN5LLl12JsbRIEsJi0qBiwPADA7tDv6Qw89JA888IBN+loV87TcaBt0rhph9LV/yfnaThzvPBhPnySWcHaPlRe0xWsly22Y5WZvOjSddY86biMVP4sx6mSYroVV49bbbpdbbr7JZQEAgK2qWCegjtCjFdUiHeqmLH/daEsKc2HRGXP8TgAA1mLW6gh6t/Q131AIMytsLEjLm25QGZsbLTgBAAAq0KBlMQ3LXx+RtFqheP4YLQsAANiECG4CyCLACQAAMAe0JYN2dQpq+e5ZAAAAwFZHgBMAAGAO6BhRtoUoAzkBAIBNzo6vyR90MQYCnAAAAAAAAADmFgFOAAAAAAAAAHOLACcAAAAAAACAuUWAEwAAAAAAAMDcIsAJAAAAAAAAYG4R4AQAAAAAAAAwtwhwAgAAAACATe9tb3ubLCwsjJV0HgCzjwAnAADYEm644S3uFQAA2Io+/elPy9ef/I585suPVUpaVucBMPsIcAIAgE3n3ns/IXfd9eFc2rt3b1+elhslbAxo0dEI3dRqdBn1VuTebZyoVR+6rXZ6cd9MOhvbCgDARrlsz8Xyqm3P2jTs9Ve/8ZSbY7DB59G6cBoFNh4BTgAAsOk888wz8oo9e+TSSy+1aefOnTa/mKflKvHbsrq66lJb/LCxvkFAs/yFeks25Poot2/x/tUCvWBryFhh3I3cZgAAxpB0TVfvvf5d8tzTj8i+fftses0l59rnx1cuSF8n+ZX0nUc70vTctHnFOR1ziAAnAADYdF4685JsO+cceaP3Wtm1a5ds377d5hfztNz4fGkGnkTh8iat+PvSNhdngRdKY8yWqgAAzCLtZp4EIPX1+RfttfnaBV2T0hab6vjx42kegPlBgBMAAMyM06dPu1d5ZfllVs68aJ8ffeykfc7K5iXlJlKrSbaBRr6b2ojuaVFL6mlZkzKtJGyXeA0sRkFcJhNkHLWOXHd6s8yuyx+fJ82mbxYY9lpxTrLNQ+YBAGCjXHvttem5SF9vhPTcmGHP48m5cMQ5MhneJnfuH3Ae7esmn1tnJK36gjTM+bxhp7veGVOph+Snla4L2CAEOAEAwFl36tQpufHGG+Waa66xz1knT55M87VcFWdWVuTEiRPyxBNP2KQB0kceeaQvT8uNzVwULAYigQYAHa3w10NfOkn3tHZNgnp5xT5ajsTv9LqyBeZRdxcJflvnN8v2gnh5+toYtQ69IGl03TyampE0gjWEE2ueeNKVrlvERNs8ZB4AADbKfffdZ1tmqiNHjthnpd3Qi13Rx+qePoTvm3Nht5sJSEayHJrzYrNp/0Ba5RwZBXVZlKXSMrZuENSkbae7Mt1GX2C12wrFs+tqi56hJ66HTLAuYKMQ4AQAAGfdjh077AWH3ghIA5Ea1FT6fPjwYZuv07XcKHq39Mcef1wefPBBuf/++226++677TR9TvJ0upardHd1HYsqaa2wKLJkKvW98bVCaWnAcym+YLH8pu3iHebr/Cmv2c7M71pL5i6CikatQ5+9wvS2uGuSyXg1qbmXavxtnmweAACmTcfg1MCl0npFIumingQ/1dhd1LN1BE1Ja0jfFz8KZTk56UXLEkYmz52bK50jzbm8kxYyZZYC8cKW68Hh6gadbCAxKZPpgaFMnaG3rorrzpl8XcBGIcAJAABmwu7du9Mgp158aKAzedZ8nV7FnXd+Vi688CLZf9VVcvXVV9t04MABO+0911+f5l155ZW2nJYfKb2BgKnYR4G0sjV5W7GPJKhnLm4W6jKq8WSum1eh9UOfUeuIutKVmja6zKl5a7jCsMvMG2ubnUnmAQBgmopjcE5V8SZDneSPjRrMjCR0Ec5o2ZzJNehp38VGnSM9L/unRiP7x0dbN+g/98dlej0wVK2v0Jjn5zWuC9gIBDgBAMDMSIKcGtQ8dOiQfdaAZ9XgZmJlZaXvhkK6nGKelhuPL+22L2Gj2P1cb8yTubhxaXALynhsqnx384EFC4asw1xZjIinjk+X6fly0F6nTLLNk+4nAADTVRyDU++irr76jadyrxPZ12uh3dTjmxK67ulJ882zeo7k/IzNiQAnAACYKRrMPHbsmOzfv98+Hz161E2p7sUX48DlqJsMJeXG4rqGt5I7/NTyY1WOZFtG+tJOW3ho1ojbAY1aR8n0bjRp2NNc/DRCs6tuGyfZ5knmAQBgHegYnBrIUz/3sTvsXdS1K/qrtj2b3lFdXydd07Ov1yTpph7mu6dXPUdGplxOtiVlWd3ALntAa8vEJOfnSdcFbCACnAAAYOZokLPZbI7dcjNx5syZvhsKqb6bDJly44vHqoqCxXgMLK8pTV+7j2dbdUbSavTf6bQnc5Fgb1o0oGQUmVLOqHUk0xcz6wwbMlGPcHtnVbOevjE8x9xmq8I8AABsoMv2XGxbaD6+coFNw15r2bVx3dR1bJugad5lVThH5s7l8R8fvWQ5ZXWD+E6IhXUVTakeUmldwMYgwAkAADYd7Y7+0EMPyQMPPGCTvlbFPC03EduKsxdQ1DuOtv24y1fcBa4uoXcwbRmRYy4SlvR6IBlPU29aVOwa5lqJ2uW5K5tR6/Db7i6oyXTtehZUaFLRd3OESJrF7mqTbHOVeQAA2EDaPV3vkP7WN7y6UtKyOs9QxfOoSdk/MNpu6qay4MdjvsQqniO9oC1eK1lu/MfH3k2H4rpBJ+jm6wZ+J1emzxrqIWOvC9hAC6vGrbfdLrfcfJPLAgAAW1WxTrCZ6gh6t/RKNxQCAAB9NnMdYRaFjQVpeQQQgapowQkAALYEgpsAAADA5kSAEwAAAAAAAMDcIsAJAAAAAAAwQ+yYl3RPByojwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAAAAAAOYWAU4AAIABfmv/m+Qjr3tt5aTlAQAAAGw8ApwAAAADfP7z/5f889+9y6YbwrsHPmena3kAADC73va2t8nCwsJYSecBMPsIcAIAAJQ4/+KLbNp+3gX2eds523Pvk/Syl21zcwAAgFn16U9/Wr7+5HfkM19+rFLSsjoPgNlHgBMAAKDEwraX5dLLdpwrLzv3PJuy+dt3vdzNMVzUqg9sHVJvRa5ET9jQaQ0J3fv1YLenMXgNuv7cdoWN/HYPmS9Xrt6S/r0DAODsuWzPxfKqbc8OTVrmq994ys0xWN85z6SS0+NUDDtvA1sdAU4AAIAS2867QL7rZdvtc5K+62WmAmXSd5/Tyx+L35bV1dVMakst0MBnPpjpt+Npvns/kAYdNySAGEkr9KST2WbfrDsfmA2loRd23SBTblXatUDq6xyoBQBgmKRrunrv9e+S555+xL5+fOUC2bdvX1/S/KTMKF7QSc959rw39MQNYL0Q4AQAACix7YILZPv3XCDfvX17mradf0GakjwtMzlf2qsdCbxQGjPbKsOTZrtp/p/wpRl4EoXLaXA1bDQk9ALpdLLl4kBt25/lfQMAbHbazTwJQOrr8y/aa/O1labSruhJUkk+gPlBgBMAAGCIhW3b0vSyc3opl3/eua70pDxpNn2RMExbOua7iEfSqmu3t7iVpLb2bGi3OA0aRtpCMn5tu8oVAom2O9s6tPL0ajX3Spl1m9X6zXxwM+E3A/HClgzoiQ8AwLq79tpr0y7k+rrovG0vpmma8kPT1PvOg6Om57rAm3N51+UD6EeAEwAAoMS2c8/NpZdt76Vs/lTUPPHMpUt3SBCw2wrF62gLlLa0tQu79oPTVpPaKsW89n3zvtvNBDMjWQ6j0sDjWoQa0azV4uXawKyu307q59WkZrYl4soMAHAW3HfffXL8+HH7+siRI/Y566LdF6RpWjR4WQ/93rAt7ZoE9d6QLaOma3AzN+xLM5JGwF8KgTIEOAEAAAb4/u+7WK475xz56L7Xy62veeXQ9OG9r5UTbr6J2SDgCH5TmsMilb4vfhTKcnL9Ey1LGA0JPKrizYNcGtajXC/KGuairM1AYwCAOaBjcOrYmurw4cP2Oevpk8+mKemmXlVkx9FOzp9JgDKUViASLGX+wGjO4Tocjf59sMr0MPQK09uM7wkMQYATAABggD//m6ck/Pa35V9+8Uvyr//svw1Nv9j9ilS7j/oQUXdk17NabVh0U2kwM5LQRTij5VAiDXradyX6bnoUp7KLKNt1PqhJe9QNkAAAmBHFMTiLnl/57jSNK3+TIXdutD0bIgnq2T8e1iVtgDlquq0T1LRzR07NG1UPALYuApwAAAADnDLpO0+fkDOnV+z7Yc8vnj5tX69JN5LI8+XgGq9dtJt6fPMf1z19aPPNcbhxQEUDooXg5qju9fZCzZQZ2UQVAIDpK47Bmdwh/avfeCp9Lqa105sI9v5wmKTeHxCHTNc6QVwIQEUEOAEAAAb4ob97qfy7t75Z/u1/f6X8mx98Y+mzlvlnr3yl7dI+ufgu41MZKzPpph5W6J4+hrBRl6DWjsf9LPKa0vQjCVqD+7WHrUCiUd3rAQBYJzoGpwYP1c997I70Luqv2vasHZtTn4spKTORUX/4m3B6NyLsCZQhwAkAADBA9P/9VaXu6VpGu7Jrl/aJRC2p65hdk46tZS528l3bXTf1VoXu6VWZbWzpWGB6p/cSfrstvo7nWRi8094kgfE6AQAz4rI9F9sWmo+vXDA0aRktO5HkD3+ZmwaZk6m0Gq24ZWbV6YvuvTLn2GHjYwNbHQFOAACAEZLu6EVJvnZl/7Z9VUHxpj71SJraLW2SAKC7IUFDl5O56vGbgV4nDQ1Ijq84VliceqvVrnYdCbr5/RvYpR0AgLNAu6e/5pJz5a1veHWlpGV1nkn4be1u7s7RNtUl9A6mPTVGTzfnVPOoJ9P1jusBXSGAMgurxq233S633HyTywIAAFtVsU6wlesId177o/Kp//x/ypWZruenv3Natp+7PX1O8nZe9HJ5xWWXyw2f/i8276zTIGrLk05nCl3eAQAwqCMAmGW04AQAABhAg5V/sLoqzW88maYPn/x27jl5/f6vPTo7wU3t4tYKxfN7rUAAAACAzYwAJwAAwCah411qFze9GVCHO/oAAABgiyDACQAAsEnoeF56l9iJxvMEAAAA5hQBTgAAAAAAAABziwAnAAAAAAAAgLlFgBMAAAAAAADA3CLACQAAAAAAAGBuEeAEAAAAAAAAMLcIcAIAAAAAAACYWwQ4AQAAAAAAAMwtApwAAGBLuOGGt7hXAABg3nFeB5BFgBMAAGw69977Cbnrrg/n0t69e/vytFx1kbTqC7JQb5lX/cLGgtRbvSnF90U6fWGhkBqhm1rNqHWsl6hVH7qtdnpx30watK3xcWjIeHsOANhKpnleH3yOqsvaTqdxHWHM0/hZZ8/B87bRQAkCnAAAYNN55pln5BV79sill15q086dO21+MU/LVRYtSyieeFEoy9OKKfptWV1ddaktfthY34ClWX5ZgHbqcvsW718t0IvKfDDTb7t9d+8BACia+nm97xzVkabnpm1lG1lPAKaMACcAANh0Xjrzkmw75xx5o/da2bVrl2zfvt3mF/O0XFVhKzAXREvS9CMJWuvR2sGXZuBJFC5v0gsLX9rmAjLwQmnQWgQAMIb1OK8D2FwIcAIAgJlx+vRp9yqvLL/MypkX7fOjj520z1nZvKTcaKGEoSf+QZOagXihee+mTF2tJtlGJPmudCO60EUtqWe73GVaYaTd0KIgLpMJMo5aR647vVlm1+WPz5Nm0zcL7B2/vm72Q/YhUdyeMNdlPukmGErDlnEtRkcsN96OMB6GwJWxi8zNV+hKry1d0mlr7d4IAJvP7J7XB4vPh9nfejc8Tek5s9gt3ZUfdF4Yeh5Kzl1D5jeGn/9iY9UbMuyydVlj1hM4f2JWEOAEAABn3alTp+TGG2+Ua665xj5nnTx5Ms3XclWcWVmREydOyBNPPGGTXkg98sgjfXlarhINyHm+HNTIo3dQfE8DnvGkqTEXAouBSKABQEcvKOqhL52kC127JkG9cJGQES1H4nd63e0C86i7CxTbFbxtlu0F8fL0tTFqHXrh0ui6eTQ1I2kEa7gSqXniSVe6JYsYtg+q6vZ0zcWWZ5cTd38ftVwVBS2RpbhMJ/Dii71FzXLzZFuf6oVboytBskx3PAEAc3BeL+E1l+xvfctF3KLWoj1fdLLnzKAmbXteMKkT5P4oGTbsScNOa2uPj8VeELPKeWjY/FXOf+PWG7ImrScozp+YBQQ4AQDAWbdjxw45cuSIvWGAXrDoxY/S58OHD9t8na7lRtG7qj72+OPy4IMPyv3332/T3Xffbafpc5Kn07VclbuwhmEonn/QXcR4ctA3lfdpRDizLRjshUB2DDBzgaUBz6Vm7+LJb9qLhLJVe812Zn7XWrLbzbQQKRq1Dn32CtPb5qLLvZ6EV5OaeznI8H0YY3vMfmTHU6t0bDLzeM2mDYz65jnOGjSP2ZdkmYX1AcBWNuvn9dz5V1PamtL81i/pibGlZ5zCOVLfR+a0kxk32jO//ZlzkBcspecC2+MjitJeD1XOQ+XzVzn/jV9vGK3iMjl/YgYQ4AQAADNh9+7d6cWQXvzoBVHyrPk6vYo77/ysXHjhRbL/qqvk6quvtunAgQN22nuuvz7Nu/LKK205LT9U1JKW656e8A764oUmPxcdm0B6kwNzsRQFZj0uX5krh9BcCgSZLl/ajWtU40ltaZGWL7QM6TNqHVHXXFhlLkKcmreGKxG7zOFK92GM7akVCxmjjo3nFUOvnsZjB3MtebUb/KjDDABb0cye11XxJkOdTADPBi31970hYTb4Zs+Zvvi5oGJe/7kn32Nh1HmodP4q578J6w1DVVwm50/MAgKcAABgZiQXQ3rxc+jQIfusF0ZVL4ISKysrfTce0OUU87TcKNGyVu0Llft6YPPC6d1OXdptX8JGsRuZ3pgncwHm0uAWlPHFQr4b2ZCrsNSQdZirqmntYUqXmXT37zNiHybenkmPzTCeNLV7XSeQrnbFK44vBgCYyfN6FUngsD9wN6k1nocqn//GqTdUNe1lcv7E+iDACQAAZope9Bw7dkz2799vn48ePeqmVPfii/EFzqibESTlykWyHEbiBZ2+ir2OMTXVO567Ll/JuF/aTGPYWJV9bOsOcxGSaYUSdUe0lRy1jpLp3WjSvTYXeI0w022tYNQ+TLo9kxybqrymuViNxxdLPzsAQGq2zusV2DGxa+acoX2zF3u9NcY9L2et9TxU5fy3lu0rsx7LTHD+xJQR4AQAADNHL4aazebYLTwSZ86c6bvxgOq7GYEpN1S0LGGU756esN3Ui93K1yQeoypKLqZsFzltOZpt2RBJq5G/+3de5iLEXqANKJkZD2zkOpLpmZsc6LhlE3Up05sK2O5+o8bwHLIPtlvbpNtT4diMY8B6B3WLBwDM0Hl9JHMOjO/4Z843TbHDcSbnnEHnTHM+qV4PWMN5qMr5b6J6wwDj1BMmwfkT64QAJwAA2HS029pDDz0kDzzwgE36WhXztNwwYSso705tLzZMmbDylc1othVn7wJG72jatuOAJd3j6xKa9Q68DEguxJKu9HrTomIk0bUStctzVxej1uG33Z1ek+navS6ocCFiLmDi5blUj6SprV+HRTdH7oN2a5tge6ocm3GZi7G4a50mc8z8zhq7AAIAykzrvJ4qnqNM0tNi2Kjbc8ySG3jT3jAnCmTRtTDsO2fWzUxVerGv+TxU7fw3Vr1hkAnqCWPj/Il1srBq3Hrb7XLLzTe5LAAAsFUV6wSbqY6gd1WtdOMBzJ3QXCi1vI50uA0rAKybWasjcF7n/Adk0YITAABsCQQ3Nynb1c2XJhd3ALClbPnzOuc/IIcAJwAAAOaGtlaJu7W51BBpr7aF3m0AgM2M8x8wHAFOAAAAzA0dCyx7N/tVLu4AAFsA5z9gOAKcAAAAAAAAAOYWAU4AAAAAAAAAc4sAJwAAAAAAAIC5RYATAAAAAAAAwNwiwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAFf3J7x2U3/uFi9Ok78cSNmRhYcGmRphkxe97qS6tKJ7WE0mrbqbVW+ZVv6hVLyxjQerZhQxY7yCDlqMptywn3u6GDFlcqeK8+j67juL7aRh+nOPjO+zYTGItx6ioyjHp28dp7xAAzKkf+ZEfWVMqs1HnzSrs8gf87tv8AfWHsvLAvCLACQAAUNFjnc/Kuz/wn9Ok78fmt2V1dVXavntveEHH5mnqBCJBvRDkjJbNBZEnXhTKclmMyy3XpnghvYDdgHWWyi7HprbUzLKKF2V+O542cpEaXC1cWFWed8pGHucp27j9dAFayX92ba87MCBe2YDPDgDm0StPPS//4rLXZ9LrCinOf595naQkX+cdaprnzTX87vq+WXIYFgKokXS7+lSsP8T5dp5ROBdgThDgBAAAqOhbT74oK1/7X2XlzzX9un0/bV5zSQIvkjBzJRK2AnMVsiRNP5KgVaG1hdc0ZfU6p0LZkXxpr3bMNoXS2EQtPQYd57mlAfDIk0A/9Ay/2RTPvQYAlDsS3i3Hn37avVurs3TerHnmN78r3expzZ0fPHO+izTQmUjya+49sAkQ4AQAAKjojT9ytfzaR4/Jr31c06dkzw/9fTdlPYUShp74B01qBuL1tc4o503tysWTZhwxTdetXdtyXfAy3eCT7t9p97cokLrmuwu9vnkryHcDHNS93FxI2mlr6f7nhgIorGNQNz67PUmLlgH7Hmf372exO2O62KgVH6MkjdNaxnzONVM6d/GaMcn2l312qvyzSPY5zBxHt4+5/Vu/LpoANq/Tp0+7V3ll+UXbdu7MpO+J0wXmtUnq03/yWfm34afkK09/S85x+Vp2MqPOm/3nrsaA392Rv99Z3kHxC3+4i5ZDifymNE11IPdHz645Z3i+mKpF4ffZpMyyJzsXTPO8DFRHgBMAAKCif3T9stz8v/+t/OmeO+zzP3nfH7kp01erubZ3enGUXITYixfzftSVQmgulELfXFxNsf3eoJYhCb04anQl6Ljuea4vvO2Op6+9QDqZ/HHpRVTd7I9dhl1OTYJ6/oKp2wrFs+sfr0t4epyNsLEoshSvo62tZRfjizzbha+b7e4dyXIYxS0kS/Z9ELsfQU3ayX50grSFZWQuSP1kGdryxzzqhYvacuazDrzCxXPPJNtf9tlV+SyioJUex47brgV7aDVv87UGBrC+Tp06JTfeeKNcc8019jnr5MmTab6WK7Owc6ecu3t3f3r5y23K0kDnx47+bjzNlNF5JzLsvOlkz13tAb+7Q3+/XU6PJwd9T6LMX7u6UWT/2Flcjg121mp2GcPOP2s5F0x6XgYmRYATAACggh/96TvlR3/qTvkxk75z6nn5sZ/+PZt+1KRpCht1CSK9qHHvzUWI5x90FzLxxcvArufZVnjmwsRvT/mCwrYSHMZMT662tLVI/5XXhELRHvrBUuZizixfg2S5wzDmOovHWXnBUroM21rWXBjay0RTyM+OX2a79mXnrbLvuh/mIjL7ubihBOKX7cx8ruVP7qJ2OK/ZScde1e9ALtA5le1X438WnrkI19X0LsbH3zcAW9uOHTvkyJEjsnfvXnnkkUdsUFPp8+HDh22+Ttdyw2y/8MLSNMiwaZWMPG8ao85dI3+/87yabarpAo362xz3AMkvJ/7NTsbfHP/8sz7nZWCtCHACAABU8Pyzz8t/ueMG+SNNv6npepue//azrsTkIheU0tToaisJFwSLWtJKLk4c76AvXmjyi1ceuZscdMRrxYHOqYm6cbBvENeyVLuiTb1hnr1QiySou+CtTRqcdNOdbEvMMqXH2elfRtLyRi8me93+4i5/Jk/fVN13ux/lF6Uq191vkgPpNdMWNnZf02VMYftVxc+if2gExnkDsDa7d+9Og5wa1NRAZ/Ks+Tp9mPMvvFDO2fk9hbQzTVn/8CfeJR+//Yib9j123okMO286o89dQ36/B7HTXKBRf7OTHiBS643DabdLl6v5sbHOP1M8LwPTRIATAABgiE8e+5y8839qy0WXXGyf9b365fv+rbz9N94jL9//gH3W95PK3t17tdNrEWEvZIoXEfXA5g2/OY4nzSUdr3NAIHRS2fG6+pj1aTe0TiBd7Y489fG29IYN7vhkkuspV1nZca5CW7pE4bI99rZ7YHplOI19jwOM+e5+Y+5clga7tft75vOf3vZP57MAgHElQU4Nah46dMg+a8BzVHAzse288wrp/DQp7x9fbQObjWuvzUw7z06byNDzZnXlv9+DxIHLrq6729UoozvX9XqA2LqF57nWpZOefzgXYPYQ4AQAABhi+XN/Ix/9uavTpO/Vn/3Vn8nHf+xladL30xVfyOSCci7puIbxxc4oma7Ha2IugBphpptxCduCMB5jsTWtyKrZgVFjmG0Ic8Vou/eZ4z6we+CofR+2H641TTsb3NYL07WwXSP1Ate9X+v2q1n5LABsWRrMPHbsmOzfv98+Hz161E0ZbfuOHaXpf/sPn5R/8Z73yAUXXdw3bTIVz5tVjPr9Lqh5WkfQHiD5YGjSfb2l43ImQ99Mcv7hXIAZRYATAABgiJNPPy1/8vCfy598xSTzfPLpEzb/Dz/3JbnnoW+nSd9PlR1nK989PWG7qUeBuXhxGX0iaS0Gw7uxVWXvrtqQ0G+Xt8ywNzVyr51c17RkLMtJ2HEqtRVrtmWh2b/GGHcZnwq9qIwkNAc9d1xH7Xti0H7YIQjc6+zFoslfLPb1G8beKCi/EVGrZdaTvRCecPuzn93MfBYAtjINcjabzcotN9WunTtlx/nnV0rnZpK+13nHUuW8OUzfObPk97tEXEcIbR0iNzyInVe7rxfrFhXOP5wLMAcIcAIAAAxx8Md+UD75W1+ST/6GSeb5itddYvP/1T/+J/L+9pfT9D9c+6M2f1rCVlDetc2Om6gNMTKRqexNhnQsrFp7sm7OueWYVI+kqS1Hhy2r5rnuzfG6Q7/Tu6hzNx7QLnCTjgmqd3Ft+24ZyTrMMRh0aNaT3nhIr96C5M5Aati+F/TtR90cD734NBeLS/b+QC5f7zg+zmenrTULn1t8t/b8GKNjb/+Az25WPgsAGMfvhcvy7p/92Urp+kzS93/0hS+6pZSY5LxZpuScOfD3u4yrI0hfHUIDpfqc6d1R5fzDuQBzYmHVuPW22+WWm29yWQAAYKsq1gmoI0yZXgSF/trGV1yDsLEgoc8YWRPTz6/lSWfM8TtnxrxvP4CzijrCWcTvNzASLTgBAAA2kmvpMWFjxsmcjXVuOpG0WmFv3LK5M+/bDwBbFb/fQBUEOAEAADaK3t3a3ShoQ1tRnq31bhLa8lW732m3/05z/i4v5337AWCr4vcbqI4AJwAAADCEjjVmA8RzGh2e9+0HgK2K32+gOgKcAAAAAAAAAOYWAU4AAAAAAAAAc4sAJwAAAAAAAIC5RYATAAAAAAAAwNwiwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAAAAAFf3W/jfJR1732rGSzjOuqFWXhUbo3omEjQVZWGhILwf2GC3occmneityJXo24vgVP7MsXX9uu8JGfruHzJcrV29J/96BACcAAAAAAEBF137oo/LPf/eusZLOs1Z+e1VWV9viu/cDadBsVgJgG7UtftscFz02SWpLLdDAZz6YOVvHL5JW6Ekns82+WXc+MBtKY2FBGt0gU25V2rVA6gS6+xDgBAAAAAAAqOj8iy+aKGGj+NJe7UjghdIoaRV59nnSbDfN/xO+NANPonA5Da6GjYaEXiCdTrZcHKht+7O8b2cHAU4AAAAAAICKFra9bKI0Sq4rcr0lXZefyHdxjqRVX5BGGLfy09aKDZ1fg16RtvCLX9tlFgJhthv1gFaK/WVdC8JMVq4LdtSK15OkzDLTZWW2JZHvVl6XXqPF/n0K7TqyZarypNn0zYaYY+By1vv4rZVXq7lXyqzbrNZv5oObCb8ZiBe2JjgumxcBTgAAAAAAgIq2nXeBfNfLttukr4vvy6YNo4G0XFfkZiSNYHT0qtsKxevEXZzb2gW77Ytoqz9dhnnt++Z9t5sJxkWyHEYDA2d9ZV1wMNRIm9ONzLxazoiWzWu7bk0dCcyj7oKBtjt4YVuUBgfrod/bz3ZNgnq+u3V2n+K5JlTzzD52zTa79wNM8/itlT3OtVq8XHvsdf12Uj+vJjWzLVExCr6FEeAEAAAAAACoaNsFF8j274mTvi6+L5tWTlvreRIsZYJmfltcTHA4vynNYZE23xc/CmU5idBFyxJGJYEzDQhmymrAzQ8C8dIAX7ydnmto6DXbmXW7FpO5YGBRKK1ACvvZtF3JMzHU/D55TemsdobvYxkbBBxhmscvUbx5kEuFhqA5GvhthL60K33oGIQAJwAAAAAAwBgWtm2zKZF9P2zaQFFXulLT+GJOzRsd1asVZ+qjwbhIQhehi5ZDiTRoZ98VeAfF95JWgRp0NOWaZruSAJ+2KvR8OZhZZa67+bAInrKtEiMJ6tnAX12KDVVH71NF9rgON9Xjl+i76VGcymKXtut8UJP2WlusbnEEOAEAAAAAACradu65E6VS3WhIq8e1027W8c1rXPfq0uaHnhz0PbFdpTU46HlScwE+DXpG3a54/kHX+jIeuzLf3bxKeE5vAJQP/A0L/q2JHtdCQHYS1Y/fuNw4oKIB0UJwU1vTDuteb4O3vda0IMAJAAAAAABQ2W9f/SPy0X2vHyvpPKVKglk63uVUaItDbYUZju5e7R30bZf0cDk088XBTA3ohWHLBvfSFo82wOZLO3OHbw2ADjUqaDdVob3L+FTGyhzj+I0jbNQlqLUHB4a9pjT9SILW4FaxYSuQaFT3+i2GACcAAAAAAEBF7/3cF+X9X3t0rKTzlEqCWYuZO3OHjaFjNg4VRZIPNcatMMNWhe7VOm5lFEgj0Pimi55pYLIbDgjuZYKVUUsWB90UKbstyX7mbioUSasx5I7kk9xF3c5j1lF1HNOitRy/qsw2tnTcVR23tITfbouv43kWvgj2hlSM19mHACcAAAAAAMBZ5LfdXciTsSm163cwQfM8d9Me7T6eDYz5zUBjiUMDajEXxMx27daxOc3MueCe15QlvWFQMp7moshSMeA2YFv07upt3+XZVJfQLH9NDRGLN/WpR9LUru+TBADXfPzGURyPNE691Wp3fvO96Ob3b2CXdsjCqnHrbbfLLTff5LIAAMBWVawTUEcAAACKOsKc0yBgy5NOpks5xsDxm3m04AQAAAAAANi0Imm1wswNgjAejt88IMAJAAAAAACwCel4jdoNXG9m0+GONGPj+M0PApwAAAAAAACbkI55uTrpeJTg+M0RApwAAAAAAAAA5hYBTgAAAAAAAABziwAnAAAAAAAAgLlFgBMAAAAAAADA3CLACQAAAAAAAGBuEeAEAAAAAAAAMLcIcAIAAAAAAACYWwQ4AQAAAADAXLnhhre4VwBAgBMAAAAAAMywe+/9hNx114dzae/evX15Wm6UsLEgCwuF1Ajd1OnQddRbkXuXrLMh011LT9SqV9oHWy637+u3TZtR//HTVJfMRz2BSFr1BZnyV3BLIsAJAAAAAABm1jPPPCOv2LNHLr30Upt27txp84t5Wq4Svy2rq6sutcUPG7mA5LT5bbce937jxUG0elCTdrrfJrVFQgJrMfMdWKi3zJEaIffd0dSRpuem4awiwAkAAAAAAGbWS2dekm3nnCNv9F4ru3btku3bt9v8Yp6WG58vzcCTKFweHdyaU1FrUQLz6BSDrH5b2mcv6gpMFQFOAAAAAAAwdadPn3av8sryy6ycedE+P/rYSfuclc1Lyk2kVpNsQ7x8d+RCN+SoJfVsN+URLf9yXda1pWB23iRl+igPXbeR62Zv1t11+YOF0goi8ZvN3P4N0tcFu9BvOt4Ps7x6r4wtkjse+W7vyb7nlj3geA1fd9KNO36Oy/Qfl/LjNnx+ezx1fVEQ70dhv6uI153dd7euzLKK+5hfzZB9G/p9G75vieJ3JtRtKexn+fEzct/b/uXPAgKcAAAAAABgak6dOiU33nijXHPNNfY56+TJk2m+lqvizMqKnDhxQp544gmbNED6yCOP9OVpubFFLVkMRIJmrymjBnrqoS+dtCt3TYJ6L3gVLUfid3pdlLV1ZL1qUKzQxbkTeCJeIB3XlHLUujVQ1ehqa0w3vRlJIxgSbQpDM68v/oiWmna9uS7sZr+6jf4gWNASWYrL6LbbwNmiZrl5vFAaffPUZVGWesstHK+q6w4bdkW2TNuPJFjsBfpGHTdVNr8dQkCPv34Odt7xm7V6zSW77y0X+UtbzWY/1+w+doJcwHnovlX4vg2bv8p3Zujx0wBroytBsg0z2uyXACcAAAAAAJiaHTt2yJEjR+yNgDQQqUFNpc+HDx+2+Tpdy42id0t/7PHH5cEHH5T777/fprvvvttO0+ckT6druUp3V8+2RrNxoew4itriUSRYyrR49Js2eJWMV+k125nynjQ1ONrtpgGlypLgarquUevWZ68wfRrdzN16O9ku7Ga/lgLxbIA0w2xPsu9es2nL91qHlhwLs42d9IAly225VoDV1+0FS+m6/aaZHkWu9eroz0yVzz+GYgvctDVlvM0StMzWFLdH30fmMGT20TPHsbfDQ7etyvdt2LEZ/Z2pcvxqUksmZr4Ds4QAJwAAAAAAmKrdu3enQU4NamqgM3nWfJ1exZ13flYuvPAi2X/VVXL11VfbdODAATvtPddfn+ZdeeWVtpyWHyltRdkWPwqklY2i2aBaJEHa3VdTXYqNJLXFWzq90JqumkhacXSzFywate6oK91soMmpeWuMNtn19i9XPJNn1tjN7Ltn8vI8LTZU3zx2uc4Y6671FXLTK35mpfOPo9ACd7WTCQraoGUoDe2qng0C2u0b3op21LaN+r6Vzl/lOzPq+HkHxfd0v4rd6mcLAU4AAAAAADB1SZBTg5qHDh2yzxrwrBrcTKysrPTdUEiXU8zTcuPxpd32JWzkuzLb/GwQy6W41Vsc6Ml35x0SuSqRdGFe6msKN2Td3UjGjcdpZMubJJA3d4Z9ZhsnCRz2B4IntcbvW+XvzLDj50lTu6d3AunasTyL/15mAwFOAAAAAACwLjSYeezYMdm/f799Pnr0qJtS3YsvxoHLUTcZSsqNxXXFTcZOHBkQtC3ifGlnWu5F3TE7OocNqRe7BKtR6y6Z3o2GhLBs67tIglwz1YKy9Za0/htXZJaTk221OY11ly1jo9khB2rmu6Ef7mLvRjxr2b61ft9K1p37zlTdPq8pHTfOavrvZYYQ4AQAAAAAAOtGg5zNZnPslpuJM2fO9N1QSPXdZMiUG188pmGUBKRsN2PtrpttpRZJq9G7aUva/VfZoNY4wZ74JjzZMRNTo9adTM/cQEaDpcO7DWvru7b4OnZk8e7lybxl643vviRrbgSZ28Zk/91yp7HuSp9ZBZOMyZnKbLPZHjscZ/I5Ddo+870ZFnPOW8P3LQlwD/vOjDp+A75j/V3izz4CnAAAAAAAYGZpd/SHHnpIHnjgAZv0tSrmabmJ2FacvSCQ3lW7bcdS7I1HGHoH4xZ0SfAqGa9Qb1I0RpfhpDu83lm8N96hSS6CNHTddrq7i3YyXbsu653Yh9Lux4X5NLU8SW50o+vtBN38ev1O5uZAk/OCtnitZLlm/3M3HZrOukcdt5FcS147fzGal6WB4nQdcdLiYaNuj28y5IC9AVMUyKJr6di3fXUzU5Ve7Gv8vpkFSLMz+jsz9PjVPNc13eWbz2aju/5XsbBq3Hrb7XLLzTe5LAAAsFUV6wTUEQAAgJq1OoLeLb3SDYVwVoWNBWl50wmUYno24+dCC04AAAAAADBXCG4CE7Jdzn1pbrKgMwFOAAAAAAAAYBPS1ppx93KXGiLt1fbax1adMQQ4AQAAAAAAMHV2fE26p59V+hmsrmbT5gtuKgKcAAAAAAAAAOYWAU4AAAAAAAAAc4sAJwAAAAAAAIC5RYATAAAAAAAAwNwiwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAAABg01pYWMildx18l5uSVyyXpDJRqy4LjdC9ywsbC1JvRe7ddOgyB63P5tdbUlxbWXlgMyLACQAAAAAANrVP/vFD8pkvPyZff/I7cs/d98hl9de7KT3XHbjOTtekZXWeDRU2BgYqE77vmzKh5EOWkXS7+hTKcm7GON/OM8qI9QLzgAAnAAAAAADYMjSQ+eijj8orfvDiXPrS174gr7nkXFdqBtU88aQr3WwkMlqWMDL5XiSRBjoTSX7NvQc2OQKcAAAAAABgy3jfB95rnz/+q5/pS9/vvU6aH/kpO33abJf2bPf3TPfxtDt5FEi9MC3lHRTfiyTMNNWMlkOJ/KY0a9q4MzNPN5LI8+WgZ15HrXiZScq01hy23vz21qXX4z6SVn1BGmZ9DTutUWhVCmw8ApwAAAAAAGDL2PfqfyRv+7Efl3df/QMup+eXb79bfufXPuneTY8GC+tBTdqrq7JqU0eCbiMNKPptk9f2RbxAOjpdX/fx5KDvSZRpqtmNIvG8WtwVvdvtBS412FmrmTnMupcj8TuZ9ZpHfcR67faGfpxn82sS1POBzG4rFM8uty2DthbYSAQ4AQAAAADAlnH8sT+R+/7oDweOsfkrNx2QQz/7bveuAh2/Mm3l2Ev5BpihtAKRoJMNBHrSXArE6xtTczivZptqunnMc+iJr800fV/8dBxOze+Nv+k129LUSKdl1ts0+ZlgaD+3vUtNGyC1/KYEXrzclLYcTQsAZxcBTgAAAAAAsGX8+gd/S1549kXbgrOY/jz6mrTef4crWYHfdi0j8ynXANMGJGs6hGaeZ/KKY2qOooFMF8C0y026oZslpeNwmv91Tans/YVy3c3z0dd+dnsjCerZoG1dgsJ21vp2CDh7CHACAAAAAIAtQ++irmNtFoOSQRDYO6jPtjhw2dUxNvU26a4burbM1O7r2jXdjsvpeRLfXygeJzPf3TwbfS3jZ7rT91KlWYGzgAAnAAAAAADY1LR15lvf8Gp7l3S9i/pXO3/hpvRogFOna9KyOs+uPTvd1DUYdPdzZVtaDmjZOULN8yQKW9IKo7Qbukq6r7d0XE7/YBz4dK05251ed3MbGB2mbHuBGUaAEwAAAAAAbFrFVojHlo+5KXnFcppOPvFtN3UNvKY0fe3ynb1JTyStRR3osim5RpFRJCPCj+Id9MWLQgkjT3u596Td1924nKlMsDJqyWKxr7nKrrdsexu9u68Ds4YAJwAAAAAAwDrSu5V3gq7tLp6MaRn6Helk79LjbuRjywwbJ9M7KL7Olo6/mUjG3cy0CvWasqRx1GQ8zUWRpWI/8wHr1e1t+y4v2V6z3tzqgBmysGrcetvtcsvNN7ksAACwVRXrBNQRAACAoo4AYJbRghMAAAAAAADA3CLACQAAAAAAAGBuEeAEAAAAAAAAMLcIcAIAAAAAAACYWwQ4AQAAAAAAAMwtApwAAAAAAAAA5hYBTgAAAAAAAABziwAnAAAAAAAAgLlFgBMAAAAAAADA3CLACQAAAAAAAGBuEeAEAAAAAABz5YYb3uJeAQABTgAAAAAAMMPuvfcTctddH86lvXv39uVpuWHCxoIsLJSkRuhKAZhHBDgBAAAAAMDMeuaZZ+QVe/bIpZdeatPOnTttfjFPyw3jt1dldTVObd9mpO9XbcZZEDZkod6SyL0FMBkCnAAAAAAAYGa9dOYl2XbOOfJG77Wya9cu2b59u80v5mk5AFsTAU4AAAAAADB1p0+fdq/yyvLLrJx50T4/+thJ+5yVzUvKTSRqST3bZT3XqjKSVn1BGmEoDTu9IUmH9ly3dzNP2Kr3dXePNC8ps1CXlluwnVfLRkG8brrJAxMjwAkAAAAAAKbm1KlTcuONN8o111xjn7NOnjyZ5mu5Ks6srMiJEyfkiSeesEkDpI888khfnpabVLQcid9JurB3JDCPeiHg2G2F4tkybdEO7RqgbHQD6STd3JuRNIJ8Z3MNbtZDv1emXZOgHgdIbZd57RrvuWWcrW7ywCZAgBMAAAAAAEzNjh075MiRI/ZGQBqI1KCm0ufDhw/bfJ2u5UbRu6U/9vjj8uCDD8r9999v0913322n6XOSp9O13KR3V/eabWl67o140mz6It1ufmxMv5kpE0oYehIsNU1px2/HY3umQmkFUijTlMDTed17AFNBgBMAAAAAAEzV7t270yCnBjU10Jk8a75Or+LOOz8rF154key/6iq5+uqrbTpw4ICd9p7rr0/zrrzySltOy08q15V8QHfxWi0NU5rCXelKTbJZquZlMsJQQokkqLtlui7qhUaeAKaAACcAAAAAAJi6JMipQc1Dhw7ZZw14Vg1uJlZWVvpuKKTLKeZpucnEY2vmu5KP6C7ejSre+dyXdrLMTKI3OjBdBDgBAAAAAMC60GDmsWPHZP/+/fb56NGjbkp1L74YBy5H3WQoKTc22xrTl3an15U86nbdqxI1z5Q18xWinN0ok1FSBsD0EeAEAAAAAADrRoOczWZz7JabiTNnzvTdUEj13WTIlJtcJhAZtWRxVD9y76D4XiTBYuZu62FDcj3bvaY0fe2i3rvrulm4tBrZO7QbUWTWDmAtCHACAAAAAICZpd3RH3roIXnggQds0teqmKflJuI1ZUlvBpSMlbkosjSyD7knzY6723oyvqZ2cQ/yg3LqndLbftwFPhmDM/QO9t10yE4fMO4ngGoWVo1bb7tdbrn5JpcFAAC2qmKdgDoCAABQs1ZH0Lulr+WGQuslbCxIy+tIp3e7dQAbgBacAAAAAABgrsxicDPuou5Lk+AmsOEIcAIAAAAAAIxJW2vG3c5daoi0V9vCDdKBjUeAEwAAAAAAYEw6vubqajYR3ATOFgKcAAAAAAAAAOYWAU4AAAAAAAAAc4sAJwAAAAAAAIC5RYATAAAAAAAAwNwiwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAAABgS1lYWKiUpi1s6HIbErr3g0Stuiw0hpXoL6PLrbci9w7YeghwAgAAAACALWd1dVUe7nbt86C0Hvy2LrstvnsPYDoIcAIAAAAAgC1p3xVXyK0f+MC6tNYEsHEIcAIAAAAAgJl2+vRp9yqvLH8ct3zwg/Irv/RLNsh5/OGHXe5ocbfwUFr1Xpd222s8akndvS92Rx/UlTzutu5SvSVdl59VpUyR7caezLNQF3qwYzMjwAkAAAAAAGbSqVOn5MYbb5RrrrnGPmedPHkyzddya5EEOa+o1cYKckZBS2Qp7tLeCbw4ELmoWZrXkcALpTFkPE0t3+gG0km6xjcjaQT9AdBRZYo0uFkP/d487ZoE9eFjfwLzjAAnAAAAAACYSTt27JAjR47I3r175ZFHHrFBTaXPhw8ftvk6XcsN02vJGKdBeb/8oQ/Z/LGCnH5Tml780ms27diavnmOszxpNk1OtyuDw5GhhKEnwVJS3vDb0s4N0FmlTFEorUAK8zRtsDUkwolNigAnAAAAAACYWbt3706DnBrU1EBn8qz5On0U24oxkwblaQtOpTce0rE5q/C8mnuV8KQvq0zUla7UpJZGIWM1L5NRpUxRGEookQSZrvPaRX1Eo09grhHgBAAAAAAAMy0JcmpQ89ChQ/ZZA55VgptV6I2GtAXnOMHNNetGJS07M6qUGciXdiGAq2l4y09gfhHgBAAAAAAAM0+DmceOHZP9+/fb56NHj7opa5MENzUAuGHBTVXzxJOuxjBzulEmo0qZopJ5gM2MACcAAAAAAJgLGuRsNptTa7mpY23qDYY0uLnhvKY0/UiCxVavlWbYiO/EnqhSpiiZJ3dToUhajcwygE2GACcAAAAAANhydGxKvaFQb5zKfNoIfrsjgXnUk/Xqnc+D/PiaVcoU+W3tjh5KI5lnoS6hd7B30yFgk1lYNW697Xa55eabXBYAANiqinUC6ggAAEBRRwAwy2jBCQAAAAAAAGBuEeAEAAAAAAAAMLcIcAIAAAAAAACYWwQ4AQAAAAAAAMwtApwAAAAAAAAA5hYBTgAAAAAAAABziwAnAAAAAAAAgLlFgBMAAAAAAADA3CLACQAAAAAAAGBuEeAEAAAAAAAYw9ve9jZZWFgYK+k8ANYHAU4AAAAAAIAxfPrTn5avP/kd+cyXH6uUtKzOA2B9EOAEAAAAAACYwGV7LpZXbXvWpmGvv/qNp9wcg0Wt+oBWn3VpRa4AgKEIcAIAAAAAAFSQdE1X773+XfLc04/Ivn37bHrNJefa58dXLkhfJ/mV+G1ZXV3NpI40PTdtXoUNWai3hDgt1hsBTgAAAAAAgAq0m3kSgNTX51+01+ZrF3RNSltsquPHj6d5ANYXAU4AAAAAAIAKrr322rQLub7eCGHDrK8Runcx26U9aRkZtaSedms3qdBiUuevt6J8N/gBrSr7usnn1hlJq74gjTCUhp3eEDt1yLrT7Y6CuExmeROtCxiCACcAAAAAAEAF9913n22ZqY4cOWKflXZDL3ZFH6t7+hC+74t0u5mAZCTLYSR+synagz1aNq87vW7tgXnUiwHRoC6LslRaRgOO9aAmbdc61ZbpNvoCq91WKJ5dV1vMVg1dt982eW1Tyguko9P1tTHpuoBhCHACAAAAAABUoGNwauBSHT582D6rpIt6EvxUY3dR1/Eqs60ak9aQvi9+FMpyEuGMliWMTJ6L+nnNdmasTk+aTTMhFxA1/LZ00kKmzFIgXthyNzEKpRWIBJ1sIDEpE+ZbT/rN3LigldadM/m6gGEIcAIAAAAAAFRQHINzqoo3GerELTTNBPH9SEIX4YyWQ4k06GnfxXJdvgstIZXn1dwrx7xPc2xg0bwvBhNtma50M9HKWl+h0evOWeO6gDIEOAEAAAAAACoojsGpd1FXX/3GU7nXiezrtdBu6lG4LFHSPT1pvinxOJX10I+7gWtyXcHX39lcN5BHgBMAAAAAAKACHYNTA3nq5z52h72LunZFf9W2Z9M7quvrpGt69vWaJN3Uw3z3dIm60hVf2mlrT83qulc9kSmXk21Jaf7nFVpPWnbZA1pbJiquO2fSdQEjEOAEAAAAAAAY02V7LrYtNB9fucCmYa+17Nq4buqtUCRo5rqnSzZgGLVkMShGD42wIb3e46E0zBsvWY7XlKZZdlDP3q08ktaiDpZZXFdRhXVHkSnlrGldQDkCnAAAAAAAAGPQ7ul6h/S3vuHVlZKW1XmGKt5kyKTskJa2m3pkng9mmjl6TVnS2GDdzbMosjSgm7gXtMVrJcttSJi76ZBZZntVOkHXdjmPy9RNmU6uTJ8q6/abEnhxV/ZkfM6J1gWMsLBq3Hrb7XLLzTe5LAAAsFUV6wTUEQAAgKKOML/CxoK0PAKI2NxowQkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAABsUnbMS7qnY5MjwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAAAAAAOYWAU4AAAAAAAAAc4sAJwAAAAAAAIC5RYATAAAAAAAAwNwiwAkAAAAAAABgbhHgBAAAAAAAADC3CHACAAAAAAAAmFsEOAEAAAAAAADMLQKcAAAAAAAAAOYWAU4AAAAAAAAAc4sAJwAAAAAAAIC5RYATAAAAAAAAwJwS+f8B5uos6N3W8ZMAAAAASUVORK5CYII=" style="width: 715px; height: 201px;" width="1068" /></p>

                            */ 
                            @CapellaID { eid = "1d9afb83-c146-481a-8bc0-84e980354741"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '47d3c6be-8d91-44b2-b015-58eeba6dd99b' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FOP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'out'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'out'.'47d3c6be-8d91-44b2-b015-58eeba6dd99b'); 
                        }  
                        port 'CP 2' : ComponentPort { 
                            @CapellaID { eid = "6aa42781-e835-4f58-9062-f4b74c1f08f3"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'f6795681-5175-478b-9001-9616e00e0d9a' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 2'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 2'.'f6795681-5175-478b-9001-9616e00e0d9a'); 
                        }  
                        port 'CP 3' : ComponentPort { 
                            @CapellaID { eid = "54e57a28-d100-470d-8458-e59758fc41d5"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation 'fee65147-c256-47e8-bac9-de2ab1c58634' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FIP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 3'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 3'.'fee65147-c256-47e8-bac9-de2ab1c58634'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'ea32046e-b0ce-4bde-b954-d0a248089a2f'); 
                    }  
                    part 'Splitter' : PhysicalComponent { 
                        @CapellaID { eid = "a7e06bfa-90f5-4209-8fd5-c9efdd85fc76"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        allocation 'c32aa521-2581-4629-94d3-7a7ab91d5a8c' : ComponentFunctionalAllocation
                            allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'
                            to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter';
                        perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow' ; 
                        port 'main2' : ComponentPort { 
                            doc /*
                            <p>This component port represents an input to the splitter &#39;Behavior PC&#39;&nbsp;from the &#39;Hot Water&#39; component exchange&nbsp;from the &#39;Condenser&#39;.</p>

                            <p><img height="294" src="data:image/png;base64,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" style="width: 924px; height: 241px;" width="1138" /></p>

                            */ 
                            @CapellaID { eid = "1b3d32b9-7d58-40da-a317-0c67d610f718"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::IN; 
                            attribute :>> isUnique = false; 
                            ref allocation '6a9aaba8-3f71-4978-84ff-e30a627e1478' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FIP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'main2'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'main2'.'6a9aaba8-3f71-4978-84ff-e30a627e1478'); 
                        }  
                        port 'port4' : ComponentPort { 
                            @CapellaID { eid = "2be03be3-69cc-4b96-8d25-117782a3e1c2"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '34037e98-3eda-45d6-a963-0635681d9336' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port4'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port4'.'34037e98-3eda-45d6-a963-0635681d9336'); 
                        }  
                        port 'port3' : ComponentPort { 
                            @CapellaID { eid = "d332e99c-7ccb-4ac8-b779-4af1707df118"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation 'de69fbaf-cab5-495b-9f64-ff8ca0a21e68' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 1'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port3'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port3'.'de69fbaf-cab5-495b-9f64-ff8ca0a21e68'); 
                        }  
                        port 'port2' : ComponentPort { 
                            doc /*
                            <p>This component port represents the output from &#39;Splitter&#39; behavior component to the &#39;Excess Water Dishcarge&#39; through the &#39;Bypass&#39; component exchange.</p>

                            <p><img height="287" src="data:image/png;base64,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" style="width: 840px; height: 220px;" width="1086" /></p>

                            */ 
                            @CapellaID { eid = "3fb080a4-a539-4b2b-aa09-e6dbb6bb5593"; } 
                            attribute :>> aggregationKind = AggregationKind::UNSET; 
                            attribute :>> isFinal = false; 
                            attribute :>> isAbstract = false; 
                            attribute :>> isDerived = false; 
                            attribute :>> isPartOfKey = false; 
                            attribute :>> isReadOnly = false; 
                            attribute :>> isStatic = false; 
                            attribute :>> kind = ComponentPortKind::FLOW; 
                            attribute :>> isMaxInclusive = false; 
                            attribute :>> isMinInclusive = false; 
                            attribute :>> isOrdered = false; 
                            attribute :>> orientation = OrientationPortKind::OUT; 
                            attribute :>> isUnique = false; 
                            ref allocation '178f0d38-0701-49d4-984a-bc11e4750d58' : PortAllocation
                                allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 2'
                                to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port2'; 
                            ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port2'.'178f0d38-0701-49d4-984a-bc11e4750d58'); 
                        }  
                        ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'c32aa521-2581-4629-94d3-7a7ab91d5a8c'); 
                    }  
                    part 'Diverter Assembly' : PhysicalComponent { 
                        @CapellaID { eid = "9ec861da-8492-4707-861a-7395f8c39178"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        interface '3909f7b7-c924-4fea-99fd-bd85aff5105f' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'Splitter'.'PP 1'
                            to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'Feed Valve'.'PP 1' {
                            @CapellaID { eid = "3909f7b7-c924-4fea-99fd-bd85aff5105f"; } 
                            attribute :>> interfaceName = "Pipeline"; 
                        }  
                        interface 'f6fb0fe0-1fe0-4e69-8969-3c19ea08943e' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'Splitter'.'PP 2'
                            to targetPhysicalPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'Feed Valve'.'PP 2' {
                            @CapellaID { eid = "f6fb0fe0-1fe0-4e69-8969-3c19ea08943e"; } 
                            attribute :>> interfaceName = "Backup Pipeline"; 
                        }  
                        part 'Splitter' : PhysicalComponent { 
                            @CapellaID { eid = "bdcf5584-1772-4520-90f8-d203927afbff"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "e9d4edf3-2731-42dd-8b5c-ec31f6387e79"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "e578a477-ad7a-45c5-b9cc-bd9eb1c79887"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'condensor in' : PhysicalPort { 
                                doc /*
                                <p>This physical port represents a input to the splitter from the &#39;Hot Water Pipeline&#39; from the &#39;Condenser&#39;.</p>

                                <p><img src="data:image/png;base64,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" /></p>

                                */ 
                                @CapellaID { eid = "0dbc559d-db85-4bf7-a56b-8f3cdc828b16"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'splitter out' : PhysicalPort { 
                                doc /*
                                <p>This physical port represents the output of &#39;Splitter&#39; to &#39;Excess Water Discharge&#39; through the &#39;Bypass Pipeline&#39;.</p>

                                <p><img src="data:image/png;base64,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" /></p>

                                */ 
                                @CapellaID { eid = "999e085c-d51b-4a46-80bf-d390d40eb1e1"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        part 'Feed Valve' : PhysicalComponent { 
                            @CapellaID { eid = "9fcfce33-0a56-44c0-92ba-ba3280ffc4c1"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::HARDWARE; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            port 'PP 1' : PhysicalPort { 
                                @CapellaID { eid = "2c0a9cf8-47f0-443f-9b2e-af8e8079c84d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'PP 2' : PhysicalPort { 
                                @CapellaID { eid = "fb83690c-aae6-4c4b-ab91-44226ef8988d"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                            port 'evaporator out' : PhysicalPort { 
                                doc /*
                                <p>This physical port represents an output&nbsp;from the &#39;Feed Valve&#39;&nbsp;to the &#39;Boiler&#39; through the &#39;Dirty Pipeline&#39; physical link.</p>

                                <p><img src="data:image/png;base64,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" /></p>

                                */ 
                                @CapellaID { eid = "ffaa2e5a-120a-4315-844b-dff6d2332dbb"; } 
                                attribute :>> aggregationKind = AggregationKind::UNSET; 
                                attribute :>> isFinal = false; 
                                attribute :>> isAbstract = false; 
                                attribute :>> isDerived = false; 
                                attribute :>> isPartOfKey = false; 
                                attribute :>> isReadOnly = false; 
                                attribute :>> isStatic = false; 
                                attribute :>> isMaxInclusive = false; 
                                attribute :>> isMinInclusive = false; 
                                attribute :>> isOrdered = false; 
                                attribute :>> isUnique = false; 
                            }  
                        }  
                        ref :>> ownedPhysicalLinks =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'3909f7b7-c924-4fea-99fd-bd85aff5105f',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'f6fb0fe0-1fe0-4e69-8969-3c19ea08943e'); 
                        ref :>> ownedPhysicalComponents =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'Splitter',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'.'Feed Valve'); 
                    }  
                    interface '743ea180-df8f-425e-b272-c8312387b4f3' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'bottom'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'in' { 
                        @CapellaID { eid = "743ea180-df8f-425e-b272-c8312387b4f3"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Drainage"; 
                        attribute :>> isOriented = false; 
                        allocation 'd06ceeac-99c3-4971-9621-59825431e696' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'2dedf276-8988-40b1-9f20-fa6aa4bfb1bc'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'743ea180-df8f-425e-b272-c8312387b4f3'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'743ea180-df8f-425e-b272-c8312387b4f3'.'d06ceeac-99c3-4971-9621-59825431e696'); 
                         
                    }  
                    interface '780e948a-75d4-45c4-8985-a5c2f2fe9d18' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'top'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'h in' { 
                        @CapellaID { eid = "780e948a-75d4-45c4-8985-a5c2f2fe9d18"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Steam"; 
                        attribute :>> isOriented = false; 
                        allocation '3c6b9869-bf80-4fca-93e7-4b90d9081f45' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distill Water'.'afc69fbe-0dd9-480b-aa5f-b72c8a537751'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'780e948a-75d4-45c4-8985-a5c2f2fe9d18'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'780e948a-75d4-45c4-8985-a5c2f2fe9d18'.'3c6b9869-bf80-4fca-93e7-4b90d9081f45'); 
                         
                    }  
                    interface '6351d22d-1038-4e6b-bbbd-bbad47a8ee71' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port3'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 3' { 
                        @CapellaID { eid = "6351d22d-1038-4e6b-bbbd-bbad47a8ee71"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Dirty Water Backup"; 
                        attribute :>> isOriented = false; 
                    }  
                    interface '99161e49-e6a0-421d-954a-926fdda252f3' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port4'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'CP 2' { 
                        @CapellaID { eid = "99161e49-e6a0-421d-954a-926fdda252f3"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Dirt Water Feed"; 
                        attribute :>> isOriented = false; 
                        allocation 'd7b4558c-a380-4ab5-b149-fdf2ceb14aec' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4babf37b-7c92-4d8e-b68f-bb3643e0d97c'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'99161e49-e6a0-421d-954a-926fdda252f3'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'99161e49-e6a0-421d-954a-926fdda252f3'.'d7b4558c-a380-4ab5-b149-fdf2ceb14aec'); 
                    }  
                    interface 'ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c out'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'main2' { 
                        @CapellaID { eid = "ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water CS"; 
                        attribute :>> isOriented = false; 
                        allocation '1886db86-1ce7-4796-9a28-145850db0390' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'2b1b287f-82fd-4aa3-bc91-41164bfa7f1c'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c'.'1886db86-1ce7-4796-9a28-145850db0390'); 
                    }  
                    interface '09f67067-4cbf-484d-a8d6-a85891f819b8' : ComponentExchange 
                        connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'out'
                        to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'middle' { 
                        @CapellaID { eid = "09f67067-4cbf-484d-a8d6-a85891f819b8"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water FE"; 
                        attribute :>> isOriented = false; 
                        allocation '4ebf897b-2c4e-4858-9a58-2202cff45e29' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'1e0bb105-78e7-4461-b461-3815eebe0022'
                            to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'09f67067-4cbf-484d-a8d6-a85891f819b8'; 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'09f67067-4cbf-484d-a8d6-a85891f819b8'.'4ebf897b-2c4e-4858-9a58-2202cff45e29'); 
                    }  
                     
                    ref :>> ownedPhysicalComponents =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Diverter Assembly'); 
                    ref :>> ownedComponentExchanges =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'743ea180-df8f-425e-b272-c8312387b4f3',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'780e948a-75d4-45c4-8985-a5c2f2fe9d18',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'6351d22d-1038-4e6b-bbbd-bbad47a8ee71',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'99161e49-e6a0-421d-954a-926fdda252f3',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'09f67067-4cbf-484d-a8d6-a85891f819b8'); 
                     
                     
                }  
                part 'Operator' : PhysicalComponent { 
                    @CapellaID { eid = "8a5f41ee-8958-40cc-9c74-40bf7ca5a001"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'e9019301-784b-482f-8b13-595fa6f6a08a' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller' ; 
                    allocation 'e9c90e43-ece3-4dde-b882-a6acba364007' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Heat Source'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Heat Source' ; 
                    allocation 'd3b2be60-00d1-49f5-913d-e11fd60b7fe4' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Water Source'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Water Source' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "f3dc1773-4aed-43fb-bb3f-25aeb9fa0487"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '1445141e-1b2d-49f2-a0b9-f4bda4afadc1' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'outWater Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 1'; 
                        ref allocation '6eef3d9e-be71-4de9-aa42-89510381276a' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Water Source'.'FOP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 1'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 1'.'1445141e-1b2d-49f2-a0b9-f4bda4afadc1',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 1'.'6eef3d9e-be71-4de9-aa42-89510381276a'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "d8f8dfa5-ff11-4fd8-988d-8c45e23b22c9"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '9e2a66fa-ab1d-4b51-8fa5-0fa5f745467c' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Tend Heat Source'.'FOP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'; 
                        ref allocation '18282724-6ba1-46f7-8578-3b01e380e42c' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Operate Distiller'.'outPower Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'.'9e2a66fa-ab1d-4b51-8fa5-0fa5f745467c',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'.'18282724-6ba1-46f7-8578-3b01e380e42c'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'e9019301-784b-482f-8b13-595fa6f6a08a',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'e9c90e43-ece3-4dde-b882-a6acba364007',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'d3b2be60-00d1-49f5-913d-e11fd60b7fe4'); 
                     
                }  
                part 'Water Source' : PhysicalComponent { 
                    @CapellaID { eid = "d0305a2e-3edd-45e3-ab48-16d0f764b2a5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'b2104cb2-d5d9-42ce-a912-93fcc55e12e4' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water' ; 
                    port 'dirty' : ComponentPort { 
                        @CapellaID { eid = "af864982-aad7-4308-a7ae-6913e16b9dc8"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'c9c00b87-8629-4d17-82c1-7f350bc3860f' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'outDirty Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'dirty'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'dirty'.'c9c00b87-8629-4d17-82c1-7f350bc3860f'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "947c1a4c-d1ee-473a-b46a-0647d70ffef3"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '04deae4c-68d8-483e-831a-f6090d547ee8' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'inWater Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'CP 2'; 
                        ref allocation '1bd413e3-dbbb-4fe8-8a94-fa622cbec10a' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Provide Water'.'FIP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'CP 2'.'04deae4c-68d8-483e-831a-f6090d547ee8',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'CP 2'.'1bd413e3-dbbb-4fe8-8a94-fa622cbec10a'); 
                    }  
                    port 'PP 4' : PhysicalPort { 
                        @CapellaID { eid = "ffb9888b-0a01-4f6c-90c2-78bd5476d0da"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'b2104cb2-d5d9-42ce-a912-93fcc55e12e4'); 
                     
                }  
                part 'Heat Source' : PhysicalComponent { 
                    @CapellaID { eid = "4ce61649-d5ef-4f4e-a5f9-5973cd05e6b9"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'cc21fd17-72e2-4388-a414-26eeb7836da0' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat' ; 
                    port 'q in' : ComponentPort { 
                        @CapellaID { eid = "49a9059f-f9f6-42ac-a549-9b1da023b34f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation '10c685c8-d08a-4c09-b150-1c58cf3c572b' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'FOP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'q in'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'q in'.'10c685c8-d08a-4c09-b150-1c58cf3c572b'); 
                    }  
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "0afb1076-dd2a-4356-9118-82cb8dbff965"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '8f7dc74d-53ae-43df-9e7a-c00dd5b1a951' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'FIP 2'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'CP 2'; 
                        ref allocation 'f126b165-8c83-464f-86ec-8adebb10e121' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Generate Heat'.'inPower Control'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'CP 2'.'8f7dc74d-53ae-43df-9e7a-c00dd5b1a951',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'CP 2'.'f126b165-8c83-464f-86ec-8adebb10e121'); 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "50dcf36c-a7b5-42aa-b0ab-6afc82e87609"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'cc21fd17-72e2-4388-a414-26eeb7836da0'); 
                     
                }  
                part 'Water Distribution System' : PhysicalComponent { 
                    @CapellaID { eid = "8a1d15df-7fd5-40ab-a682-3dcfa1c39f18"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation 'c6859e25-e428-4e22-9620-192e6abe2f48' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water' ; 
                    allocation '63991403-c0cd-47fa-9c02-719dcebfad1b' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water' ; 
                    port 'CP 2' : ComponentPort { 
                        @CapellaID { eid = "24094d83-e386-48b5-9ce2-6f53b2224dd0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::OUT; 
                        attribute :>> isUnique = false; 
                        ref allocation 'fad4dad7-bd97-4e9d-ad33-92c41873d79f' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Distribute Clean Water'.'outSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'CP 2'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'CP 2'.'fad4dad7-bd97-4e9d-ad33-92c41873d79f'); 
                    }  
                    port 'CP 3' : ComponentPort { 
                        @CapellaID { eid = "f0ec1afb-b96b-49e5-8f60-20d3780cc9f0"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '3f0a3fc2-92c0-4af1-b1c0-0c91d7869c24' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Store Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'CP 3'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'CP 3'.'3f0a3fc2-92c0-4af1-b1c0-0c91d7869c24'); 
                    }  
                    port 'PP 3' : PhysicalPort { 
                        @CapellaID { eid = "3501975b-0dd9-49ce-aec3-6bbfc2dbbc66"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'c6859e25-e428-4e22-9620-192e6abe2f48',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'63991403-c0cd-47fa-9c02-719dcebfad1b'); 
                     
                }  
                part 'Water USer' : PhysicalComponent { 
                    @CapellaID { eid = "252a19de-cc1d-4897-9639-930a64a425a7"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '98756231-1567-4da9-8437-d05a1f39daf7' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Get Clean Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water USer';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Get Clean Water' ; 
                    port 'CP 1' : ComponentPort { 
                        @CapellaID { eid = "d865326e-f877-4330-a9c7-04b0a0a00edd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation 'bf5aa2c8-e2a4-4df6-90eb-0d5ddf51825c' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Get Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water USer'.'CP 1'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water USer'.'CP 1'.'bf5aa2c8-e2a4-4df6-90eb-0d5ddf51825c'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water USer'.'98756231-1567-4da9-8437-d05a1f39daf7'); 
                     
                }  
                part 'Waste Management System' : PhysicalComponent { 
                    @CapellaID { eid = "29d79e41-48b5-4503-84af-29958d820f1f"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '14f3c99b-7246-4df2-8a85-28b1c4944531' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Residue'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Residue' ; 
                    allocation 'dc427c8c-e610-47f0-8c24-25734a300a8b' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Manage Waste'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Manage Waste' ; 
                    port 'sludge' : ComponentPort { 
                        @CapellaID { eid = "a17261a1-46c3-4e45-bbb8-3a83961ea84f"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '86f2c368-37c4-4d23-bb03-ab5d86ad5d8a' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Residue'.'FIP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'sludge'; 
                        ref allocation '4aaeb69f-d324-4feb-a723-3d41216317ad' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Manage Waste'.'inWaste'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'sludge'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'sludge'.'86f2c368-37c4-4d23-bb03-ab5d86ad5d8a',
                        'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'sludge'.'4aaeb69f-d324-4feb-a723-3d41216317ad'); 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        @CapellaID { eid = "af867cff-adeb-49e0-89d8-ca993183c7a4"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'14f3c99b-7246-4df2-8a85-28b1c4944531',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'dc427c8c-e610-47f0-8c24-25734a300a8b'); 
                     
                }  
                part 'Excess Water Discharge' : PhysicalComponent { 
                    @CapellaID { eid = "971aa8c6-c90d-4d67-995f-611503195ff4"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
                    allocation '86fb4513-00db-4b78-8f75-4256196f347a' : ComponentFunctionalAllocation
                        allocate function ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water'
                        to component ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge';
                    perform 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water' ; 
                    port 'FIP 1' : ComponentPort { 
                        @CapellaID { eid = "1e986b66-1928-4125-bc3f-fce9d2e139cd"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> kind = ComponentPortKind::FLOW; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> orientation = OrientationPortKind::IN; 
                        attribute :>> isUnique = false; 
                        ref allocation '2f91fa70-2f8b-4ba3-9572-e0a9774a5c57' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water'.'FIP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge'.'FIP 1'; 
                         
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge'.'FIP 1'.'2f91fa70-2f8b-4ba3-9572-e0a9774a5c57'); 
                    }  
                    port 'PP 2' : PhysicalPort { 
                        @CapellaID { eid = "7de9ea27-4c56-415a-81d8-29d062f23eed"; } 
                        attribute :>> aggregationKind = AggregationKind::UNSET; 
                        attribute :>> isFinal = false; 
                        attribute :>> isAbstract = false; 
                        attribute :>> isDerived = false; 
                        attribute :>> isPartOfKey = false; 
                        attribute :>> isReadOnly = false; 
                        attribute :>> isStatic = false; 
                        attribute :>> isMaxInclusive = false; 
                        attribute :>> isMinInclusive = false; 
                        attribute :>> isOrdered = false; 
                        attribute :>> isUnique = false; 
                        ref allocation '0bea985e-9bba-49f5-be3b-879af5b0aa9d' : PortAllocation
                            allocate allocatedPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Discharge Excess Water'.'FIP 1'
                            to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge'.'PP 2'; 
                        ref :>> ownedPortAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge'.'PP 2'.'0bea985e-9bba-49f5-be3b-879af5b0aa9d'); 
                    }  
                     
                    ref :>> ownedFunctionalAllocation =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge'.'86fb4513-00db-4b78-8f75-4256196f347a'); 
                     
                }  
                interface '04b8b95b-b6be-4652-9565-c3e5f76b6b98' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'dirty'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c in' { 
                    @CapellaID { eid = "04b8b95b-b6be-4652-9565-c3e5f76b6b98"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '39cac112-743e-431e-aa1e-b3d9768772cc' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d2fadfc2-5ca1-4fe0-aee5-37b8987689b5'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'04b8b95b-b6be-4652-9565-c3e5f76b6b98'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'04b8b95b-b6be-4652-9565-c3e5f76b6b98'.'39cac112-743e-431e-aa1e-b3d9768772cc'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                }  
                interface 'fd33e4a2-0c32-454e-8dc8-d5b1f36baa67' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'CP 2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water USer'.'CP 1' { 
                    @CapellaID { eid = "fd33e4a2-0c32-454e-8dc8-d5b1f36baa67"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Faucet"; 
                    attribute :>> isOriented = false; 
                    allocation 'b350f797-5f1d-45f2-871d-7b120d399c1e' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'d86eee53-1e17-472a-a454-779e07b4c76b'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'fd33e4a2-0c32-454e-8dc8-d5b1f36baa67'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'fd33e4a2-0c32-454e-8dc8-d5b1f36baa67'.'b350f797-5f1d-45f2-871d-7b120d399c1e'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'fbbd4370-b605-4562-ba0b-bd3e4372cf0d' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 1'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Source'.'CP 2' { 
                    @CapellaID { eid = "fbbd4370-b605-4562-ba0b-bd3e4372cf0d"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Supply"; 
                    attribute :>> isOriented = false; 
                    allocation '1d397708-daaf-4ebf-aa0b-d14efe10edf3' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'02ad4ead-4d78-4fcf-b476-906943c4ff06'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d'; 
                    allocation '0fa21628-f75a-4d97-b575-53e9483f53d8' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'947328ac-5f47-4745-a87b-c30aba98372a'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d'.'1d397708-daaf-4ebf-aa0b-d14efe10edf3',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d'.'0fa21628-f75a-4d97-b575-53e9483f53d8'); 
                     
                }  
                interface 'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Operator'.'CP 2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'CP 2' { 
                    @CapellaID { eid = "bcf4865f-d2de-4d68-bc0e-f085e9e81ed3"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Operating Fuel"; 
                    attribute :>> isOriented = false; 
                    allocation 'fd2aa839-7ecb-4fdb-bf3e-e14476b36c8e' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'90dd0efb-797b-4506-a33e-8d26b1b6289b'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3'; 
                    allocation '118acce6-b439-49eb-886a-9a59721d42d5' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'8d255656-b25a-46bf-858e-d6ba28161f3b'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3'.'fd2aa839-7ecb-4fdb-bf3e-e14476b36c8e',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3'.'118acce6-b439-49eb-886a-9a59721d42d5'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Heat Control',
                    'Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Water Supply Control'); 
                }  
                interface 'b9c1cf0f-e96a-4dba-bb30-3b88599091e6' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'out'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Waste Management System'.'sludge' { 
                    @CapellaID { eid = "b9c1cf0f-e96a-4dba-bb30-3b88599091e6"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Waste"; 
                    attribute :>> isOriented = false; 
                    allocation 'afaaba97-9266-485b-8462-a9a196ef759e' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'c27e7350-f701-46fd-b455-c3f99a6d9b3d'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'b9c1cf0f-e96a-4dba-bb30-3b88599091e6'; 
                    allocation 'dc0e4ecc-9a35-4c65-89b8-e5d537f11bdc' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'406cefff-802f-442d-8f92-ac38277f7136'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'b9c1cf0f-e96a-4dba-bb30-3b88599091e6'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'b9c1cf0f-e96a-4dba-bb30-3b88599091e6'.'afaaba97-9266-485b-8462-a9a196ef759e',
                    'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'b9c1cf0f-e96a-4dba-bb30-3b88599091e6'.'dc0e4ecc-9a35-4c65-89b8-e5d537f11bdc'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Sludge'); 
                }  
                interface 'a47555fc-935f-408d-96db-4203c80f91cf' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'CP 4'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Water Distribution System'.'CP 3' { 
                    @CapellaID { eid = "a47555fc-935f-408d-96db-4203c80f91cf"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Distribution Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'd1e6ee20-5dac-4749-bc56-ad61f896929f' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'4689b116-bb9c-4af2-a3ca-935679587f3b'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'a47555fc-935f-408d-96db-4203c80f91cf'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'a47555fc-935f-408d-96db-4203c80f91cf'.'d1e6ee20-5dac-4749-bc56-ad61f896929f'); 
                     
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'eac90a95-6346-4c9a-bb16-b3fa78469415' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Heat Source'.'q in'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'heater' { 
                    @CapellaID { eid = "eac90a95-6346-4c9a-bb16-b3fa78469415"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Heat Supply"; 
                    attribute :>> isOriented = false; 
                    allocation 'ec3f1b1b-8ecf-4266-b620-236f3071946d' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'fbf93101-8edf-4ee0-9a61-b7a8209c30ee'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'eac90a95-6346-4c9a-bb16-b3fa78469415'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'eac90a95-6346-4c9a-bb16-b3fa78469415'.'ec3f1b1b-8ecf-4266-b620-236f3071946d'); 
                     
                }  
                interface 'e669304f-ddd7-4b80-8895-5c08f50f40ca' : ComponentExchange 
                    connect source ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'port2'
                    to  target ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Excess Water Discharge'.'FIP 1' { 
                    @CapellaID { eid = "e669304f-ddd7-4b80-8895-5c08f50f40ca"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Excess Water"; 
                    attribute :>> isOriented = false; 
                    allocation '2b0782f2-5293-413e-8ae8-350a155a7d64' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'887d30a2-1d82-47f5-8cd6-b59f75bf6218'
                        to componentExchange ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'e669304f-ddd7-4b80-8895-5c08f50f40ca'; 
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'e669304f-ddd7-4b80-8895-5c08f50f40ca'.'2b0782f2-5293-413e-8ae8-350a155a7d64'); 
                    ref :>> convoyedInformations =  ('Distiller Project Project'::'Distiller Project'::'System Analysis'::'Data'::'Dirty Water'); 
                }  
            } 
            package  'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "bfbcf76f-b757-441d-a4cf-ed312b5323ef"; } 
            } 
            package  'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "121d236d-4622-4676-8d2d-a513ffff454d"; } 
            } 
            package  'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "91125c3e-9581-4182-ba2b-a4819d19c2d0"; } 
                use case 'Operate Distiller' : CapabilityRealization { 
                    @CapellaID { eid = "caa5b5ff-eaaa-423a-848e-faa7aeccd9db"; } 
                    ref action '8987ad05-4fe8-4a12-8520-a013978f672e' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'; 
                     
                     
                }  
            } 
        } 
        package  'PLM Data' {
            @PackageMeta {
                type = "GroupingElementPkg";
            } 
            @CapellaID { eid = "bfd888f9-1cb4-4b69-bc24-abb00ae1491b"; } 
        } 
    } 
}
package 'Distiller Project Project' {
    private import ARCADIA::*; 
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
    package 'Distiller Project' {
        @PackageMeta {
            type = "SystemEngineering";
        } 
        @CapellaID { eid = "10c78a5d-59c7-40ac-8ff3-9c52517dad84"; } 
        package 'PLM Data' {
            @PackageMeta {
                type = "GroupingElementPkg";
            } 
            @CapellaID { eid = "bfd888f9-1cb4-4b69-bc24-abb00ae1491b"; } 
            package 'PLM Requirement Types' {
                @PackageMeta {
                    type = "CapellaTypesFolder";
                } 
                @CapellaID { eid = "15ce62bd-333d-4f27-9493-e5773af0833c"; } 
            } 
        } 
        package 'Operational Analysis' {
            @PackageMeta {
                type = "OperationalAnalysis";
            } 
            @CapellaID { eid = "f85ad531-9ed7-4a62-970f-74baffc656cb"; } 
            package 'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "f5564a7b-e7c3-4c27-8772-66f8339e8d3e"; } 
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "2bec5589-6f27-448b-97cb-07db997695c2"; } 
                item 'H2O' : Class  { 
                    @CapellaID { eid = "1d4fbaa1-f7f6-4afa-8d0a-8fd26de9ed0b"; sid = "1d4fbaa1-f7f6-4afa-8d0a-8fd26de9ed0b"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'Power Source' : Class  { 
                    @CapellaID { eid = "469e1af3-4a69-4417-a8b9-ae40f5d0a767"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'Waste' : Class  { 
                    @CapellaID { eid = "15ad6a11-2ba1-47ed-978d-f20d465d5c51"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
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
                         
                         
                        ref :>> abstractType = 'H2O';
                    } 
                    ref :>> ownedElements =  ('dirty water'); 
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
                         
                         
                        ref :>> abstractType = 'H2O';
                    } 
                    ref :>> ownedElements =  ('steam'); 
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
                         
                         
                        ref :>> abstractType = 'H2O';
                    } 
                    ref :>> ownedElements =  ('clean water'); 
                }  
                item 'Waste' : ExchangeItem  { 
                    @CapellaID { eid = "2c59e714-4169-40fd-937e-e2cd350a0a01"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> exchangeMechanism = ExchangeMechanism::UNSET; 
                    attribute :>> isFinal = false; 
                    item 'Waste' : ExchangeItemElement { 
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
                    ref :>> ownedElements =  ('Waste'); 
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
                         
                         
                        ref :>> abstractType = 'Power Source';
                    } 
                    ref :>> ownedElements =  ('operating water'); 
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
                    ref :>> ownedElements =  ('water supply control'); 
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
                    ref :>> ownedElements =  ('power supply control'); 
                }  
            } 
            package 'Operational Entities' {
                @PackageMeta {
                    type = "EntityPkg";
                } 
                @CapellaID { eid = "3dce96c2-ef4a-4fec-8630-934f32758a39"; } 
                connection 'af7891c5-7436-4534-b03e-6a75d6bc6b74' : CommunicationMean 
                    connect source ::> 'Operator'
                    to  target ::> 'Safe Drinking Water System' { 
                    @CapellaID { eid = "af7891c5-7436-4534-b03e-6a75d6bc6b74"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Operator Control"; 
                    attribute :>> isOriented = false; 
                    allocation '7926cccc-ac29-4b09-8428-3fb864410925' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Operational Activities'::'Root Operational Activity'.'e25691cf-a326-4b93-b084-c875be4e957f'
                        to componentExchange ::> 'Operational Entities'::'af7891c5-7436-4534-b03e-6a75d6bc6b74' { 
                        @CapellaID { eid = "7926cccc-ac29-4b09-8428-3fb864410925"; } 
                    }  
                    allocation '2bb76af6-4840-4e17-bb9f-d85b989f823d' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Operational Activities'::'Root Operational Activity'.'d1b646fb-b293-4582-a09f-0c543ea21f36'
                        to componentExchange ::> 'Operational Entities'::'af7891c5-7436-4534-b03e-6a75d6bc6b74' { 
                        @CapellaID { eid = "2bb76af6-4840-4e17-bb9f-d85b989f823d"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('7926cccc-ac29-4b09-8428-3fb864410925',
                    '2bb76af6-4840-4e17-bb9f-d85b989f823d'); 
                }  
                connection '25bcf96e-cd57-4382-bde6-594875285878' : CommunicationMean 
                    connect source ::> 'Maintenance Personnel'
                    to  target ::> 'Safe Drinking Water System' { 
                    @CapellaID { eid = "25bcf96e-cd57-4382-bde6-594875285878"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Maintenance"; 
                    attribute :>> isOriented = false; 
                    allocation '181705ce-514e-48b0-b325-3a7fc7dca68b' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Operational Activities'::'Root Operational Activity'.'70a4b5c7-4899-4145-8d1c-1218fc62149e'
                        to componentExchange ::> 'Operational Entities'::'25bcf96e-cd57-4382-bde6-594875285878' { 
                        @CapellaID { eid = "181705ce-514e-48b0-b325-3a7fc7dca68b"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('181705ce-514e-48b0-b325-3a7fc7dca68b'); 
                }  
                connection '8f4addad-a3e8-41ef-8cd3-dfdf55ab8cad' : CommunicationMean 
                    connect source ::> 'Safe Drinking Water System'
                    to  target ::> 'Water User' { 
                    @CapellaID { eid = "8f4addad-a3e8-41ef-8cd3-dfdf55ab8cad"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Water Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '847503cc-900a-4cb8-9f94-e30a34035420' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Operational Activities'::'Root Operational Activity'.'d00bc9c8-a563-420f-b72e-b7991d048230'
                        to componentExchange ::> 'Operational Entities'::'8f4addad-a3e8-41ef-8cd3-dfdf55ab8cad' { 
                        @CapellaID { eid = "847503cc-900a-4cb8-9f94-e30a34035420"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('847503cc-900a-4cb8-9f94-e30a34035420'); 
                }  
                connection '30081d31-d5dd-45cf-a65a-481673d6f53a' : CommunicationMean 
                    connect source ::> 'Deploymeny Personnel'
                    to  target ::> 'Safe Drinking Water System' { 
                    @CapellaID { eid = "30081d31-d5dd-45cf-a65a-481673d6f53a"; } 
                    attribute :>> kind = ComponentExchangeKind::UNSET; 
                    attribute :>> interfaceName = "Deployment"; 
                    attribute :>> isOriented = false; 
                }  
                part '2a5fe984-bb3d-42cc-a3c7-0d896aeaf6c4' : CPart :> 'Safe Drinking Water System'  { 
                    @CapellaID { eid = "2a5fe984-bb3d-42cc-a3c7-0d896aeaf6c4"; } 
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
                part 'd6a83186-6d39-48f0-bb89-2dd5e89bb92a' : CPart :> 'Operator'  { 
                    @CapellaID { eid = "d6a83186-6d39-48f0-bb89-2dd5e89bb92a"; } 
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
                part 'b998a152-c607-4adf-9515-37f97b103b44' : CPart :> 'Water User'  { 
                    @CapellaID { eid = "b998a152-c607-4adf-9515-37f97b103b44"; } 
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
                part '4a696683-460f-496b-8486-fc782ebf2eb5' : CPart :> 'Maintenance Personnel'  { 
                    @CapellaID { eid = "4a696683-460f-496b-8486-fc782ebf2eb5"; } 
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
                part '53cdbb8e-082b-44a3-a527-5909830ad1e6' : CPart :> 'Deploymeny Personnel'  { 
                    @CapellaID { eid = "53cdbb8e-082b-44a3-a527-5909830ad1e6"; } 
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
                part 'Safe Drinking Water System' : Entity  { 
                    @CapellaID { eid = "94b19c2d-827e-4a2a-9862-dc32e1ef27df"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
                    allocation 'c7db1cff-7048-43ca-9be9-034b009e8327' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Provide Dirty Water'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "c7db1cff-7048-43ca-9be9-034b009e8327"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Provide Dirty Water' ; 
                    allocation '6af5d32b-789d-4134-960e-b25446f6575d' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Provide Operating Power'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "6af5d32b-789d-4134-960e-b25446f6575d"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Provide Operating Power' ; 
                    allocation '06f6ce31-8704-435e-8a4f-4497ae11275d' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Purify Water'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "06f6ce31-8704-435e-8a4f-4497ae11275d"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Purify Water' ; 
                    allocation '8c9ddb6b-5cb8-47e5-8489-2ad1529ea9b8' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Store Water'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "8c9ddb6b-5cb8-47e5-8489-2ad1529ea9b8"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Store Water' ; 
                    allocation '605b9cf7-0819-4ee1-9a24-73446a299647' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Distribute Water'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "605b9cf7-0819-4ee1-9a24-73446a299647"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Distribute Water' ; 
                    allocation '0ceda3d0-faaa-4fdc-be95-126edec792ac' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Manage Waste'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "0ceda3d0-faaa-4fdc-be95-126edec792ac"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Manage Waste' ; 
                    allocation '6182ec84-b5ba-4cff-b625-fffece2cb817' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Allow maintenance and service'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "6182ec84-b5ba-4cff-b625-fffece2cb817"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Allow maintenance and service' ; 
                    allocation 'c3d768f7-f4a7-4a7d-9a34-47d34c6e65f4' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Provide Deploymentability'
                        to component ::> 'Operational Entities'::'Safe Drinking Water System' { 
                        @CapellaID { eid = "c3d768f7-f4a7-4a7d-9a34-47d34c6e65f4"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'System Operational Context Activities'.'Provide Deploymentability' ; 
                    ref :>> ownedFunctionalAllocation =  ('c7db1cff-7048-43ca-9be9-034b009e8327',
                    '6af5d32b-789d-4134-960e-b25446f6575d',
                    '06f6ce31-8704-435e-8a4f-4497ae11275d',
                    '8c9ddb6b-5cb8-47e5-8489-2ad1529ea9b8',
                    '605b9cf7-0819-4ee1-9a24-73446a299647',
                    '0ceda3d0-faaa-4fdc-be95-126edec792ac',
                    '6182ec84-b5ba-4cff-b625-fffece2cb817',
                    'c3d768f7-f4a7-4a7d-9a34-47d34c6e65f4'); 
                }  
                part 'Operator' : Entity  { 
                    @CapellaID { eid = "a5554521-7541-48e3-9515-99b20e084924"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '32a830da-3a2e-4611-b737-0f1088d11c08' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Operate System'
                        to component ::> 'Operational Entities'::'Operator' { 
                        @CapellaID { eid = "32a830da-3a2e-4611-b737-0f1088d11c08"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Operate System' ; 
                    ref :>> ownedFunctionalAllocation =  ('32a830da-3a2e-4611-b737-0f1088d11c08'); 
                }  
                part 'Water User' : Entity  { 
                    @CapellaID { eid = "36e3ecea-837b-4994-84ff-0d314f81732a"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '2da6c1fc-b18c-40e5-8392-69908e7b4a0d' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Use Water'
                        to component ::> 'Operational Entities'::'Water User' { 
                        @CapellaID { eid = "2da6c1fc-b18c-40e5-8392-69908e7b4a0d"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Use Water' ; 
                    ref :>> ownedFunctionalAllocation =  ('2da6c1fc-b18c-40e5-8392-69908e7b4a0d'); 
                }  
                part 'Maintenance Personnel' : Entity  { 
                    @CapellaID { eid = "78a7e857-4fb1-4e50-bfc6-6af1025c7b12"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation '7e08af3b-37c2-43e9-8ccd-c48d67358bf2' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Maintain and Serivce System'
                        to component ::> 'Operational Entities'::'Maintenance Personnel' { 
                        @CapellaID { eid = "7e08af3b-37c2-43e9-8ccd-c48d67358bf2"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Maintain and Serivce System' ; 
                    ref :>> ownedFunctionalAllocation =  ('7e08af3b-37c2-43e9-8ccd-c48d67358bf2'); 
                }  
                part 'Deploymeny Personnel' : Entity  { 
                    @CapellaID { eid = "876e28d7-3e33-47e7-84b6-678c73f262b7"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    allocation 'd94b577d-4edb-4d97-8a32-ce97720349e5' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Install System'
                        to component ::> 'Operational Entities'::'Deploymeny Personnel' { 
                        @CapellaID { eid = "d94b577d-4edb-4d97-8a32-ce97720349e5"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Install System' ; 
                    allocation '9040631a-f116-4667-bb32-265c6431589a' : ComponentFunctionalAllocation
                        allocate function ::> 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Certify System'
                        to component ::> 'Operational Entities'::'Deploymeny Personnel' { 
                        @CapellaID { eid = "9040631a-f116-4667-bb32-265c6431589a"; } 
                    } 
                    perform 'Operational Activities'::'Root Operational Activity'.'Actor and Entity Activities'.'Certify System' ; 
                    ref :>> ownedFunctionalAllocation =  ('d94b577d-4edb-4d97-8a32-ce97720349e5',
                    '9040631a-f116-4667-bb32-265c6431589a'); 
                }  
            } 
            package 'Roles' {
                @PackageMeta {
                    type = "RolePkg";
                } 
                @CapellaID { eid = "f666542b-57a5-4273-9ee1-d1d5ca958080"; } 
            } 
            package 'Operational Activities' {
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
                    action 'Test Chain - Provide Safe Drinking Water' : OperationalProcess  { 
                        @CapellaID { eid = "c1395166-4388-4a14-95fe-fdb6c580072b"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '40118317-4e8f-487f-8b1d-41cb1f6b9e38' = 'Actor and Entity Activities'.'Operate System'; 
                        connection '71be6fcb-9c99-4dbb-a115-77da6a7e9256' : FunctionalChainInvolvementLink 
                            connect source ::> '40118317-4e8f-487f-8b1d-41cb1f6b9e38'
                            to  target ::> '0de07162-42ac-4279-9349-8a89a103e518' {

                                ref :>> involved = 'd1b646fb-b293-4582-a09f-0c543ea21f36';

                            } 
                        ref action '0de07162-42ac-4279-9349-8a89a103e518' = 'System Operational Context Activities'.'Provide Dirty Water'; 
                        connection 'b6a6d0d0-f7b7-4895-b898-af50087989c1' : FunctionalChainInvolvementLink 
                            connect source ::> '40118317-4e8f-487f-8b1d-41cb1f6b9e38'
                            to  target ::> 'f005d5ac-e637-4ea3-9d3c-dcda1dafbd21' {

                                ref :>> involved = 'e25691cf-a326-4b93-b084-c875be4e957f';

                            } 
                        ref action 'f005d5ac-e637-4ea3-9d3c-dcda1dafbd21' = 'System Operational Context Activities'.'Provide Operating Power'; 
                        connection 'd823c7d9-07cc-4831-96cb-fbf04d8b8561' : FunctionalChainInvolvementLink 
                            connect source ::> '0de07162-42ac-4279-9349-8a89a103e518'
                            to  target ::> 'e5421aa7-f6ac-443f-95c1-19ddc705952e' {

                                ref :>> involved = 'f3c522e5-67db-4dbc-acd2-01b71395a43f';

                            } 
                        ref action 'e5421aa7-f6ac-443f-95c1-19ddc705952e' = 'System Operational Context Activities'.'Purify Water'; 
                        connection '339f70f8-e163-44f3-90bd-a175ef771e27' : FunctionalChainInvolvementLink 
                            connect source ::> 'f005d5ac-e637-4ea3-9d3c-dcda1dafbd21'
                            to  target ::> 'e5421aa7-f6ac-443f-95c1-19ddc705952e' {

                                ref :>> involved = 'a11e8a62-4729-4844-8562-bc5bcec732b5';

                            } 
                        connection '39e94c61-0907-4d85-a99c-19c0a94cc9e5' : FunctionalChainInvolvementLink 
                            connect source ::> 'e5421aa7-f6ac-443f-95c1-19ddc705952e'
                            to  target ::> 'ec8d8907-4122-41a9-9c47-b6fce9a50bc3' {

                                ref :>> involved = 'fea69e4d-5178-4d01-aace-6b41f31113d7';

                            } 
                        ref action 'ec8d8907-4122-41a9-9c47-b6fce9a50bc3' = 'System Operational Context Activities'.'Store Water'; 
                        connection '266299e0-89b1-4c81-94a1-c293e8caa580' : FunctionalChainInvolvementLink 
                            connect source ::> 'ec8d8907-4122-41a9-9c47-b6fce9a50bc3'
                            to  target ::> '2c0adb83-1789-4784-9013-63348055d737' {

                                ref :>> involved = '8fafff79-2bc4-45f2-a503-8170e12183af';

                            } 
                        ref action '2c0adb83-1789-4784-9013-63348055d737' = 'System Operational Context Activities'.'Distribute Water'; 
                        connection 'ae7a6731-f104-4ec5-b2e7-9fc44613d047' : FunctionalChainInvolvementLink 
                            connect source ::> '2c0adb83-1789-4784-9013-63348055d737'
                            to  target ::> 'ef715558-ae56-4b66-81e9-c949747faccc' {

                                ref :>> involved = 'd00bc9c8-a563-420f-b72e-b7991d048230';

                            } 
                        ref action 'ef715558-ae56-4b66-81e9-c949747faccc' = 'Actor and Entity Activities'.'Use Water'; 
                        ref action '143920af-8731-4788-9505-f0012a65162f' = 'System Operational Context Activities'.'Manage Waste'; 
                        connection 'eb2e42b9-fb41-4d51-97ae-eafba89496e4' : FunctionalChainInvolvementLink 
                            connect source ::> 'e5421aa7-f6ac-443f-95c1-19ddc705952e'
                            to  target ::> '143920af-8731-4788-9505-f0012a65162f' {

                                ref :>> involved = '45223828-9783-4c4c-bea2-c95e739efd3c';

                            } 
                    }  
                    action 'Maintain System' : OperationalProcess  { 
                        @CapellaID { eid = "066af401-7c11-4dbd-a418-2acdb5fa5e63"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '523ce65d-bd19-46a3-a490-c730adfbc0a5' = 'Actor and Entity Activities'.'Maintain and Serivce System'; 
                        connection '1fefa07e-8eac-49ff-9d0b-9f981b8e86fd' : FunctionalChainInvolvementLink 
                            connect source ::> '523ce65d-bd19-46a3-a490-c730adfbc0a5'
                            to  target ::> '0b0b96e4-5a0c-4d61-978c-4d919321865d' {

                                ref :>> involved = '70a4b5c7-4899-4145-8d1c-1218fc62149e';

                            } 
                        ref action '0b0b96e4-5a0c-4d61-978c-4d919321865d' = 'System Operational Context Activities'.'Allow maintenance and service'; 
                    }  
                    connection 'd1b646fb-b293-4582-a09f-0c543ea21f36' : OAInteraction 
                        connect source ::> 'Actor and Entity Activities'.'Operate System'
                        to  target ::> 'System Operational Context Activities'.'Provide Dirty Water' { 
                        @CapellaID { eid = "d1b646fb-b293-4582-a09f-0c543ea21f36"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Control"; 
                        ref :>> exchangedItems =  ('Data'::'Water Supply Control'); 
                    }  
                    connection 'e25691cf-a326-4b93-b084-c875be4e957f' : OAInteraction 
                        connect source ::> 'Actor and Entity Activities'.'Operate System'
                        to  target ::> 'System Operational Context Activities'.'Provide Operating Power' { 
                        @CapellaID { eid = "e25691cf-a326-4b93-b084-c875be4e957f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Power Control"; 
                        ref :>> exchangedItems =  ('Data'::'Power Supply Control'); 
                    }  
                    connection 'f3c522e5-67db-4dbc-acd2-01b71395a43f' : OAInteraction 
                        connect source ::> 'System Operational Context Activities'.'Provide Dirty Water'
                        to  target ::> 'System Operational Context Activities'.'Purify Water' { 
                        @CapellaID { eid = "f3c522e5-67db-4dbc-acd2-01b71395a43f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                        ref :>> exchangedItems =  ('Data'::'Dirty Water'); 
                    }  
                    connection 'a11e8a62-4729-4844-8562-bc5bcec732b5' : OAInteraction 
                        connect source ::> 'System Operational Context Activities'.'Provide Operating Power'
                        to  target ::> 'System Operational Context Activities'.'Purify Water' { 
                        @CapellaID { eid = "a11e8a62-4729-4844-8562-bc5bcec732b5"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Operating Power"; 
                        ref :>> exchangedItems =  ('Data'::'Operating Power'); 
                    }  
                    connection 'fea69e4d-5178-4d01-aace-6b41f31113d7' : OAInteraction 
                        connect source ::> 'System Operational Context Activities'.'Purify Water'
                        to  target ::> 'System Operational Context Activities'.'Store Water' { 
                        @CapellaID { eid = "fea69e4d-5178-4d01-aace-6b41f31113d7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                        ref :>> exchangedItems =  ('Data'::'Clean Water'); 
                    }  
                    connection '8fafff79-2bc4-45f2-a503-8170e12183af' : OAInteraction 
                        connect source ::> 'System Operational Context Activities'.'Store Water'
                        to  target ::> 'System Operational Context Activities'.'Distribute Water' { 
                        @CapellaID { eid = "8fafff79-2bc4-45f2-a503-8170e12183af"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                        ref :>> exchangedItems =  ('Data'::'Clean Water'); 
                    }  
                    connection '45223828-9783-4c4c-bea2-c95e739efd3c' : OAInteraction 
                        connect source ::> 'System Operational Context Activities'.'Purify Water'
                        to  target ::> 'System Operational Context Activities'.'Manage Waste' { 
                        @CapellaID { eid = "45223828-9783-4c4c-bea2-c95e739efd3c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Waste"; 
                        ref :>> exchangedItems =  ('Data'::'Waste'); 
                    }  
                    connection 'd00bc9c8-a563-420f-b72e-b7991d048230' : OAInteraction 
                        connect source ::> 'System Operational Context Activities'.'Distribute Water'
                        to  target ::> 'Actor and Entity Activities'.'Use Water' { 
                        @CapellaID { eid = "d00bc9c8-a563-420f-b72e-b7991d048230"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                        ref :>> exchangedItems =  ('Data'::'Clean Water'); 
                    }  
                    connection '70a4b5c7-4899-4145-8d1c-1218fc62149e' : OAInteraction 
                        connect source ::> 'Actor and Entity Activities'.'Maintain and Serivce System'
                        to  target ::> 'System Operational Context Activities'.'Allow maintenance and service' { 
                        @CapellaID { eid = "70a4b5c7-4899-4145-8d1c-1218fc62149e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                    }  
                    connection '3f4de4e1-987b-4cfa-84a4-74b95cfbb233' : OAInteraction 
                        connect source ::> 'Actor and Entity Activities'.'Install System'
                        to  target ::> 'System Operational Context Activities'.'Provide Deploymentability' { 
                        @CapellaID { eid = "3f4de4e1-987b-4cfa-84a4-74b95cfbb233"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                    }  
                    connection '2df12409-91df-4d25-88d2-33719264f944' : OAInteraction 
                        connect source ::> 'Actor and Entity Activities'.'Certify System'
                        to  target ::> 'System Operational Context Activities'.'Provide Deploymentability' { 
                        @CapellaID { eid = "2df12409-91df-4d25-88d2-33719264f944"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                    }  
                    item  'Actor and Entity Activities' : ItemPackage {
                        @PackageMeta {
                            type = "OperationalActivityPkg";
                        } 
                        @CapellaID { eid = "0ba4ee46-5304-4c87-8475-358fc9a94efb"; } 
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
                    } 
                    item  'System Operational Context Activities' : ItemPackage {
                        @PackageMeta {
                            type = "OperationalActivityPkg";
                        } 
                        @CapellaID { eid = "7e833957-69b3-4f24-90e1-6515d5052386"; } 
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
                    } 
                    ref :>> ownedFunctionalExchanges =  ('d1b646fb-b293-4582-a09f-0c543ea21f36',
                    'e25691cf-a326-4b93-b084-c875be4e957f',
                    'f3c522e5-67db-4dbc-acd2-01b71395a43f',
                    'a11e8a62-4729-4844-8562-bc5bcec732b5',
                    'fea69e4d-5178-4d01-aace-6b41f31113d7',
                    '8fafff79-2bc4-45f2-a503-8170e12183af',
                    '45223828-9783-4c4c-bea2-c95e739efd3c',
                    'd00bc9c8-a563-420f-b72e-b7991d048230',
                    '70a4b5c7-4899-4145-8d1c-1218fc62149e',
                    '3f4de4e1-987b-4cfa-84a4-74b95cfbb233',
                    '2df12409-91df-4d25-88d2-33719264f944'); 
                    ref :>> ownedOperationalActivityPkgs =  ('Actor and Entity Activities',
                    'System Operational Context Activities'); 
                }  
            } 
            package 'Operational Capabilities' {
                @PackageMeta {
                    type = "OperationalCapabilityPkg";
                } 
                @CapellaID { eid = "06acbc60-719f-4c1f-859f-5738e89e6571"; } 
                use case 'Provide Safe Drinking Water' : OperationalCapability { 
                    @CapellaID { eid = "720a92e9-c228-4247-b78b-5b2c12005fcb"; } 
                    ref action '53c349fa-87ce-4cb9-8a19-abbea8f153aa' = 'Operational Activities'::'Root Operational Activity'.'Test Chain - Provide Safe Drinking Water'; 
                    actor '9d99d81d-00ab-4071-a866-125de1563df6' = 'Operational Entities'::'Safe Drinking Water System'; 
                    actor 'f54386f4-fb2f-44da-b065-2fb6626adba0' = 'Operational Entities'::'Operator'; 
                    actor '088a509f-28a3-4bcd-b7f5-487ee90d7700' = 'Operational Entities'::'Water User'; 
                     
                }  
                use case 'Monitor System' : OperationalCapability { 
                    @CapellaID { eid = "2d381628-7d30-40b9-9355-f1bf7f56fe20"; } 
                    actor 'c35655dc-8e3c-4183-b43c-859af1775627' = 'Operational Entities'::'Water User'; 
                    actor 'c3e0193c-439a-4a32-8ee5-b46585798041' = 'Operational Entities'::'Safe Drinking Water System'; 
                }  
                use case 'Maintain and Service System' : OperationalCapability { 
                    @CapellaID { eid = "55c6f705-ec86-4859-8fa5-af0ef39321e4"; } 
                    actor 'fa1e6938-8b9a-4d43-a6eb-367df712b48d' = 'Operational Entities'::'Maintenance Personnel'; 
                    actor '698a29de-6a04-4a2d-992f-a2b04e8eec6c' = 'Operational Entities'::'Safe Drinking Water System'; 
                }  
                use case 'Deploy Safe Drinking Water System' : OperationalCapability { 
                    @CapellaID { eid = "253fb747-bcdb-47d0-ba8f-b424c579c539"; } 
                    actor 'f2d5bb60-dacb-485c-b8c1-b39df3040d02' = 'Operational Entities'::'Safe Drinking Water System'; 
                    actor 'fe3dcd7b-bd41-4ccf-9c26-df0974818b83' = 'Operational Entities'::'Deploymeny Personnel'; 
                    include 'Certify'; 
                    include 'Install'; 
                     
                }  
                use case 'Certify' : OperationalCapability { 
                    @CapellaID { eid = "d59d398e-b1a8-46bd-bce2-f6a6be5e8c66"; } 
                }  
                use case 'Install' : OperationalCapability { 
                    @CapellaID { eid = "fcbddee2-f8ac-400d-8cc2-be4964c5899c"; } 
                }  
            } 
        } 
        package 'System Analysis' {
            @PackageMeta {
                type = "SystemAnalysis";
            } 
            @CapellaID { eid = "f106fbe5-c7e6-49ed-a25d-b3cac11ba75e"; sid = "f106fbe5-c7e6-49ed-a25d-b3cac11ba75e"; } 
            package 'Structure' {
                @PackageMeta {
                    type = "SystemComponentPkg";
                } 
                @CapellaID { eid = "84da4f41-e45c-42d2-a48c-597837563691"; } 
                interface '45e6cd8f-7152-49bd-97f5-d368df46de3e' : ComponentExchange 
                    connect source ::> 'Water Source'.'CP 1'
                    to  target ::> 'Water Distiller'.'CP 1' { 
                    @CapellaID { eid = "45e6cd8f-7152-49bd-97f5-d368df46de3e"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '081d66d1-f034-467a-a355-c44abee78d7f' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'9c6bf30a-a7b0-452a-9cf1-39b59b4f1164'
                        to componentExchange ::> 'Structure'::'45e6cd8f-7152-49bd-97f5-d368df46de3e' { 
                        @CapellaID { eid = "081d66d1-f034-467a-a355-c44abee78d7f"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('081d66d1-f034-467a-a355-c44abee78d7f'); 
                    ref :>> convoyedInformations =  ('Data'::'Dirty Water'); 
                }  
                interface '857d0463-0f1a-451b-9fd5-8cbcf02917f9' : ComponentExchange 
                    connect source ::> 'Heat Source'.'CP 1'
                    to  target ::> 'Water Distiller'.'CP 2' { 
                    @CapellaID { eid = "857d0463-0f1a-451b-9fd5-8cbcf02917f9"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Heat Supply"; 
                    attribute :>> isOriented = false; 
                    allocation 'c4cf22f1-665d-4534-bbf6-24222c0c963c' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'64b15f15-9e6b-45c9-a99d-4a9fc7c96498'
                        to componentExchange ::> 'Structure'::'857d0463-0f1a-451b-9fd5-8cbcf02917f9' { 
                        @CapellaID { eid = "c4cf22f1-665d-4534-bbf6-24222c0c963c"; } 
                    }  
                    allocation '42f7fdc0-7065-42ba-a222-c0fbfc3df1af' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'848c6d70-a521-4e76-b37f-db1f66a7d33f'
                        to componentExchange ::> 'Structure'::'857d0463-0f1a-451b-9fd5-8cbcf02917f9' { 
                        @CapellaID { eid = "42f7fdc0-7065-42ba-a222-c0fbfc3df1af"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('c4cf22f1-665d-4534-bbf6-24222c0c963c',
                    '42f7fdc0-7065-42ba-a222-c0fbfc3df1af'); 
                    ref :>> convoyedInformations =  ('Data'::'Heat'); 
                }  
                interface '1eb7201c-b08f-403f-958b-00a4fd5430ac' : ComponentExchange 
                    connect source ::> 'Water Distiller'.'CP 3'
                    to  target ::> 'Water Distribution System'.'CP 1' { 
                    @CapellaID { eid = "1eb7201c-b08f-403f-958b-00a4fd5430ac"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Distribution Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'ee03bcb2-04a6-439a-82e2-5fae320bf3df' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'ac813313-bca0-4595-8f85-f383afb2777d'
                        to componentExchange ::> 'Structure'::'1eb7201c-b08f-403f-958b-00a4fd5430ac' { 
                        @CapellaID { eid = "ee03bcb2-04a6-439a-82e2-5fae320bf3df"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('ee03bcb2-04a6-439a-82e2-5fae320bf3df'); 
                    ref :>> convoyedInformations =  ('Data'::'Clean Water'); 
                }  
                interface '43f19a2c-0ace-49fe-b83c-8876490494cd' : ComponentExchange 
                    connect source ::> 'Water Distribution System'.'CP 2'
                    to  target ::> 'Water USer'.'CP 1' { 
                    @CapellaID { eid = "43f19a2c-0ace-49fe-b83c-8876490494cd"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Drinking Water Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'eeb36c74-8a11-4ceb-a3f9-d0fd3b71546a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'81f67204-9e0d-4e9a-ad8e-292405c3a9d3'
                        to componentExchange ::> 'Structure'::'43f19a2c-0ace-49fe-b83c-8876490494cd' { 
                        @CapellaID { eid = "eeb36c74-8a11-4ceb-a3f9-d0fd3b71546a"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('eeb36c74-8a11-4ceb-a3f9-d0fd3b71546a'); 
                    ref :>> convoyedInformations =  ('Data'::'Clean Water'); 
                }  
                interface 'b6a2fce9-3dec-4d88-8361-3f9d881092ba' : ComponentExchange 
                    connect source ::> 'Water Distiller'.'CP 4'
                    to  target ::> 'Waste Management System'.'CP 1' { 
                    @CapellaID { eid = "b6a2fce9-3dec-4d88-8361-3f9d881092ba"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Waste"; 
                    attribute :>> isOriented = false; 
                    ref :>> convoyedInformations =  ('Data'::'Sludge'); 
                }  
                interface '1a40bdef-2a11-40b2-ac2a-f1d6f47edb03' : ComponentExchange 
                    connect source ::> 'Operator'.'CP 1'
                    to  target ::> 'Water Source'.'CP 2' { 
                    @CapellaID { eid = "1a40bdef-2a11-40b2-ac2a-f1d6f47edb03"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Supply"; 
                    attribute :>> isOriented = false; 
                    allocation '6683be69-1bbe-4848-9f05-fb70b4bf9f3d' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'547d85ad-580b-4bc2-9bec-9b50ae8b362e'
                        to componentExchange ::> 'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03' { 
                        @CapellaID { eid = "6683be69-1bbe-4848-9f05-fb70b4bf9f3d"; } 
                    }  
                    allocation 'eded5a12-d7f0-45f0-801d-e85d7c5f03a2' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'918a6b1d-9e09-4b26-a687-074dfbc39431'
                        to componentExchange ::> 'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03' { 
                        @CapellaID { eid = "eded5a12-d7f0-45f0-801d-e85d7c5f03a2"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('6683be69-1bbe-4848-9f05-fb70b4bf9f3d',
                    'eded5a12-d7f0-45f0-801d-e85d7c5f03a2'); 
                }  
                interface '6500de7a-7c02-412b-ad04-591ca47983dc' : ComponentExchange 
                    connect source ::> 'Operator'.'CP 2'
                    to  target ::> 'Heat Source'.'CP 2' { 
                    @CapellaID { eid = "6500de7a-7c02-412b-ad04-591ca47983dc"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Operating Fuel"; 
                    attribute :>> isOriented = false; 
                    allocation 'f9b1785b-d41e-414c-8d53-2dfc3adb4354' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7'
                        to componentExchange ::> 'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc' { 
                        @CapellaID { eid = "f9b1785b-d41e-414c-8d53-2dfc3adb4354"; } 
                    }  
                    allocation '4d76f6a4-c43d-45c4-87eb-943916752ca4' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'System Functions'::'Root System Function'.'a54a5555-e490-4b1b-84e2-a4daf665e64e'
                        to componentExchange ::> 'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc' { 
                        @CapellaID { eid = "4d76f6a4-c43d-45c4-87eb-943916752ca4"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('f9b1785b-d41e-414c-8d53-2dfc3adb4354',
                    '4d76f6a4-c43d-45c4-87eb-943916752ca4'); 
                }  
                part 'Water Distiller' : SystemComponent { 
                    @CapellaID { eid = "d31ae82d-04dd-4807-885d-52fc30673887"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = false; 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Heat Water'.'inDirty Water'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('221326b4-96f9-4dbc-b0d7-67ae35e87eef'); 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Boil Water'.'FIP 1'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation 'de525f65-d33c-4cba-862e-523c30e0d18c' : PortAllocation
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Heat Water'.'inOperating Power'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('dfdea722-e377-46a7-82a1-3f46a7ff9762',
                        'de525f65-d33c-4cba-862e-523c30e0d18c'); 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                            to allocatingPort ::> 'CP 3'; 
                        ref :>> ownedPortAllocations =  ('e7458e5c-1e62-46d8-bbb9-90066d5d5b35'); 
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
                    state 'System State Machine' : StateMachine  { 
                        @CapellaID { eid = "ac21aa7f-bb0a-411a-bbb6-a8ea441725ec"; } 
                        attribute :>> isControlOperator = false; 
                    }  
                    allocation '27e8e563-7075-4bc0-a08d-8e95b68faf29' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Boil Water'
                        to component ::> 'Structure'::'Water Distiller' { 
                        @CapellaID { eid = "27e8e563-7075-4bc0-a08d-8e95b68faf29"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Boil Water' ; 
                    allocation 'cbbf4cd1-64de-4803-90e1-04de363988a4' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Condense Steam'
                        to component ::> 'Structure'::'Water Distiller' { 
                        @CapellaID { eid = "cbbf4cd1-64de-4803-90e1-04de363988a4"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Condense Steam' ; 
                    allocation 'e242affb-d660-4a2e-8443-14512f1e27ac' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Heat Water'
                        to component ::> 'Structure'::'Water Distiller' { 
                        @CapellaID { eid = "e242affb-d660-4a2e-8443-14512f1e27ac"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Heat Water' ; 
                    allocation '680baae6-02bd-4dcc-8b3b-a2f6f0aa0af3' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Drain Residue'
                        to component ::> 'Structure'::'Water Distiller' { 
                        @CapellaID { eid = "680baae6-02bd-4dcc-8b3b-a2f6f0aa0af3"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Drain Residue' ; 
                    ref :>> ownedConstraints =  ('ab0076a4-c75a-4b06-9821-6e3c02636ba5',
                    '15dd617a-390b-48ad-bdd8-abbcf272f109',
                    '0caa49f0-156c-4a46-a2b9-6199381dcee7',
                    'f5f107ad-ed4b-4a9d-9e16-73053ad98775',
                    '72ae579c-362d-44ff-8112-ec01e561a701'); 
                    ref :>> ownedStateMachines =  ('System State Machine'); 
                    ref :>> ownedFunctionalAllocation =  ('27e8e563-7075-4bc0-a08d-8e95b68faf29',
                    'cbbf4cd1-64de-4803-90e1-04de363988a4',
                    'e242affb-d660-4a2e-8443-14512f1e27ac',
                    '680baae6-02bd-4dcc-8b3b-a2f6f0aa0af3'); 
                }  
                part 'Operator' : SystemComponent { 
                    @CapellaID { eid = "d589117e-dace-499a-bf25-a2f7517239c6"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Operate Distiller'.'outWater Control'
                            to allocatingPort ::> 'CP 1'; 
                        ref allocation '425a0154-5f18-45fe-845c-3db308013284' : PortAllocation
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Tend Water Source'.'FOP 1'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('1344f9d5-317e-468f-a0af-20b486194d9e',
                        '425a0154-5f18-45fe-845c-3db308013284'); 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Tend Heat Source'.'FOP 1'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation '6e2659a3-27d4-4ff8-8e24-6a4c912f2e92' : PortAllocation
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Operate Distiller'.'outPower Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('cb1cf033-e0f6-486d-b4f8-c91ffff3eb68',
                        '6e2659a3-27d4-4ff8-8e24-6a4c912f2e92'); 
                    }  
                    allocation 'a753723c-e1d0-45e5-b395-cb06e1b6f967' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Operate Distiller'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "a753723c-e1d0-45e5-b395-cb06e1b6f967"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Operate Distiller' ; 
                    allocation '1809d5f9-ceab-432b-887a-a6a600ea5a51' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Tend Heat Source'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "1809d5f9-ceab-432b-887a-a6a600ea5a51"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Tend Heat Source' ; 
                    allocation 'fa303449-e086-435f-b937-2a562fa55c34' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Tend Water Source'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "fa303449-e086-435f-b937-2a562fa55c34"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Tend Water Source' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('a753723c-e1d0-45e5-b395-cb06e1b6f967',
                    '1809d5f9-ceab-432b-887a-a6a600ea5a51',
                    'fa303449-e086-435f-b937-2a562fa55c34'); 
                }  
                part 'Water Source' : SystemComponent { 
                    @CapellaID { eid = "c7773738-df40-4fa8-9bd8-80b25529373e"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Provide Water'.'outDirty Water'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('fd795eaf-b27c-4ea2-ae1a-59c20dde8604'); 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Provide Water'.'inWater Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation '090b51a0-39de-4e80-90b9-b277e9f978d9' : PortAllocation
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Provide Water'.'FIP 2'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('d2a2f3c7-fad7-4d0a-a1b0-961d2d2e410b',
                        '090b51a0-39de-4e80-90b9-b277e9f978d9'); 
                    }  
                    allocation '9dcc6740-0804-4871-a977-6eaaa8794791' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Provide Water'
                        to component ::> 'Structure'::'Water Source' { 
                        @CapellaID { eid = "9dcc6740-0804-4871-a977-6eaaa8794791"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Provide Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('9dcc6740-0804-4871-a977-6eaaa8794791'); 
                }  
                part 'Heat Source' : SystemComponent { 
                    @CapellaID { eid = "31168827-c30f-4f2c-bb66-c0585875d400"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Generate Heat'.'FOP 2'
                            to allocatingPort ::> 'CP 1'; 
                        ref allocation 'b42ba523-0f22-4a18-aad7-437143d24bc4' : PortAllocation
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Generate Heat'.'outOperating Power'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('2befc300-d658-4a7b-8005-bfcd545ef79c',
                        'b42ba523-0f22-4a18-aad7-437143d24bc4'); 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Generate Heat'.'FIP 2'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation '63555d19-4f92-4121-bb46-0fdd05d3f523' : PortAllocation
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Generate Heat'.'inPower Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('82089023-19fe-48cf-bd25-49b2c0fbb5cb',
                        '63555d19-4f92-4121-bb46-0fdd05d3f523'); 
                    }  
                    allocation 'd7185c34-9215-4cd2-985d-30015cd45b55' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Generate Heat'
                        to component ::> 'Structure'::'Heat Source' { 
                        @CapellaID { eid = "d7185c34-9215-4cd2-985d-30015cd45b55"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Generate Heat' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('d7185c34-9215-4cd2-985d-30015cd45b55'); 
                }  
                part 'Water Distribution System' : SystemComponent { 
                    @CapellaID { eid = "b613413d-6fdf-4b55-986d-6943332e0521"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Store Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('50088cb8-393a-4696-ad6c-4a2f935c3e7a'); 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Distribute Clean Water'.'outSafe Drinking Water'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('75738201-f633-47f8-801d-9df81642edec'); 
                    }  
                    allocation 'a84474b5-2910-4d18-b8e5-522165c06214' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Store Clean Water'
                        to component ::> 'Structure'::'Water Distribution System' { 
                        @CapellaID { eid = "a84474b5-2910-4d18-b8e5-522165c06214"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Store Clean Water' ; 
                    allocation '16ba6e4b-4e34-4677-8ddd-b6cda8dc16de' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Distribute Clean Water'
                        to component ::> 'Structure'::'Water Distribution System' { 
                        @CapellaID { eid = "16ba6e4b-4e34-4677-8ddd-b6cda8dc16de"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Distribute Clean Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('a84474b5-2910-4d18-b8e5-522165c06214',
                    '16ba6e4b-4e34-4677-8ddd-b6cda8dc16de'); 
                }  
                part 'Water USer' : SystemComponent { 
                    @CapellaID { eid = "711dc360-add7-41f5-a7a7-01233e18a7a5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Get Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('657639a4-4597-4a9b-94e6-8d0d20feefc4'); 
                    }  
                    allocation 'c56d4781-7575-4ab4-bee0-ae4914e7c151' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Get Clean Water'
                        to component ::> 'Structure'::'Water USer' { 
                        @CapellaID { eid = "c56d4781-7575-4ab4-bee0-ae4914e7c151"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Get Clean Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('c56d4781-7575-4ab4-bee0-ae4914e7c151'); 
                }  
                part 'Waste Management System' : SystemComponent { 
                    @CapellaID { eid = "152c7606-aafb-4142-b07a-15c70958f7a8"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isDataComponent = false; 
                    attribute :>> isHuman = true; 
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
                    allocation '7b56a037-aa8a-4727-a197-0e5fd94360df' : ComponentFunctionalAllocation
                        allocate function ::> 'System Functions'::'Root System Function'.'Actor Functions'.'Discharge Residue'
                        to component ::> 'Structure'::'Waste Management System' { 
                        @CapellaID { eid = "7b56a037-aa8a-4727-a197-0e5fd94360df"; } 
                    } 
                    perform 'System Functions'::'Root System Function'.'Actor Functions'.'Discharge Residue' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('7b56a037-aa8a-4727-a197-0e5fd94360df'); 
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
                part 'eb1dc3cf-13a4-4772-bca3-73c8242cdbfc' : CPart :> 'Water Distiller'  { 
                    @CapellaID { eid = "eb1dc3cf-13a4-4772-bca3-73c8242cdbfc"; } 
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
                part '9a84ea92-7b16-4606-b9ea-1e13e0a4cebe' : CPart :> 'Operator'  { 
                    @CapellaID { eid = "9a84ea92-7b16-4606-b9ea-1e13e0a4cebe"; } 
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
                part 'a920ab03-fe38-4563-8d3f-8cd8a221a405' : CPart :> 'Water Source'  { 
                    @CapellaID { eid = "a920ab03-fe38-4563-8d3f-8cd8a221a405"; } 
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
                part '8c6ce6ed-8a57-496f-a7a3-49be1b0b5eb1' : CPart :> 'Heat Source'  { 
                    @CapellaID { eid = "8c6ce6ed-8a57-496f-a7a3-49be1b0b5eb1"; } 
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
                part '77b61d9c-dd47-4b5a-a462-ccf19c66d440' : CPart :> 'Water Distribution System'  { 
                    @CapellaID { eid = "77b61d9c-dd47-4b5a-a462-ccf19c66d440"; } 
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
                part '66de44b9-4e31-4e75-afcc-c86f01f011f1' : CPart :> 'Water USer'  { 
                    @CapellaID { eid = "66de44b9-4e31-4e75-afcc-c86f01f011f1"; } 
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
                part 'd74be5ef-13bb-4b8d-8591-cd86a2d54d7b' : CPart :> 'Waste Management System'  { 
                    @CapellaID { eid = "d74be5ef-13bb-4b8d-8591-cd86a2d54d7b"; } 
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
                part 'eddcb9b0-94f5-4fe3-8085-fe240c2c4edf' : CPart :> 'A 7'  { 
                    @CapellaID { eid = "eddcb9b0-94f5-4fe3-8085-fe240c2c4edf"; } 
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
                part '18156b54-a2df-43f4-923e-73c7477813a1' : CPart :> 'A 8'  { 
                    @CapellaID { eid = "18156b54-a2df-43f4-923e-73c7477813a1"; } 
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
            package 'Interfaces' {
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
                        allocate allocatedItem ::> 'ExchangeItem 1'
                        to allocatingInterface ::> 'Interfaces'::'Interface 1'; 
                    allocation 'b1881143-0ce5-4157-b688-e21e2c018165' : ExchangeItemAllocation
                        allocate allocatedItem ::> 'ExchangeItem 2'
                        to allocatingInterface ::> 'Interfaces'::'Interface 1'; 
                    ref :>> ownedExchangeItemAllocations =  ('836c2904-97e5-4671-b9a7-01dbbfd0227f',
                    'b1881143-0ce5-4157-b688-e21e2c018165'); 
                }  
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "5dc71279-2a3d-4d75-b08d-85a75cafd753"; sid = "5dc71279-2a3d-4d75-b08d-85a75cafd753"; } 
                package 'Predefined Types' {
                    @PackageMeta {
                        type = "DataPkg";
                    } 
                    @CapellaID { eid = "b0df2a0e-4552-4748-ab72-0c3f5e90e395"; } 
                } 
                item 'Dirty H2O' : Class  :> 'Operational Analysis'::'Data'::'H2O' { 
                    @CapellaID { eid = "1de9fc06-b0a9-49e3-b732-6bfb488a3d50"; sid = "1de9fc06-b0a9-49e3-b732-6bfb488a3d50"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                     
                }  
                item 'Steam' : Class  :> 'Operational Analysis'::'Data'::'H2O' { 
                    @CapellaID { eid = "eb9e6454-d420-4c54-a6c6-b8a6f21f5640"; sid = "eb9e6454-d420-4c54-a6c6-b8a6f21f5640"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                     
                }  
                item 'Clean H2O' : Class  :> 'Operational Analysis'::'Data'::'H2O' { 
                    @CapellaID { eid = "3c043976-fa48-4330-b7f9-ab5bb8ca521a"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                     
                }  
                item 'Heat' : Class  { 
                    @CapellaID { eid = "8b15ae46-cdb3-4874-89a3-b70e7093f748"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'Residue' : Class  { 
                    @CapellaID { eid = "01a07fc8-96e3-4866-a846-c76dfce0bac5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
                item 'HMI Control' : Class  { 
                    @CapellaID { eid = "6667cdec-c104-4412-845a-5a3ac757c6b5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isFinal = false; 
                    attribute :>> isPrimitive = false; 
                }  
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
                         
                         
                        ref :>> abstractType = 'Dirty H2O';
                    } 
                    ref :>> ownedElements =  ('dirty water'); 
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
                    ref :>> ownedElements =  ('steam'); 
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
                         
                         
                        ref :>> abstractType = 'Clean H2O';
                    } 
                    ref :>> ownedElements =  ('clean water'); 
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
                         
                         
                        ref :>> abstractType = 'Residue';
                    } 
                    ref :>> ownedElements =  ('sludge'); 
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
                    ref :>> ownedElements =  ('heat'); 
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
                         
                         
                        ref :>> abstractType = 'HMI Control';
                    } 
                    ref :>> ownedElements =  ('water supply control'); 
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
                         
                         
                        ref :>> abstractType = 'HMI Control';
                    } 
                    ref :>> ownedElements =  ('heat control'); 
                }  
                attribute <'deg C'> 'deg C' : ARCADIAUnit; 
                attribute <'gm/s'> 'gm/s' : ARCADIAUnit; 
                attribute <'cal/gm'> 'cal/gm' : ARCADIAUnit; 
                attribute <'cal/s'> 'cal/s' : ARCADIAUnit; 
                attribute <'cal/(gm*dec C)'> 'cal/(gm*dec C)' : ARCADIAUnit; 
                attribute <'Unit'> 'Unit' : ARCADIAUnit; 
            } 
            package 'System Functions' {
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
                    action 'Test Chain - Water Distillation and Distribution' : FunctionalChain  { 
                        @CapellaID { eid = "a85c9767-92fc-48c8-a159-f8bccd8875fd"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '4e2fc1a4-10d2-4293-bc45-abf3edc64fed' = 'Actor Functions'.'Operate Distiller'; 
                        connection '2de06398-2414-41a1-af64-82f32e6c0899' : FunctionalChainInvolvementLink 
                            connect source ::> '4e2fc1a4-10d2-4293-bc45-abf3edc64fed'
                            to  target ::> '702345ab-f505-4115-98f2-18eb734127f8' {

                                ref :>> involved = '547d85ad-580b-4bc2-9bec-9b50ae8b362e';

                            } 
                        ref action '702345ab-f505-4115-98f2-18eb734127f8' = 'Actor Functions'.'Provide Water'; 
                        connection '8cd7a0f0-98ac-4f38-ae70-b53052ad002e' : FunctionalChainInvolvementLink 
                            connect source ::> '4e2fc1a4-10d2-4293-bc45-abf3edc64fed'
                            to  target ::> 'd87df202-3094-4756-ba48-613ac109e742' {

                                ref :>> involved = 'a54a5555-e490-4b1b-84e2-a4daf665e64e';

                            } 
                        ref action 'd87df202-3094-4756-ba48-613ac109e742' = 'Actor Functions'.'Generate Heat'; 
                        connection '8680608d-4b70-49f1-b6d9-08457f9305a8' : FunctionalChainInvolvementLink 
                            connect source ::> '702345ab-f505-4115-98f2-18eb734127f8'
                            to  target ::> '430094c7-3e78-4c63-a66a-d9241d40d8c6' {

                                ref :>> involved = '9c6bf30a-a7b0-452a-9cf1-39b59b4f1164';

                            } 
                        connection '931cef19-8458-4168-be83-74d7d7ebc50c' : FunctionalChainInvolvementLink 
                            connect source ::> 'd87df202-3094-4756-ba48-613ac109e742'
                            to  target ::> '430094c7-3e78-4c63-a66a-d9241d40d8c6' {

                                ref :>> involved = '848c6d70-a521-4e76-b37f-db1f66a7d33f';

                            } 
                        connection 'db13d494-7d46-439b-91c6-d894ddafbb59' : FunctionalChainInvolvementLink 
                            connect source ::> '4b830b6a-de00-4826-a24a-1c8e47b35f5c'
                            to  target ::> '1684f307-a032-4fb9-9bda-7b5b43d5c58c' {

                                ref :>> involved = 'ac813313-bca0-4595-8f85-f383afb2777d';

                            } 
                        ref action '1684f307-a032-4fb9-9bda-7b5b43d5c58c' = 'Actor Functions'.'Store Clean Water'; 
                        connection '104e0e50-69c3-4b19-b5f5-0611ddd6e907' : FunctionalChainInvolvementLink 
                            connect source ::> '1684f307-a032-4fb9-9bda-7b5b43d5c58c'
                            to  target ::> 'd9305b1a-7497-4e36-b431-558e63134620' {

                                ref :>> involved = '3a30895d-4a5b-4709-8ffe-efaac4190c94';

                            } 
                        ref action 'd9305b1a-7497-4e36-b431-558e63134620' = 'Actor Functions'.'Distribute Clean Water'; 
                        connection '562955a3-da1f-42be-8519-b73f571b9a04' : FunctionalChainInvolvementLink 
                            connect source ::> 'd9305b1a-7497-4e36-b431-558e63134620'
                            to  target ::> '12b6018a-31de-49a7-8963-4af9692a7a50' {

                                ref :>> involved = '81f67204-9e0d-4e9a-ad8e-292405c3a9d3';

                            } 
                        ref action '12b6018a-31de-49a7-8963-4af9692a7a50' = 'Actor Functions'.'Get Clean Water'; 
                        ref action '430094c7-3e78-4c63-a66a-d9241d40d8c6' = 'System Functions'.'Distill Water'.'Heat Water'; 
                        ref action '4b830b6a-de00-4826-a24a-1c8e47b35f5c' = 'System Functions'.'Distill Water'.'Condense Steam'; 
                        ref action '4f67ed66-76ec-4e96-8ac7-65428a433eab' = 'System Functions'.'Distill Water'.'Boil Water'; 
                        connection 'bb3bb12b-e951-4bd5-89d1-5abf8b25f954' : FunctionalChainInvolvementLink 
                            connect source ::> '430094c7-3e78-4c63-a66a-d9241d40d8c6'
                            to  target ::> '4f67ed66-76ec-4e96-8ac7-65428a433eab' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'7e19530c-f0f6-4f68-a246-25a824431ce4';

                            } 
                        connection '3c0b4b65-0591-4e71-b77c-9101b8cef2dd' : FunctionalChainInvolvementLink 
                            connect source ::> '4f67ed66-76ec-4e96-8ac7-65428a433eab'
                            to  target ::> 'd4c6dbff-a9ba-4950-9d41-5e5c88abf34a' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'1fb9e95d-b24c-4807-92c7-7b1a0c42c14e';

                            } 
                        ref action 'fab1701c-c7d1-4ba5-a89f-85c524df833c' = 'Actor Functions'.'Discharge Residue'; 
                        connection '3e63a3fa-dd28-4f0a-82bf-ec278c69eec9' : FunctionalChainInvolvementLink 
                            connect source ::> 'd4c6dbff-a9ba-4950-9d41-5e5c88abf34a'
                            to  target ::> 'fab1701c-c7d1-4ba5-a89f-85c524df833c' {

                                ref :>> involved = '8682b777-71ab-4c88-afb8-9fc1d147ef95';

                            } 
                        connection 'dba1b836-43fe-4bf4-affe-ccf4d2b82778' : FunctionalChainInvolvementLink 
                            connect source ::> 'd87df202-3094-4756-ba48-613ac109e742'
                            to  target ::> '4f67ed66-76ec-4e96-8ac7-65428a433eab' {

                                ref :>> involved = '64b15f15-9e6b-45c9-a99d-4a9fc7c96498';

                            } 
                        ref action 'd4c6dbff-a9ba-4950-9d41-5e5c88abf34a' = 'System Functions'.'Distill Water'.'Drain Residue'; 
                        connection '19a51382-545b-4bb5-9dd0-0eeb2295579c' : FunctionalChainInvolvementLink 
                            connect source ::> '4f67ed66-76ec-4e96-8ac7-65428a433eab'
                            to  target ::> '4b830b6a-de00-4826-a24a-1c8e47b35f5c' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'560929ef-3d6b-436b-a8fe-65a61de8c3ca';

                            } 
                        ref action 'b4889caa-f53c-41ca-a245-efa7f940b901' = 'System Functions'.'Distill Water'.'Heat Water'; 
                        connection 'fddf95b5-9c62-429d-9b3a-202d5d3797b7' : FunctionalChainInvolvementLink 
                            connect source ::> '4b830b6a-de00-4826-a24a-1c8e47b35f5c'
                            to  target ::> 'b4889caa-f53c-41ca-a245-efa7f940b901' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'d76fe349-15dc-4981-84a7-14aa89282482';

                            } 
                         
                    }  
                    action 'Maintain System' : FunctionalChain  { 
                        @CapellaID { eid = "e6dd4046-a534-4d0e-9d93-1187e29268b3"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '945f832c-9716-4443-ad58-23772c7c6e1c' = 'System Functions'.'Maintain and Serivce System'; 
                        connection '636aec38-4430-436e-ac2c-adfc690f1315' : FunctionalChainInvolvementLink 
                            connect source ::> '945f832c-9716-4443-ad58-23772c7c6e1c'
                            to  target ::> 'd980f9b1-1eab-4384-9a66-46f8347a6e6b' {

                                ref :>> involved = '31c9484d-7da6-47b5-a0ab-6be7393929f7';

                            } 
                        ref action 'd980f9b1-1eab-4384-9a66-46f8347a6e6b' = 'System Functions'.'Allow maintenance and service'; 
                         
                    }  
                    constraint '89d4dd11-21a7-45d7-b43a-f09a9fe19329' : CapellaConstraint { 
                        language "capella:linkedText" /*  */
                        @CapellaID { eid = "89d4dd11-21a7-45d7-b43a-f09a9fe19329"; }
                        
                    } 
                    dependency 'df5ad750-aa57-44c0-abec-75fdd9de87de'
                        from 'Test Chain - Water Distillation and Distribution'::'4e2fc1a4-10d2-4293-bc45-abf3edc64fed'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'40118317-4e8f-487f-8b1d-41cb1f6b9e38' { 
                        @TransfoLink { 
                            @CapellaID { eid = "df5ad750-aa57-44c0-abec-75fdd9de87de"; } 
                        }  
                    }  
                    dependency 'a278d3d8-cb60-4a76-8f9d-87ed933d8fb7'
                        from 'Test Chain - Water Distillation and Distribution'::'2de06398-2414-41a1-af64-82f32e6c0899'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'71be6fcb-9c99-4dbb-a115-77da6a7e9256' { 
                        @TransfoLink { 
                            @CapellaID { eid = "a278d3d8-cb60-4a76-8f9d-87ed933d8fb7"; } 
                        }  
                    }  
                    dependency 'fff101ad-a523-4f66-91cd-3be441d78247'
                        from 'Test Chain - Water Distillation and Distribution'::'702345ab-f505-4115-98f2-18eb734127f8'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'0de07162-42ac-4279-9349-8a89a103e518' { 
                        @TransfoLink { 
                            @CapellaID { eid = "fff101ad-a523-4f66-91cd-3be441d78247"; } 
                        }  
                    }  
                    dependency '59de6bdc-1dcb-43e3-8bf8-398b21a77c28'
                        from 'Test Chain - Water Distillation and Distribution'::'8cd7a0f0-98ac-4f38-ae70-b53052ad002e'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'b6a6d0d0-f7b7-4895-b898-af50087989c1' { 
                        @TransfoLink { 
                            @CapellaID { eid = "59de6bdc-1dcb-43e3-8bf8-398b21a77c28"; } 
                        }  
                    }  
                    dependency '68f2532e-de18-44e8-8072-768627d93233'
                        from 'Test Chain - Water Distillation and Distribution'::'d87df202-3094-4756-ba48-613ac109e742'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'f005d5ac-e637-4ea3-9d3c-dcda1dafbd21' { 
                        @TransfoLink { 
                            @CapellaID { eid = "68f2532e-de18-44e8-8072-768627d93233"; } 
                        }  
                    }  
                    dependency '20bda061-31b0-4270-be89-5a2cfe2fb57d'
                        from 'Test Chain - Water Distillation and Distribution'::'8680608d-4b70-49f1-b6d9-08457f9305a8'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'d823c7d9-07cc-4831-96cb-fbf04d8b8561' { 
                        @TransfoLink { 
                            @CapellaID { eid = "20bda061-31b0-4270-be89-5a2cfe2fb57d"; } 
                        }  
                    }  
                    dependency 'bb346f98-ea64-459e-930e-8656fa164ebd'
                        from 'Maintain System'::'945f832c-9716-4443-ad58-23772c7c6e1c'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Maintain System'::'523ce65d-bd19-46a3-a490-c730adfbc0a5' { 
                        @TransfoLink { 
                            @CapellaID { eid = "bb346f98-ea64-459e-930e-8656fa164ebd"; } 
                        }  
                    }  
                    dependency '98565062-d15d-4c68-b9aa-73b646e88319'
                        from 'Test Chain - Water Distillation and Distribution'::'931cef19-8458-4168-be83-74d7d7ebc50c'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'339f70f8-e163-44f3-90bd-a175ef771e27' { 
                        @TransfoLink { 
                            @CapellaID { eid = "98565062-d15d-4c68-b9aa-73b646e88319"; } 
                        }  
                    }  
                    dependency '1ecd6063-8d60-4fce-ad0c-94f4cfd5dfb6'
                        from 'Test Chain - Water Distillation and Distribution'::'db13d494-7d46-439b-91c6-d894ddafbb59'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'39e94c61-0907-4d85-a99c-19c0a94cc9e5' { 
                        @TransfoLink { 
                            @CapellaID { eid = "1ecd6063-8d60-4fce-ad0c-94f4cfd5dfb6"; } 
                        }  
                    }  
                    dependency 'ca0c1d6c-0718-4a7c-b045-57f1f263e426'
                        from 'Test Chain - Water Distillation and Distribution'::'1684f307-a032-4fb9-9bda-7b5b43d5c58c'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'ec8d8907-4122-41a9-9c47-b6fce9a50bc3' { 
                        @TransfoLink { 
                            @CapellaID { eid = "ca0c1d6c-0718-4a7c-b045-57f1f263e426"; } 
                        }  
                    }  
                    dependency '501d82b4-a17a-41c5-be1c-1d740c5f1626'
                        from 'Maintain System'::'636aec38-4430-436e-ac2c-adfc690f1315'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Maintain System'::'1fefa07e-8eac-49ff-9d0b-9f981b8e86fd' { 
                        @TransfoLink { 
                            @CapellaID { eid = "501d82b4-a17a-41c5-be1c-1d740c5f1626"; } 
                        }  
                    }  
                    dependency '52eb7a1b-392b-4362-9aaf-55ff8c4097f4'
                        from 'Maintain System'::'d980f9b1-1eab-4384-9a66-46f8347a6e6b'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Maintain System'::'0b0b96e4-5a0c-4d61-978c-4d919321865d' { 
                        @TransfoLink { 
                            @CapellaID { eid = "52eb7a1b-392b-4362-9aaf-55ff8c4097f4"; } 
                        }  
                    }  
                    dependency '016ba7b5-58f7-4b16-a188-4f6f45641ce3'
                        from 'Test Chain - Water Distillation and Distribution'::'104e0e50-69c3-4b19-b5f5-0611ddd6e907'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'266299e0-89b1-4c81-94a1-c293e8caa580' { 
                        @TransfoLink { 
                            @CapellaID { eid = "016ba7b5-58f7-4b16-a188-4f6f45641ce3"; } 
                        }  
                    }  
                    dependency 'da359df1-4746-42c6-a9d5-906c1e33fa41'
                        from 'Test Chain - Water Distillation and Distribution'::'d9305b1a-7497-4e36-b431-558e63134620'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'2c0adb83-1789-4784-9013-63348055d737' { 
                        @TransfoLink { 
                            @CapellaID { eid = "da359df1-4746-42c6-a9d5-906c1e33fa41"; } 
                        }  
                    }  
                    dependency 'c425e237-1e31-4c8f-826e-d1df712b0c9c'
                        from 'Test Chain - Water Distillation and Distribution'::'562955a3-da1f-42be-8519-b73f571b9a04'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'ae7a6731-f104-4ec5-b2e7-9fc44613d047' { 
                        @TransfoLink { 
                            @CapellaID { eid = "c425e237-1e31-4c8f-826e-d1df712b0c9c"; } 
                        }  
                    }  
                    dependency '8f61b67b-88b3-4f48-b599-ee2c6d6089a7'
                        from 'Test Chain - Water Distillation and Distribution'::'12b6018a-31de-49a7-8963-4af9692a7a50'
                        to  'Operational Analysis'::'Operational Activities'::'Root Operational Activity'::'Test Chain - Provide Safe Drinking Water'::'ef715558-ae56-4b66-81e9-c949747faccc' { 
                        @TransfoLink { 
                            @CapellaID { eid = "8f61b67b-88b3-4f48-b599-ee2c6d6089a7"; } 
                        }  
                    }  
                    interface '547d85ad-580b-4bc2-9bec-9b50ae8b362e' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Operate Distiller'.'outWater Control'
                        to target ::> 'Actor Functions'.'Provide Water'.'inWater Control' { 
                        @CapellaID { eid = "547d85ad-580b-4bc2-9bec-9b50ae8b362e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Supply"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Water Supply Control'); 
                    }  
                    interface 'a54a5555-e490-4b1b-84e2-a4daf665e64e' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Operate Distiller'.'outPower Control'
                        to target ::> 'Actor Functions'.'Generate Heat'.'inPower Control' { 
                        @CapellaID { eid = "a54a5555-e490-4b1b-84e2-a4daf665e64e"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat Supply"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Power Supply Control'); 
                    }  
                    interface '9c6bf30a-a7b0-452a-9cf1-39b59b4f1164' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Provide Water'.'outDirty Water'
                        to target ::> 'System Functions'.'Distill Water'.'Heat Water'.'inDirty Water' { 
                        @CapellaID { eid = "9c6bf30a-a7b0-452a-9cf1-39b59b4f1164"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '848c6d70-a521-4e76-b37f-db1f66a7d33f' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Generate Heat'.'outOperating Power'
                        to target ::> 'System Functions'.'Distill Water'.'Heat Water'.'inOperating Power' { 
                        @CapellaID { eid = "848c6d70-a521-4e76-b37f-db1f66a7d33f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Operating Power',
                        'Data'::'Heat Control'); 
                    }  
                    interface 'ac813313-bca0-4595-8f85-f383afb2777d' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Store Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "ac813313-bca0-4595-8f85-f383afb2777d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Distilled Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '3a30895d-4a5b-4709-8ffe-efaac4190c94' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Store Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Distribute Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "3a30895d-4a5b-4709-8ffe-efaac4190c94"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '81f67204-9e0d-4e9a-ad8e-292405c3a9d3' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Distribute Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Get Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "81f67204-9e0d-4e9a-ad8e-292405c3a9d3"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '31c9484d-7da6-47b5-a0ab-6be7393929f7' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Maintain and Serivce System'.'outMaintainance'
                        to target ::> 'System Functions'.'Allow maintenance and service'.'inMaintainance' { 
                        @CapellaID { eid = "31c9484d-7da6-47b5-a0ab-6be7393929f7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                         
                    }  
                    interface '0e87d851-a1e3-410e-931e-8e9b01320d09' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Install System'.'outInstallation'
                        to target ::> 'System Functions'.'Provide Deploymentability'.'inInstallation' { 
                        @CapellaID { eid = "0e87d851-a1e3-410e-931e-8e9b01320d09"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                         
                    }  
                    interface '7fe37648-029a-4dc9-959e-79098d30f707' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Certify System'.'outCertification'
                        to target ::> 'System Functions'.'Provide Deploymentability'.'inCertification' { 
                        @CapellaID { eid = "7fe37648-029a-4dc9-959e-79098d30f707"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                         
                    }  
                    interface '64b15f15-9e6b-45c9-a99d-4a9fc7c96498' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Generate Heat'.'FOP 2'
                        to target ::> 'System Functions'.'Distill Water'.'Boil Water'.'FIP 1' { 
                        @CapellaID { eid = "64b15f15-9e6b-45c9-a99d-4a9fc7c96498"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('Data'::'Heat Control'); 
                    }  
                    interface '8682b777-71ab-4c88-afb8-9fc1d147ef95' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Drain Residue'.'FOP 2'
                        to target ::> 'Actor Functions'.'Discharge Residue'.'FIP 1' { 
                        @CapellaID { eid = "8682b777-71ab-4c88-afb8-9fc1d147ef95"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Residue"; 
                         
                        ref :>> exchangedItems =  ('Data'::'Sludge'); 
                    }  
                    interface '918a6b1d-9e09-4b26-a687-074dfbc39431' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Tend Water Source'.'FOP 1'
                        to target ::> 'Actor Functions'.'Provide Water'.'FIP 2' { 
                        @CapellaID { eid = "918a6b1d-9e09-4b26-a687-074dfbc39431"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Water"; 
                         
                        ref :>> exchangedItems =  ('Data'::'Dirty Water'); 
                    }  
                    interface 'de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Tend Heat Source'.'FOP 1'
                        to target ::> 'Actor Functions'.'Generate Heat'.'FIP 2' { 
                        @CapellaID { eid = "de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Fuel"; 
                         
                        ref :>> exchangedItems =  ('Data'::'Heat Control'); 
                    }  
                    item  'System Functions' : ItemPackage {
                        @PackageMeta {
                            type = "SystemFunctionPkg";
                        } 
                        @CapellaID { eid = "09450030-1719-49ac-bb28-8b3db2642e69"; } 
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
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "bf0e830c-cf24-49e9-a8fd-1ea7982bba76"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('inOperating Power',
                                'inDirty Water',
                                'FIP 3'); 
                                 
                                ref :>> outputs =  ('FOP 1'); 
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
                                ref :>> inputs =  ('FIP 1',
                                'FIP 2'); 
                                 
                                ref :>> outputs =  ('FOP 1',
                                'FOP 2'); 
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
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "dbfdab80-9a69-4e48-afa3-4675fe9536e3"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
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
                                ref :>> inputs =  ('FIP 1'); 
                                 
                                ref :>> outputs =  ('outSafe Drinking Water',
                                'FOP 2'); 
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
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "55d8e039-50cb-43bf-8b80-d1ddad40e76d"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "493f8fb8-8ac3-4543-9432-a75fc7bff301"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                 
                                ref :>> outputs =  ('FOP 2'); 
                            }  
                            interface '7e19530c-f0f6-4f68-a246-25a824431ce4' : FunctionalExchange 
                                connect source ::> 'Heat Water'.'FOP 1'
                                to target ::> 'Boil Water'.'FIP 2' { 
                                @CapellaID { eid = "7e19530c-f0f6-4f68-a246-25a824431ce4"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Hot Water"; 
                                 
                                ref :>> exchangedItems =  ('Data'::'Dirty Water',
                                'Data'::'Clean Water'); 
                            }  
                            interface '1fb9e95d-b24c-4807-92c7-7b1a0c42c14e' : FunctionalExchange 
                                connect source ::> 'Boil Water'.'FOP 1'
                                to target ::> 'Drain Residue'.'FIP 1' { 
                                @CapellaID { eid = "1fb9e95d-b24c-4807-92c7-7b1a0c42c14e"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Sludge"; 
                                 
                                ref :>> exchangedItems =  ('Data'::'Sludge'); 
                            }  
                            interface '560929ef-3d6b-436b-a8fe-65a61de8c3ca' : FunctionalExchange 
                                connect source ::> 'Boil Water'.'FOP 2'
                                to target ::> 'Condense Steam'.'FIP 1' { 
                                @CapellaID { eid = "560929ef-3d6b-436b-a8fe-65a61de8c3ca"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Steam"; 
                                 
                            }  
                            interface 'd76fe349-15dc-4981-84a7-14aa89282482' : FunctionalExchange 
                                connect source ::> 'Condense Steam'.'FOP 2'
                                to target ::> 'Heat Water'.'FIP 3' { 
                                @CapellaID { eid = "d76fe349-15dc-4981-84a7-14aa89282482"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Recovered Heat"; 
                                 
                                ref :>> exchangedItems =  ('Data'::'Heat'); 
                            }  
                            out port 'outWaste' : FunctionOutputPort  { 
                                @CapellaID { eid = "8651712f-46b5-4183-b691-2d8ad318fb8b"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> ownedFunctions =  ('Heat Water',
                            'Boil Water',
                            'Condense Steam',
                            'Drain Residue'); 
                            ref :>> ownedFunctionalExchanges =  ('7e19530c-f0f6-4f68-a246-25a824431ce4',
                            '1fb9e95d-b24c-4807-92c7-7b1a0c42c14e',
                            '560929ef-3d6b-436b-a8fe-65a61de8c3ca',
                            'd76fe349-15dc-4981-84a7-14aa89282482'); 
                             
                            ref :>> outputs =  ('outWaste'); 
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
                            ref :>> inputs =  ('inMaintainance'); 
                             
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
                             
                            ref :>> outputs =  ('outMaintainance'); 
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
                             
                            ref :>> outputs =  ('outInstallation'); 
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
                             
                            ref :>> outputs =  ('outCertification'); 
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
                            ref :>> inputs =  ('inInstallation',
                            'inCertification'); 
                             
                        }  
                    } 
                    item  'Actor Functions' : ItemPackage {
                        @PackageMeta {
                            type = "SystemFunctionPkg";
                        } 
                        @CapellaID { eid = "406b6ad0-ae40-4be2-ade8-67efb31cb0d8"; } 
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
                             
                            ref :>> outputs =  ('outWater Control',
                            'outPower Control'); 
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
                            out port 'outDirty Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "0e68b650-224e-4892-b3a9-407ba84cf803"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('inWater Control',
                            'FIP 2'); 
                             
                            ref :>> outputs =  ('outDirty Water'); 
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
                            ref :>> inputs =  ('inPower Control',
                            'FIP 2'); 
                             
                            ref :>> outputs =  ('outOperating Power',
                            'FOP 2'); 
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
                            in port 'inSafe Drinking Water' : FunctionInputPort  { 
                                @CapellaID { eid = "840c9547-258f-4e4d-8424-e347fd8eb8ae"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "4c7bf946-5b9b-4e70-8f42-54de9202ac7a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
                            ref :>> outputs =  ('outSafe Drinking Water'); 
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
                            in port 'inSafe Drinking Water' : FunctionInputPort  { 
                                @CapellaID { eid = "0a26b90a-1eaa-4b5f-b1c3-671d24a35706"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "69bcc13f-dca9-48ac-9d35-1ef04a153f68"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            }  
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
                            ref :>> outputs =  ('outSafe Drinking Water'); 
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
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
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
                            ref :>> inputs =  ('FIP 1'); 
                             
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
                             
                            ref :>> outputs =  ('FOP 1'); 
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
                             
                            ref :>> outputs =  ('FOP 1'); 
                        }  
                    } 
                    ref :>> ownedConstraints =  ('89d4dd11-21a7-45d7-b43a-f09a9fe19329'); 
                    ref :>> ownedFunctionalExchanges =  ('547d85ad-580b-4bc2-9bec-9b50ae8b362e',
                    'a54a5555-e490-4b1b-84e2-a4daf665e64e',
                    '9c6bf30a-a7b0-452a-9cf1-39b59b4f1164',
                    '848c6d70-a521-4e76-b37f-db1f66a7d33f',
                    'ac813313-bca0-4595-8f85-f383afb2777d',
                    '3a30895d-4a5b-4709-8ffe-efaac4190c94',
                    '81f67204-9e0d-4e9a-ad8e-292405c3a9d3',
                    '31c9484d-7da6-47b5-a0ab-6be7393929f7',
                    '0e87d851-a1e3-410e-931e-8e9b01320d09',
                    '7fe37648-029a-4dc9-959e-79098d30f707',
                    '64b15f15-9e6b-45c9-a99d-4a9fc7c96498',
                    '8682b777-71ab-4c88-afb8-9fc1d147ef95',
                    '918a6b1d-9e09-4b26-a687-074dfbc39431',
                    'de3a0fd8-e981-4c57-9ca4-6b6f911fe5e7'); 
                    ref :>> ownedSystemFunctionPkgs =  ('System Functions',
                    'Actor Functions'); 
                     
                }  
            } 
            package 'Missions' {
                @PackageMeta {
                    type = "MissionPkg";
                } 
                @CapellaID { eid = "8578ef91-d191-4a69-a23a-57ae07d55581"; } 
                use case 'Distill Water' : Mission  { 
                    @CapellaID { eid = "5d5becc0-5471-4dd5-8c70-8adee15eabf9"; } 
                    actor '2e18e1ab-695e-4c79-b755-502b126450c1' = 'Structure'::'Operator'; 
                    actor '2b7be402-4dba-4e84-b5f8-1c111b2c7862' = 'Structure'::'Water Distiller'; 
                    include 'Capabilities'::'Operate Distiller'; 
                    include 'Capabilities'::'Tend Heat Source'; 
                    include 'Capabilities'::'Tend Water Source'; 
                }  
            } 
            package 'Capabilities' {
                @PackageMeta {
                    type = "CapabilityPkg";
                } 
                @CapellaID { eid = "37e132ab-a77a-4cba-8f46-563c2a7b7110"; } 
                use case 'Operate Distiller' : Capability { 
                    @CapellaID { eid = "d3883551-ac11-4bb9-901e-6e6128102de5"; } 
                    ref action '2ec2ec95-cbfc-4dd1-a0f7-9cd727b587eb' = 'System Functions'::'Root System Function'.'Test Chain - Water Distillation and Distribution'; 
                    ref action 'b881e07b-a6e4-482e-b46c-21f34a7e687e' = 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Boil Water'; 
                    ref action '7071b5a2-dacb-4468-a910-f354327426d6' = 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Condense Steam'; 
                    ref action '79ac9b3a-7469-4757-a63b-9e3cf93d31f7' = 'System Functions'::'Root System Function'.'System Functions'.'Distill Water'.'Heat Water'; 
                    actor '7f3a6855-c6b0-4fcf-9bd5-71386b7f18bf' = 'Structure'::'Water Distiller'; 
                     
                     
                }  
                use case 'Tend Heat Source' : Capability { 
                    @CapellaID { eid = "9d578567-eb36-4c44-95dc-8604e60b8e57"; } 
                    actor '82311a36-45b0-476c-ab67-ab768bb61ddf' = 'Structure'::'Heat Source'; 
                    actor '700a3994-4471-4c1b-90ee-d4ee2c7edadc' = 'Structure'::'Water Distiller'; 
                }  
                use case 'Tend Water Source' : Capability { 
                    @CapellaID { eid = "2ab03461-4d7c-4d23-b97c-71d15d485ea0"; } 
                    actor 'f3738a9a-2092-4851-a581-42fa10bf489b' = 'Structure'::'Water Source'; 
                    actor '8a6123ec-2a36-4174-b1de-f98524451da0' = 'Structure'::'Water Distiller'; 
                }  
                constraint 'bd6b53f3-5db2-4f66-9ede-c5a75175ea71' : CapellaConstraint { 
                    language "capella:linkedText" /*  */
                    @CapellaID { eid = "bd6b53f3-5db2-4f66-9ede-c5a75175ea71"; }
                    
                } 
            } 
        } 
        package 'Logical Architecture' {
            @PackageMeta {
                type = "LogicalArchitecture";
            } 
            @CapellaID { eid = "cea0a1b8-45fe-4d43-98d0-e45bbcd1f401"; sid = "cea0a1b8-45fe-4d43-98d0-e45bbcd1f401"; } 
            package 'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "ceddd3bb-3aa6-4c34-84df-abee827e9778"; } 
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "3a52e33b-063f-4d71-a691-fa36111cfc10"; } 
            } 
            package 'Logical Functions' {
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
                    action 'Test chain - Distill and Distribute Water' : FunctionalChain  { 
                        @CapellaID { eid = "0ba89261-3c27-474a-81fe-bc7a661f18c5"; sid = "0ba89261-3c27-474a-81fe-bc7a661f18c5"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '1a22c4d3-0037-4473-8404-31a4a3fd57e7' = 'Actor Functions'.'Operate Distiller'; 
                        connection '255c315a-9d21-4938-86ae-ffc606f8db5c' : FunctionalChainInvolvementLink 
                            connect source ::> '1a22c4d3-0037-4473-8404-31a4a3fd57e7'
                            to  target ::> 'c1e2a9d0-b740-472c-8b3d-5eb76c380e52' {

                                ref :>> involved = '8e71177c-e6be-4cec-b557-4a34f95dc583';

                            } 
                        ref action 'c1e2a9d0-b740-472c-8b3d-5eb76c380e52' = 'Actor Functions'.'Provide Water'; 
                        connection '17b071f7-d991-4b48-b457-e208b93b28d5' : FunctionalChainInvolvementLink 
                            connect source ::> '1a22c4d3-0037-4473-8404-31a4a3fd57e7'
                            to  target ::> '93037076-1d1f-4120-89f4-83e22e8dd425' {

                                ref :>> involved = '2ff7c5f7-1d47-495e-9625-bda1154abb5c';

                            } 
                        ref action '93037076-1d1f-4120-89f4-83e22e8dd425' = 'Actor Functions'.'Generate Heat'; 
                        connection '66ea36d1-c291-4167-a170-e6a607ea1bc4' : FunctionalChainInvolvementLink 
                            connect source ::> 'c1e2a9d0-b740-472c-8b3d-5eb76c380e52'
                            to  target ::> '2914868b-39ca-401d-88e6-343f2046df6b' {

                                ref :>> involved = 'ee4ef5c7-9d15-4012-95f0-4381411f7d11';

                            } 
                        connection '2dd2be46-fa7f-4a39-a428-60b6f1b46599' : FunctionalChainInvolvementLink 
                            connect source ::> 'a0ba19cc-5818-41f4-957f-2715e6436c5f'
                            to  target ::> '8f282e2a-9cb3-40e3-9f29-23522acfe2a2' {

                                ref :>> involved = '495e683d-7b8f-4673-bf53-f31463b9f382';

                            } 
                        ref action '8f282e2a-9cb3-40e3-9f29-23522acfe2a2' = 'Actor Functions'.'Store Clean Water'; 
                        connection '18fed45d-c5c9-4e5f-aa24-f48235fb015e' : FunctionalChainInvolvementLink 
                            connect source ::> '8f282e2a-9cb3-40e3-9f29-23522acfe2a2'
                            to  target ::> '46eed045-190f-4368-99f3-c5dd8077471f' {

                                ref :>> involved = 'efb66b4c-a4a6-418e-81c0-add5fe6b5ca1';

                            } 
                        ref action '46eed045-190f-4368-99f3-c5dd8077471f' = 'Actor Functions'.'Distribute Clean Water'; 
                        connection 'cd83dd61-9f73-412e-8bfa-3ce1f5160e8b' : FunctionalChainInvolvementLink 
                            connect source ::> '46eed045-190f-4368-99f3-c5dd8077471f'
                            to  target ::> 'b9474ac9-6344-465f-b8f4-d60c87ea5a7d' {

                                ref :>> involved = '404da265-10b8-45b6-afe1-37adddb71c71';

                            } 
                        ref action 'b9474ac9-6344-465f-b8f4-d60c87ea5a7d' = 'Actor Functions'.'Get Clean Water'; 
                        ref action '2914868b-39ca-401d-88e6-343f2046df6b' = 'System Functions'.'Distill Water'.'Heat Water'; 
                        ref action 'a0ba19cc-5818-41f4-957f-2715e6436c5f' = 'System Functions'.'Distill Water'.'Condense Steam'; 
                        ref action '52245c69-0f49-46fe-9d7f-dd7f0a306a75' = 'System Functions'.'Distill Water'.'Boil Water'; 
                        connection 'abe2f78e-03c8-47b5-8343-3408bd218de6' : FunctionalChainInvolvementLink 
                            connect source ::> '2914868b-39ca-401d-88e6-343f2046df6b'
                            to  target ::> 'cfe778e6-8d2b-43c4-bbb6-4984e3effb6b' {

                                ref :>> involved = 'f63dc13b-839b-4a06-863a-bf7302dd583f';

                            } 
                        connection 'f44ba065-954f-43ca-8f47-c66a78513226' : FunctionalChainInvolvementLink 
                            connect source ::> '52245c69-0f49-46fe-9d7f-dd7f0a306a75'
                            to  target ::> 'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'134d7320-3277-4493-99f2-e729116897d5';

                            } 
                        ref action '369bda6b-8caa-435f-8488-600243576e3f' = 'Actor Functions'.'Discharge Residue'; 
                        connection '65b84872-3dae-4f3c-bdd0-3f0ac96e494a' : FunctionalChainInvolvementLink 
                            connect source ::> 'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef'
                            to  target ::> '369bda6b-8caa-435f-8488-600243576e3f' {

                                ref :>> involved = '01d0fa94-76dd-4485-8e26-b3c129250abd';

                            } 
                        connection 'ff6210be-a767-4dbe-8cc0-7d299863937f' : FunctionalChainInvolvementLink 
                            connect source ::> '93037076-1d1f-4120-89f4-83e22e8dd425'
                            to  target ::> '52245c69-0f49-46fe-9d7f-dd7f0a306a75' {

                                ref :>> involved = 'e062898a-9114-495b-9505-4e71046a16b7';

                            } 
                        ref action 'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef' = 'System Functions'.'Distill Water'.'Drain Residue'; 
                        connection 'e83f498c-f698-4a97-bd21-358d4d062526' : FunctionalChainInvolvementLink 
                            connect source ::> '52245c69-0f49-46fe-9d7f-dd7f0a306a75'
                            to  target ::> 'a0ba19cc-5818-41f4-957f-2715e6436c5f' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'df2902c9-85f5-4e56-a697-a92a5ed5dbd8';

                            } 
                        ref action 'b395f56a-8ffe-416e-b6e9-eeccc2403bb6' = 'System Functions'.'Distill Water'.'Heat Water'; 
                        connection '33348c66-20ca-44ad-bd35-0ef7110c51f4' : FunctionalChainInvolvementLink 
                            connect source ::> 'a0ba19cc-5818-41f4-957f-2715e6436c5f'
                            to  target ::> 'b395f56a-8ffe-416e-b6e9-eeccc2403bb6' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'c3e29f93-3cee-4a6b-9ad0-9c908cc84506';

                            } 
                        ref action 'cfe778e6-8d2b-43c4-bbb6-4984e3effb6b' = 'System Functions'.'Divert Feed'; 
                        connection '3f503936-c8d9-4a19-9e45-a4fe214e2c1e' : FunctionalChainInvolvementLink 
                            connect source ::> 'cfe778e6-8d2b-43c4-bbb6-4984e3effb6b'
                            to  target ::> '52245c69-0f49-46fe-9d7f-dd7f0a306a75' {

                                ref :>> involved = 'fabaeebd-3e11-4d73-913e-cc9d62e3caca';

                            } 
                         
                    }  
                    action 'Maintain System' : FunctionalChain  { 
                        @CapellaID { eid = "9631a35f-3ea0-4f95-9bb2-c937bf371d32"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '8a6d8993-ba2a-4918-a2e2-0c555afdf77f' = 'System Functions'.'Maintain and Serivce System'; 
                        connection '8a44fee8-6900-4d1d-b39e-002a7378b9c2' : FunctionalChainInvolvementLink 
                            connect source ::> '8a6d8993-ba2a-4918-a2e2-0c555afdf77f'
                            to  target ::> 'ef3d2cb1-9ef3-4c8c-a973-56d804bd0d31' {

                                ref :>> involved = 'bc9cd606-27ff-4908-b9cf-53309f86348d';

                            } 
                        ref action 'ef3d2cb1-9ef3-4c8c-a973-56d804bd0d31' = 'System Functions'.'Allow maintenance and service'; 
                         
                    }  
                    dependency '84a00728-8d83-4ba6-a292-045e13e38484'
                        from 'Test chain - Distill and Distribute Water'::'1a22c4d3-0037-4473-8404-31a4a3fd57e7'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'4e2fc1a4-10d2-4293-bc45-abf3edc64fed' { 
                        @TransfoLink { 
                            @CapellaID { eid = "84a00728-8d83-4ba6-a292-045e13e38484"; } 
                        }  
                    }  
                    dependency '0585e315-5dc1-40d0-813f-84d4170c53b0'
                        from 'Test chain - Distill and Distribute Water'::'255c315a-9d21-4938-86ae-ffc606f8db5c'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'2de06398-2414-41a1-af64-82f32e6c0899' { 
                        @TransfoLink { 
                            @CapellaID { eid = "0585e315-5dc1-40d0-813f-84d4170c53b0"; } 
                        }  
                    }  
                    dependency 'c3eca856-2cbd-4d2e-861b-4b20f746f571'
                        from 'Test chain - Distill and Distribute Water'::'c1e2a9d0-b740-472c-8b3d-5eb76c380e52'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'702345ab-f505-4115-98f2-18eb734127f8' { 
                        @TransfoLink { 
                            @CapellaID { eid = "c3eca856-2cbd-4d2e-861b-4b20f746f571"; } 
                        }  
                    }  
                    dependency '2826f2df-7ea3-4d17-adf7-7bd894ac82c5'
                        from 'Test chain - Distill and Distribute Water'::'17b071f7-d991-4b48-b457-e208b93b28d5'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'8cd7a0f0-98ac-4f38-ae70-b53052ad002e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "2826f2df-7ea3-4d17-adf7-7bd894ac82c5"; } 
                        }  
                    }  
                    dependency '75fa5d74-40ce-4636-a195-fbe8788f04d8'
                        from 'Test chain - Distill and Distribute Water'::'93037076-1d1f-4120-89f4-83e22e8dd425'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'d87df202-3094-4756-ba48-613ac109e742' { 
                        @TransfoLink { 
                            @CapellaID { eid = "75fa5d74-40ce-4636-a195-fbe8788f04d8"; } 
                        }  
                    }  
                    dependency '8196bb6a-e7b0-4290-9724-504a345b99b4'
                        from 'Maintain System'::'8a6d8993-ba2a-4918-a2e2-0c555afdf77f'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Maintain System'::'945f832c-9716-4443-ad58-23772c7c6e1c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "8196bb6a-e7b0-4290-9724-504a345b99b4"; } 
                        }  
                    }  
                    dependency '6ae654fe-3d5c-438b-8073-96c082374546'
                        from 'Maintain System'::'8a44fee8-6900-4d1d-b39e-002a7378b9c2'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Maintain System'::'636aec38-4430-436e-ac2c-adfc690f1315' { 
                        @TransfoLink { 
                            @CapellaID { eid = "6ae654fe-3d5c-438b-8073-96c082374546"; } 
                        }  
                    }  
                    dependency '912bdc56-f348-41e5-b129-f54e1a3d2276'
                        from 'Maintain System'::'ef3d2cb1-9ef3-4c8c-a973-56d804bd0d31'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Maintain System'::'d980f9b1-1eab-4384-9a66-46f8347a6e6b' { 
                        @TransfoLink { 
                            @CapellaID { eid = "912bdc56-f348-41e5-b129-f54e1a3d2276"; } 
                        }  
                    }  
                    dependency '89ea6e11-8603-4026-9e7d-b6ff75c25931'
                        from 'Test chain - Distill and Distribute Water'::'66ea36d1-c291-4167-a170-e6a607ea1bc4'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'8680608d-4b70-49f1-b6d9-08457f9305a8' { 
                        @TransfoLink { 
                            @CapellaID { eid = "89ea6e11-8603-4026-9e7d-b6ff75c25931"; } 
                        }  
                    }  
                    dependency '92fa9738-e74a-44f7-ab1a-2ad4051dcf75'
                        from 'Test chain - Distill and Distribute Water'::'2dd2be46-fa7f-4a39-a428-60b6f1b46599'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'db13d494-7d46-439b-91c6-d894ddafbb59' { 
                        @TransfoLink { 
                            @CapellaID { eid = "92fa9738-e74a-44f7-ab1a-2ad4051dcf75"; } 
                        }  
                    }  
                    dependency 'd1ead1a4-9306-4703-9154-31dd2f82b022'
                        from 'Test chain - Distill and Distribute Water'::'8f282e2a-9cb3-40e3-9f29-23522acfe2a2'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'1684f307-a032-4fb9-9bda-7b5b43d5c58c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "d1ead1a4-9306-4703-9154-31dd2f82b022"; } 
                        }  
                    }  
                    dependency '42d35411-074d-4b94-973b-bd76f36a0fbd'
                        from 'Test chain - Distill and Distribute Water'::'18fed45d-c5c9-4e5f-aa24-f48235fb015e'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'104e0e50-69c3-4b19-b5f5-0611ddd6e907' { 
                        @TransfoLink { 
                            @CapellaID { eid = "42d35411-074d-4b94-973b-bd76f36a0fbd"; } 
                        }  
                    }  
                    dependency '32f90c63-259d-4f8e-bfa9-8c74b82346b4'
                        from 'Test chain - Distill and Distribute Water'::'46eed045-190f-4368-99f3-c5dd8077471f'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'d9305b1a-7497-4e36-b431-558e63134620' { 
                        @TransfoLink { 
                            @CapellaID { eid = "32f90c63-259d-4f8e-bfa9-8c74b82346b4"; } 
                        }  
                    }  
                    dependency 'b939e3f2-21c9-4501-8e7a-725b79ddb513'
                        from 'Test chain - Distill and Distribute Water'::'cd83dd61-9f73-412e-8bfa-3ce1f5160e8b'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'562955a3-da1f-42be-8519-b73f571b9a04' { 
                        @TransfoLink { 
                            @CapellaID { eid = "b939e3f2-21c9-4501-8e7a-725b79ddb513"; } 
                        }  
                    }  
                    dependency '1dbc8183-8f4c-411f-83c8-b89906f1635e'
                        from 'Test chain - Distill and Distribute Water'::'b9474ac9-6344-465f-b8f4-d60c87ea5a7d'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'12b6018a-31de-49a7-8963-4af9692a7a50' { 
                        @TransfoLink { 
                            @CapellaID { eid = "1dbc8183-8f4c-411f-83c8-b89906f1635e"; } 
                        }  
                    }  
                    dependency '4b2a18f7-65a0-440c-9035-7ee32de7aacd'
                        from 'Test chain - Distill and Distribute Water'::'2914868b-39ca-401d-88e6-343f2046df6b'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'430094c7-3e78-4c63-a66a-d9241d40d8c6' { 
                        @TransfoLink { 
                            @CapellaID { eid = "4b2a18f7-65a0-440c-9035-7ee32de7aacd"; } 
                        }  
                    }  
                    dependency 'f32ebd18-f18e-4730-9662-53c6be0c5757'
                        from 'Test chain - Distill and Distribute Water'::'a0ba19cc-5818-41f4-957f-2715e6436c5f'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'4b830b6a-de00-4826-a24a-1c8e47b35f5c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f32ebd18-f18e-4730-9662-53c6be0c5757"; } 
                        }  
                    }  
                    dependency '19101596-77f8-44ab-aa10-dd2d63f465af'
                        from 'Test chain - Distill and Distribute Water'::'52245c69-0f49-46fe-9d7f-dd7f0a306a75'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'4f67ed66-76ec-4e96-8ac7-65428a433eab' { 
                        @TransfoLink { 
                            @CapellaID { eid = "19101596-77f8-44ab-aa10-dd2d63f465af"; } 
                        }  
                    }  
                    dependency 'db1078fb-5683-4d1a-b3ad-aa19300236ff'
                        from 'Test chain - Distill and Distribute Water'::'abe2f78e-03c8-47b5-8343-3408bd218de6'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'bb3bb12b-e951-4bd5-89d1-5abf8b25f954' { 
                        @TransfoLink { 
                            @CapellaID { eid = "db1078fb-5683-4d1a-b3ad-aa19300236ff"; } 
                        }  
                    }  
                    dependency '7ea14f53-d64b-44b9-a083-f0dba05dabfc'
                        from 'Test chain - Distill and Distribute Water'::'f44ba065-954f-43ca-8f47-c66a78513226'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'3c0b4b65-0591-4e71-b77c-9101b8cef2dd' { 
                        @TransfoLink { 
                            @CapellaID { eid = "7ea14f53-d64b-44b9-a083-f0dba05dabfc"; } 
                        }  
                    }  
                    dependency 'be162a76-8fd1-4fe5-a4f3-b909c0d3aabb'
                        from 'Test chain - Distill and Distribute Water'::'369bda6b-8caa-435f-8488-600243576e3f'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'fab1701c-c7d1-4ba5-a89f-85c524df833c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "be162a76-8fd1-4fe5-a4f3-b909c0d3aabb"; } 
                        }  
                    }  
                    dependency '162d523d-e99b-45af-8fb4-e2d5ee8043a0'
                        from 'Test chain - Distill and Distribute Water'::'65b84872-3dae-4f3c-bdd0-3f0ac96e494a'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'3e63a3fa-dd28-4f0a-82bf-ec278c69eec9' { 
                        @TransfoLink { 
                            @CapellaID { eid = "162d523d-e99b-45af-8fb4-e2d5ee8043a0"; } 
                        }  
                    }  
                    dependency '322193e1-cf97-4a49-8c58-2c656ffe2078'
                        from 'Test chain - Distill and Distribute Water'::'ff6210be-a767-4dbe-8cc0-7d299863937f'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'dba1b836-43fe-4bf4-affe-ccf4d2b82778' { 
                        @TransfoLink { 
                            @CapellaID { eid = "322193e1-cf97-4a49-8c58-2c656ffe2078"; } 
                        }  
                    }  
                    dependency '96f0d933-5f29-4ecd-b830-3636e25036da'
                        from 'Test chain - Distill and Distribute Water'::'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'d4c6dbff-a9ba-4950-9d41-5e5c88abf34a' { 
                        @TransfoLink { 
                            @CapellaID { eid = "96f0d933-5f29-4ecd-b830-3636e25036da"; } 
                        }  
                    }  
                    dependency '1ad301f4-8d31-49b5-b4b9-fdc957f842e3'
                        from 'Test chain - Distill and Distribute Water'::'e83f498c-f698-4a97-bd21-358d4d062526'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'19a51382-545b-4bb5-9dd0-0eeb2295579c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "1ad301f4-8d31-49b5-b4b9-fdc957f842e3"; } 
                        }  
                    }  
                    dependency 'e189a7a7-314c-4b14-97f4-ac251df8c20a'
                        from 'Test chain - Distill and Distribute Water'::'b395f56a-8ffe-416e-b6e9-eeccc2403bb6'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'b4889caa-f53c-41ca-a245-efa7f940b901' { 
                        @TransfoLink { 
                            @CapellaID { eid = "e189a7a7-314c-4b14-97f4-ac251df8c20a"; } 
                        }  
                    }  
                    dependency '6e280c55-35e6-4dc8-94ec-cf3b7dd41687'
                        from 'Test chain - Distill and Distribute Water'::'33348c66-20ca-44ad-bd35-0ef7110c51f4'
                        to  'System Analysis'::'System Functions'::'Root System Function'::'Test Chain - Water Distillation and Distribution'::'fddf95b5-9c62-429d-9b3a-202d5d3797b7' { 
                        @TransfoLink { 
                            @CapellaID { eid = "6e280c55-35e6-4dc8-94ec-cf3b7dd41687"; } 
                        }  
                    }  
                    interface '8e71177c-e6be-4cec-b557-4a34f95dc583' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Operate Distiller'.'outWater Control'
                        to target ::> 'Actor Functions'.'Provide Water'.'inWater Control' { 
                        @CapellaID { eid = "8e71177c-e6be-4cec-b557-4a34f95dc583"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Supply"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Water Supply Control'); 
                    }  
                    interface '2ff7c5f7-1d47-495e-9625-bda1154abb5c' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Operate Distiller'.'outPower Control'
                        to target ::> 'Actor Functions'.'Generate Heat'.'inPower Control' { 
                        @CapellaID { eid = "2ff7c5f7-1d47-495e-9625-bda1154abb5c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat Supply"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Power Supply Control'); 
                    }  
                    interface 'ee4ef5c7-9d15-4012-95f0-4381411f7d11' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Provide Water'.'outDirty Water'
                        to target ::> 'System Functions'.'Distill Water'.'Heat Water'.'inDirty Water' { 
                        @CapellaID { eid = "ee4ef5c7-9d15-4012-95f0-4381411f7d11"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '495e683d-7b8f-4673-bf53-f31463b9f382' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Store Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "495e683d-7b8f-4673-bf53-f31463b9f382"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Distilled Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface 'efb66b4c-a4a6-418e-81c0-add5fe6b5ca1' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Store Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Distribute Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "efb66b4c-a4a6-418e-81c0-add5fe6b5ca1"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '404da265-10b8-45b6-afe1-37adddb71c71' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Distribute Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Get Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "404da265-10b8-45b6-afe1-37adddb71c71"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface 'bc9cd606-27ff-4908-b9cf-53309f86348d' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Maintain and Serivce System'.'outMaintainance'
                        to target ::> 'System Functions'.'Allow maintenance and service'.'inMaintainance' { 
                        @CapellaID { eid = "bc9cd606-27ff-4908-b9cf-53309f86348d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                         
                    }  
                    interface '20296ce7-bcf9-48f0-a898-19736f79a09f' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Install System'.'outInstallation'
                        to target ::> 'System Functions'.'Provide Deploymentability'.'inInstallation' { 
                        @CapellaID { eid = "20296ce7-bcf9-48f0-a898-19736f79a09f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                         
                    }  
                    interface '8d29ec83-4928-4007-9887-b84efebfc041' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Certify System'.'outCertification'
                        to target ::> 'System Functions'.'Provide Deploymentability'.'inCertification' { 
                        @CapellaID { eid = "8d29ec83-4928-4007-9887-b84efebfc041"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                         
                    }  
                    interface 'e062898a-9114-495b-9505-4e71046a16b7' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Generate Heat'.'FOP 2'
                        to target ::> 'System Functions'.'Distill Water'.'Boil Water'.'FIP 1' { 
                        @CapellaID { eid = "e062898a-9114-495b-9505-4e71046a16b7"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface '01d0fa94-76dd-4485-8e26-b3c129250abd' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Drain Residue'.'FOP 2'
                        to target ::> 'Actor Functions'.'Discharge Residue'.'FIP 1' { 
                        @CapellaID { eid = "01d0fa94-76dd-4485-8e26-b3c129250abd"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Residue"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Sludge'); 
                    }  
                    interface '52845e7f-0f6e-463e-ad9f-fc069d9e47ef' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Tend Water Source'.'FOP 1'
                        to target ::> 'Actor Functions'.'Provide Water'.'FIP 2' { 
                        @CapellaID { eid = "52845e7f-0f6e-463e-ad9f-fc069d9e47ef"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Water"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '295cbfcc-9b18-4c51-b1ab-605ccb4c1935' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Tend Heat Source'.'FOP 1'
                        to target ::> 'Actor Functions'.'Generate Heat'.'FIP 2' { 
                        @CapellaID { eid = "295cbfcc-9b18-4c51-b1ab-605ccb4c1935"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Fuel"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface 'f63dc13b-839b-4a06-863a-bf7302dd583f' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Heat Water'.'FOP 1'
                        to target ::> 'System Functions'.'Divert Feed'.'FIP 2' { 
                        @CapellaID { eid = "f63dc13b-839b-4a06-863a-bf7302dd583f"; sid = "f63dc13b-839b-4a06-863a-bf7302dd583f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface 'fabaeebd-3e11-4d73-913e-cc9d62e3caca' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Divert Feed'.'FOP 1'
                        to target ::> 'System Functions'.'Distill Water'.'Boil Water'.'hotDirtyWater' { 
                        @CapellaID { eid = "fabaeebd-3e11-4d73-913e-cc9d62e3caca"; sid = "fabaeebd-3e11-4d73-913e-cc9d62e3caca"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '788bca82-4484-4a3e-bcc5-c2324542e256' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Divert Feed'.'FOP 2'
                        to target ::> 'Actor Functions'.'Discharge Excess Water'.'FIP 1' { 
                        @CapellaID { eid = "788bca82-4484-4a3e-bcc5-c2324542e256"; sid = "788bca82-4484-4a3e-bcc5-c2324542e256"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Bypass"; 
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    item  'System Functions' : ItemPackage {
                        @PackageMeta {
                            type = "LogicalFunctionPkg";
                        } 
                        @CapellaID { eid = "931d7985-9874-405b-9e66-cb1180fcec9b"; } 
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
                            action 'Distill Water' : FunctionalChain  { 
                                @CapellaID { eid = "d1e25547-0705-4dba-9b8c-fe3b6fe66a7e"; } 
                                attribute :>> kind = FunctionalChainKind::SIMPLE; 
                                connection '18c351b8-6968-4645-92bb-802c78aaa43d' : FunctionalChainInvolvementLink 
                                    connect source ::> 'b44a2dcc-2752-45e5-87a8-787401ddc81a'
                                    to  target ::> '4acc437f-d59e-4ada-9ebc-76f141b8462f' {

                                        ref :>> involved = 'ee872da7-9446-4409-90e3-ee56f5e9292c';

                                    } 
                                ref action '4acc437f-d59e-4ada-9ebc-76f141b8462f' = 'Boil Water'; 
                                ref action 'b44a2dcc-2752-45e5-87a8-787401ddc81a' = 'Heat Water'; 
                                ref action 'ebe0e612-077b-4a38-8570-b375f7bdc0b0' = 'Actor Functions'.'Provide Water'; 
                                connection '8c79a349-7a78-4224-9866-c515bad64ec0' : FunctionalChainInvolvementLink 
                                    connect source ::> 'ebe0e612-077b-4a38-8570-b375f7bdc0b0'
                                    to  target ::> 'b44a2dcc-2752-45e5-87a8-787401ddc81a' {

                                        ref :>> involved = 'ee4ef5c7-9d15-4012-95f0-4381411f7d11';

                                    } 
                                ref action 'c4fd976f-5d53-43d9-bc41-fc957d8d430e' = 'Drain Residue'; 
                                connection 'bf45d9eb-4679-407a-8389-d3ba975422bc' : FunctionalChainInvolvementLink 
                                    connect source ::> '4acc437f-d59e-4ada-9ebc-76f141b8462f'
                                    to  target ::> 'c4fd976f-5d53-43d9-bc41-fc957d8d430e' {

                                        ref :>> involved = '134d7320-3277-4493-99f2-e729116897d5';

                                    } 
                                ref action '4f498901-4624-4050-8874-1e87a260b442' = 'Condense Steam'; 
                                connection 'edb7274f-9006-4b4f-aba3-fd746ee5348d' : FunctionalChainInvolvementLink 
                                    connect source ::> '4acc437f-d59e-4ada-9ebc-76f141b8462f'
                                    to  target ::> '4f498901-4624-4050-8874-1e87a260b442' {

                                        ref :>> involved = 'df2902c9-85f5-4e56-a697-a92a5ed5dbd8';

                                    } 
                                ref action '706ca35e-0a1a-47c3-b8b2-06c583f16180' = 'Actor Functions'.'Store Clean Water'; 
                                connection 'bc414d27-579e-424b-87de-141c3a210ee0' : FunctionalChainInvolvementLink 
                                    connect source ::> '4f498901-4624-4050-8874-1e87a260b442'
                                    to  target ::> '706ca35e-0a1a-47c3-b8b2-06c583f16180' {

                                        ref :>> involved = '495e683d-7b8f-4673-bf53-f31463b9f382';

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
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "18eb543c-b736-4e31-83f7-f24f33b3ab18"; sid = "18eb543c-b736-4e31-83f7-f24f33b3ab18"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                    ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                                }  
                                ref :>> inputs =  ('inDirty Water',
                                'FIP 3'); 
                                 
                                ref :>> outputs =  ('FOP 1'); 
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
                                    ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                                }  
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
                                ref :>> inputs =  ('FIP 1',
                                'hotDirtyWater'); 
                                 
                                ref :>> outputs =  ('FOP 1',
                                'FOP 2'); 
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
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "49498d72-317e-4729-9e5b-0d4e48e0c61d"; sid = "49498d72-317e-4729-9e5b-0d4e48e0c61d"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
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
                                ref :>> inputs =  ('FIP 1'); 
                                 
                                ref :>> outputs =  ('outSafe Drinking Water',
                                'FOP 2'); 
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
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "38dc77ea-7e72-49aa-9a42-06956597f23d"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                out port 'FOP 2' : FunctionOutputPort  { 
                                    @CapellaID { eid = "fc3631de-d80d-4f6c-bb81-9cde868d7069"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
                                ref :>> inputs =  ('FIP 1'); 
                                 
                                ref :>> outputs =  ('FOP 2'); 
                            }  
                            interface '134d7320-3277-4493-99f2-e729116897d5' : FunctionalExchange 
                                connect source ::> 'Boil Water'.'FOP 1'
                                to target ::> 'Drain Residue'.'FIP 1' { 
                                @CapellaID { eid = "134d7320-3277-4493-99f2-e729116897d5"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Sludge"; 
                                 
                                ref :>> exchangedItems =  ('System Analysis'::'Data'::'Sludge'); 
                            }  
                            interface 'df2902c9-85f5-4e56-a697-a92a5ed5dbd8' : FunctionalExchange 
                                connect source ::> 'Boil Water'.'FOP 2'
                                to target ::> 'Condense Steam'.'FIP 1' { 
                                @CapellaID { eid = "df2902c9-85f5-4e56-a697-a92a5ed5dbd8"; sid = "df2902c9-85f5-4e56-a697-a92a5ed5dbd8"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Steam"; 
                                 
                            }  
                            interface 'c3e29f93-3cee-4a6b-9ad0-9c908cc84506' : FunctionalExchange 
                                connect source ::> 'Condense Steam'.'FOP 2'
                                to target ::> 'Heat Water'.'FIP 3' { 
                                @CapellaID { eid = "c3e29f93-3cee-4a6b-9ad0-9c908cc84506"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Recovered Heat"; 
                                 
                                ref :>> exchangedItems =  ('System Analysis'::'Data'::'Heat'); 
                            }  
                            interface 'ee872da7-9446-4409-90e3-ee56f5e9292c' : FunctionalExchange 
                                connect source ::> 'Heat Water'.'FOP 1'
                                to target ::> 'Boil Water'.'hotDirtyWater' { 
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
                            ref :>> ownedFunctions =  ('Heat Water',
                            'Boil Water',
                            'Condense Steam',
                            'Drain Residue'); 
                            ref :>> ownedFunctionalExchanges =  ('134d7320-3277-4493-99f2-e729116897d5',
                            'df2902c9-85f5-4e56-a697-a92a5ed5dbd8',
                            'c3e29f93-3cee-4a6b-9ad0-9c908cc84506',
                            'ee872da7-9446-4409-90e3-ee56f5e9292c'); 
                             
                            ref :>> outputs =  ('outWaste'); 
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
                            ref :>> inputs =  ('inMaintainance'); 
                             
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
                             
                            ref :>> outputs =  ('outMaintainance'); 
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
                             
                            ref :>> outputs =  ('outInstallation'); 
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
                             
                            ref :>> outputs =  ('outCertification'); 
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
                            ref :>> inputs =  ('inInstallation',
                            'inCertification'); 
                             
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
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "69a6820f-8dd2-44ce-a1cf-14cc0353cf8e"; sid = "69a6820f-8dd2-44ce-a1cf-14cc0353cf8e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                                ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "fa51849a-fc51-46f3-a723-8c4afd704747"; sid = "fa51849a-fc51-46f3-a723-8c4afd704747"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "48371bea-4f72-4a39-8157-6fcdb8d8003e"; sid = "48371bea-4f72-4a39-8157-6fcdb8d8003e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            ref :>> inputs =  ('FIP 2'); 
                            ref :>> outputs =  ('FOP 1',
                            'FOP 2'); 
                        }  
                    } 
                    item  'Actor Functions' : ItemPackage {
                        @PackageMeta {
                            type = "LogicalFunctionPkg";
                        } 
                        @CapellaID { eid = "3fdf0725-3b41-4f12-8148-eaf6a0c4cf9c"; } 
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
                             
                            ref :>> outputs =  ('outWater Control',
                            'outPower Control'); 
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
                            out port 'outDirty Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "b1a5564e-949e-4c06-954f-e997f493d71a"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inWater Control',
                            'FIP 2'); 
                             
                            ref :>> outputs =  ('outDirty Water'); 
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
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "cda6f027-1d6c-42a1-b2ab-e5b5118004b6"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inPower Control',
                            'FIP 2'); 
                             
                            ref :>> outputs =  ('FOP 2'); 
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
                            in port 'inSafe Drinking Water' : FunctionInputPort  { 
                                @CapellaID { eid = "78dfc40f-d583-45d7-bed4-d8a2862372cb"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "d6fd5c43-a245-45b4-a1e5-8fd7e2339251"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
                            ref :>> outputs =  ('outSafe Drinking Water'); 
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
                            in port 'inSafe Drinking Water' : FunctionInputPort  { 
                                @CapellaID { eid = "9f321dda-e172-42cc-a11f-9a09cb9c09ed"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "8995ba7b-a1c5-4c6c-a994-afa53a62bddc"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
                            ref :>> outputs =  ('outSafe Drinking Water'); 
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
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
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
                            ref :>> inputs =  ('FIP 1'); 
                             
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
                             
                            ref :>> outputs =  ('FOP 1'); 
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
                             
                            ref :>> outputs =  ('FOP 1'); 
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
                            ref :>> inputs =  ('FIP 1'); 
                        }  
                    } 
                    ref :>> ownedFunctionalExchanges =  ('8e71177c-e6be-4cec-b557-4a34f95dc583',
                    '2ff7c5f7-1d47-495e-9625-bda1154abb5c',
                    'ee4ef5c7-9d15-4012-95f0-4381411f7d11',
                    '495e683d-7b8f-4673-bf53-f31463b9f382',
                    'efb66b4c-a4a6-418e-81c0-add5fe6b5ca1',
                    '404da265-10b8-45b6-afe1-37adddb71c71',
                    'bc9cd606-27ff-4908-b9cf-53309f86348d',
                    '20296ce7-bcf9-48f0-a898-19736f79a09f',
                    '8d29ec83-4928-4007-9887-b84efebfc041',
                    'e062898a-9114-495b-9505-4e71046a16b7',
                    '01d0fa94-76dd-4485-8e26-b3c129250abd',
                    '52845e7f-0f6e-463e-ad9f-fc069d9e47ef',
                    '295cbfcc-9b18-4c51-b1ab-605ccb4c1935',
                    'f63dc13b-839b-4a06-863a-bf7302dd583f',
                    'fabaeebd-3e11-4d73-913e-cc9d62e3caca',
                    '788bca82-4484-4a3e-bcc5-c2324542e256'); 
                     
                    ref :>> ownedLogicalFunctionPkgs =  ('System Functions',
                    'Actor Functions'); 
                }  
            } 
            package 'Structure' {
                @PackageMeta {
                    type = "LogicalComponentPkg";
                } 
                @CapellaID { eid = "71cc5100-df26-4e48-8f03-91e8f7d64e3a"; } 
                interface '38a7788a-3ef0-4a10-ad41-a1befb9aa9ed' : ComponentExchange 
                    connect source ::> 'Water Source'.'dirty'
                    to  target ::> 'Logical System'.'Condenser'.'c in' { 
                    @CapellaID { eid = "38a7788a-3ef0-4a10-ad41-a1befb9aa9ed"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'aa69b4b2-7491-469d-9c7a-1bf802b9e46c' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'ee4ef5c7-9d15-4012-95f0-4381411f7d11'
                        to componentExchange ::> 'Structure'::'38a7788a-3ef0-4a10-ad41-a1befb9aa9ed' { 
                        @CapellaID { eid = "aa69b4b2-7491-469d-9c7a-1bf802b9e46c"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('aa69b4b2-7491-469d-9c7a-1bf802b9e46c'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Dirty Water'); 
                }  
                interface '2015732c-1abd-41ed-a97c-2055ae160b54' : ComponentExchange 
                    connect source ::> 'Water Distribution System'.'CP 2'
                    to  target ::> 'Water USer'.'CP 1' { 
                    @CapellaID { eid = "2015732c-1abd-41ed-a97c-2055ae160b54"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Faucet"; 
                    attribute :>> isOriented = false; 
                    allocation '8356e117-7725-4455-8728-dae35c7778d2' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'404da265-10b8-45b6-afe1-37adddb71c71'
                        to componentExchange ::> 'Structure'::'2015732c-1abd-41ed-a97c-2055ae160b54' { 
                        @CapellaID { eid = "8356e117-7725-4455-8728-dae35c7778d2"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('8356e117-7725-4455-8728-dae35c7778d2'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'fd50370d-e785-4377-bdba-67841a8c013c' : ComponentExchange 
                    connect source ::> 'Operator'.'CP 1'
                    to  target ::> 'Water Source'.'CP 2' { 
                    @CapellaID { eid = "fd50370d-e785-4377-bdba-67841a8c013c"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Supply"; 
                    attribute :>> isOriented = false; 
                    allocation 'b91b07a7-14c1-4e2b-80de-4fcf5394a475' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'8e71177c-e6be-4cec-b557-4a34f95dc583'
                        to componentExchange ::> 'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c' { 
                        @CapellaID { eid = "b91b07a7-14c1-4e2b-80de-4fcf5394a475"; } 
                    }  
                    allocation '4584f3a4-8c64-4ab5-944f-125201ffdc6a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'52845e7f-0f6e-463e-ad9f-fc069d9e47ef'
                        to componentExchange ::> 'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c' { 
                        @CapellaID { eid = "4584f3a4-8c64-4ab5-944f-125201ffdc6a"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('b91b07a7-14c1-4e2b-80de-4fcf5394a475',
                    '4584f3a4-8c64-4ab5-944f-125201ffdc6a'); 
                     
                }  
                interface 'fa5aaeef-badc-4744-9f48-1020193f87c6' : ComponentExchange 
                    connect source ::> 'Operator'.'CP 2'
                    to  target ::> 'Heat Source'.'CP 2' { 
                    @CapellaID { eid = "fa5aaeef-badc-4744-9f48-1020193f87c6"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Operating Fuel"; 
                    attribute :>> isOriented = false; 
                    allocation '2df983cd-2f8b-4033-bf2d-1da746b7dedf' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'295cbfcc-9b18-4c51-b1ab-605ccb4c1935'
                        to componentExchange ::> 'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6' { 
                        @CapellaID { eid = "2df983cd-2f8b-4033-bf2d-1da746b7dedf"; } 
                    }  
                    allocation 'fa58bd87-e4e5-41ee-8238-0a8b130fa737' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'2ff7c5f7-1d47-495e-9625-bda1154abb5c'
                        to componentExchange ::> 'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6' { 
                        @CapellaID { eid = "fa58bd87-e4e5-41ee-8238-0a8b130fa737"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('2df983cd-2f8b-4033-bf2d-1da746b7dedf',
                    'fa58bd87-e4e5-41ee-8238-0a8b130fa737'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Heat Control',
                    'System Analysis'::'Data'::'Water Supply Control'); 
                }  
                interface '85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a' : ComponentExchange 
                    connect source ::> 'Logical System'.'Drain'.'out'
                    to  target ::> 'Waste Management System'.'sludge' { 
                    @CapellaID { eid = "85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Waste"; 
                    attribute :>> isOriented = false; 
                    allocation '30d1dd18-a03d-4f01-b765-1ee4feebc9b6' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'01d0fa94-76dd-4485-8e26-b3c129250abd'
                        to componentExchange ::> 'Structure'::'85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a' { 
                        @CapellaID { eid = "30d1dd18-a03d-4f01-b765-1ee4feebc9b6"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('30d1dd18-a03d-4f01-b765-1ee4feebc9b6'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Sludge'); 
                }  
                interface '228ad0de-a4ed-43c9-bf0f-ab2e423ae615' : ComponentExchange 
                    connect source ::> 'Logical System'.'Condenser'.'CP 4'
                    to  target ::> 'Water Distribution System'.'CP 3' { 
                    @CapellaID { eid = "228ad0de-a4ed-43c9-bf0f-ab2e423ae615"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Distribution Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '31fed5a1-d669-4f28-b1d4-700d2cbc52a5' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'495e683d-7b8f-4673-bf53-f31463b9f382'
                        to componentExchange ::> 'Structure'::'228ad0de-a4ed-43c9-bf0f-ab2e423ae615' { 
                        @CapellaID { eid = "31fed5a1-d669-4f28-b1d4-700d2cbc52a5"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('31fed5a1-d669-4f28-b1d4-700d2cbc52a5'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'c6e98fb9-2f71-4412-9e1a-191c1c344611' : ComponentExchange 
                    connect source ::> 'Heat Source'.'q in'
                    to  target ::> 'Logical System'.'Evaporator'.'heater' { 
                    @CapellaID { eid = "c6e98fb9-2f71-4412-9e1a-191c1c344611"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Heat Supply"; 
                    attribute :>> isOriented = false; 
                    allocation '5ccd2b0c-9b1b-4149-8e83-9507af533adb' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'e062898a-9114-495b-9505-4e71046a16b7'
                        to componentExchange ::> 'Structure'::'c6e98fb9-2f71-4412-9e1a-191c1c344611' { 
                        @CapellaID { eid = "5ccd2b0c-9b1b-4149-8e83-9507af533adb"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('5ccd2b0c-9b1b-4149-8e83-9507af533adb'); 
                }  
                interface '709f24a8-b26b-43ed-a85f-b6ec0148fd35' : ComponentExchange 
                    connect source ::> 'Logical System'.'Diverter Assembly'.'FOP 2'
                    to  target ::> 'Excess Water Discharge'.'FIP 1' { 
                    @CapellaID { eid = "709f24a8-b26b-43ed-a85f-b6ec0148fd35"; sid = "709f24a8-b26b-43ed-a85f-b6ec0148fd35"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Bypass"; 
                    attribute :>> isOriented = false; 
                    allocation '958c3c78-0805-46ad-9315-8541242c123a' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'788bca82-4484-4a3e-bcc5-c2324542e256'
                        to componentExchange ::> 'Structure'::'709f24a8-b26b-43ed-a85f-b6ec0148fd35' { 
                        @CapellaID { eid = "958c3c78-0805-46ad-9315-8541242c123a"; sid = "958c3c78-0805-46ad-9315-8541242c123a"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('958c3c78-0805-46ad-9315-8541242c123a'); 
                }  
                part 'd04bd111-9d4f-46dc-ba6b-0d806a7607fd' : CPart :> 'Logical System'  { 
                    @CapellaID { eid = "d04bd111-9d4f-46dc-ba6b-0d806a7607fd"; } 
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
                part '44e58cd1-26af-44b8-abc7-fb38d7757340' : CPart :> 'Operator'  { 
                    @CapellaID { eid = "44e58cd1-26af-44b8-abc7-fb38d7757340"; } 
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
                part 'fe82dfec-fb39-4964-b34e-fe9448b18e53' : CPart :> 'Water Source'  { 
                    @CapellaID { eid = "fe82dfec-fb39-4964-b34e-fe9448b18e53"; } 
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
                part '1928ee0a-9aa1-40d1-ac32-c45203228e2d' : CPart :> 'Heat Source'  { 
                    @CapellaID { eid = "1928ee0a-9aa1-40d1-ac32-c45203228e2d"; } 
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
                part '8e3bd06f-641c-4546-a43d-f67b20d3b0d9' : CPart :> 'Water Distribution System'  { 
                    @CapellaID { eid = "8e3bd06f-641c-4546-a43d-f67b20d3b0d9"; } 
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
                part '6384c5d9-6116-4089-a7fb-f75e2f425a31' : CPart :> 'Water USer'  { 
                    @CapellaID { eid = "6384c5d9-6116-4089-a7fb-f75e2f425a31"; } 
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
                part '7cabd6a1-3236-454a-b043-22f373f03c4a' : CPart :> 'Waste Management System'  { 
                    @CapellaID { eid = "7cabd6a1-3236-454a-b043-22f373f03c4a"; } 
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
                part '3dd22111-ff9e-4c9f-be38-7b4601b54b4b' : CPart :> 'Excess Water Discharge'  { 
                    @CapellaID { eid = "3dd22111-ff9e-4c9f-be38-7b4601b54b4b"; sid = "3dd22111-ff9e-4c9f-be38-7b4601b54b4b"; } 
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
                dependency '1907b301-3159-4111-8f2c-41283362ecb3'
                    from 'Structure'::'44e58cd1-26af-44b8-abc7-fb38d7757340'
                    to  'System Analysis'::'Structure'::'9a84ea92-7b16-4606-b9ea-1e13e0a4cebe' { 
                    @TransfoLink { 
                        @CapellaID { eid = "1907b301-3159-4111-8f2c-41283362ecb3"; } 
                    }  
                }  
                dependency '14816a72-3422-4788-9cfd-c77443b32bf0'
                    from 'Structure'::'fe82dfec-fb39-4964-b34e-fe9448b18e53'
                    to  'System Analysis'::'Structure'::'a920ab03-fe38-4563-8d3f-8cd8a221a405' { 
                    @TransfoLink { 
                        @CapellaID { eid = "14816a72-3422-4788-9cfd-c77443b32bf0"; } 
                    }  
                }  
                dependency '801e7e62-366b-4a3f-a53e-a54cd0c0a87d'
                    from 'Structure'::'1928ee0a-9aa1-40d1-ac32-c45203228e2d'
                    to  'System Analysis'::'Structure'::'8c6ce6ed-8a57-496f-a7a3-49be1b0b5eb1' { 
                    @TransfoLink { 
                        @CapellaID { eid = "801e7e62-366b-4a3f-a53e-a54cd0c0a87d"; } 
                    }  
                }  
                dependency '10a1a876-ae73-48a6-bf0d-36c84f81a68c'
                    from 'Structure'::'8e3bd06f-641c-4546-a43d-f67b20d3b0d9'
                    to  'System Analysis'::'Structure'::'77b61d9c-dd47-4b5a-a462-ccf19c66d440' { 
                    @TransfoLink { 
                        @CapellaID { eid = "10a1a876-ae73-48a6-bf0d-36c84f81a68c"; } 
                    }  
                }  
                dependency 'e116afaf-efdf-4343-82d7-3e9aa5b05fdd'
                    from 'Structure'::'6384c5d9-6116-4089-a7fb-f75e2f425a31'
                    to  'System Analysis'::'Structure'::'66de44b9-4e31-4e75-afcc-c86f01f011f1' { 
                    @TransfoLink { 
                        @CapellaID { eid = "e116afaf-efdf-4343-82d7-3e9aa5b05fdd"; } 
                    }  
                }  
                dependency 'ed24a784-9284-4eb8-b397-348893cafd53'
                    from 'Structure'::'7cabd6a1-3236-454a-b043-22f373f03c4a'
                    to  'System Analysis'::'Structure'::'d74be5ef-13bb-4b8d-8591-cd86a2d54d7b' { 
                    @TransfoLink { 
                        @CapellaID { eid = "ed24a784-9284-4eb8-b397-348893cafd53"; } 
                    }  
                }  
                dependency '5d034d47-2579-4740-a545-e45c01301a50'
                    from 'Structure'::'2015732c-1abd-41ed-a97c-2055ae160b54'::'8356e117-7725-4455-8728-dae35c7778d2'
                    to  'System Analysis'::'Structure'::'43f19a2c-0ace-49fe-b83c-8876490494cd'::'eeb36c74-8a11-4ceb-a3f9-d0fd3b71546a' { 
                    @TransfoLink { 
                        @CapellaID { eid = "5d034d47-2579-4740-a545-e45c01301a50"; } 
                    }  
                }  
                dependency 'd80d5180-a1ca-4aea-adfd-65a9f5ff14ff'
                    from 'Structure'::'38a7788a-3ef0-4a10-ad41-a1befb9aa9ed'::'aa69b4b2-7491-469d-9c7a-1bf802b9e46c'
                    to  'System Analysis'::'Structure'::'45e6cd8f-7152-49bd-97f5-d368df46de3e'::'081d66d1-f034-467a-a355-c44abee78d7f' { 
                    @TransfoLink { 
                        @CapellaID { eid = "d80d5180-a1ca-4aea-adfd-65a9f5ff14ff"; } 
                    }  
                }  
                dependency '86133546-cfcf-4040-a008-d3afbd4fc3a3'
                    from 'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'::'b91b07a7-14c1-4e2b-80de-4fcf5394a475'
                    to  'System Analysis'::'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03'::'6683be69-1bbe-4848-9f05-fb70b4bf9f3d' { 
                    @TransfoLink { 
                        @CapellaID { eid = "86133546-cfcf-4040-a008-d3afbd4fc3a3"; } 
                    }  
                }  
                dependency 'c4b09c3e-8c00-479c-8330-92e532a05031'
                    from 'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'::'4584f3a4-8c64-4ab5-944f-125201ffdc6a'
                    to  'System Analysis'::'Structure'::'1a40bdef-2a11-40b2-ac2a-f1d6f47edb03'::'eded5a12-d7f0-45f0-801d-e85d7c5f03a2' { 
                    @TransfoLink { 
                        @CapellaID { eid = "c4b09c3e-8c00-479c-8330-92e532a05031"; } 
                    }  
                }  
                dependency 'b97f42d2-8d94-4934-88c0-a7f08f92be68'
                    from 'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'::'2df983cd-2f8b-4033-bf2d-1da746b7dedf'
                    to  'System Analysis'::'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc'::'f9b1785b-d41e-414c-8d53-2dfc3adb4354' { 
                    @TransfoLink { 
                        @CapellaID { eid = "b97f42d2-8d94-4934-88c0-a7f08f92be68"; } 
                    }  
                }  
                dependency 'e967d67a-9ed2-4321-8aa4-669b74b8d7cc'
                    from 'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'::'fa58bd87-e4e5-41ee-8238-0a8b130fa737'
                    to  'System Analysis'::'Structure'::'6500de7a-7c02-412b-ad04-591ca47983dc'::'4d76f6a4-c43d-45c4-87eb-943916752ca4' { 
                    @TransfoLink { 
                        @CapellaID { eid = "e967d67a-9ed2-4321-8aa4-669b74b8d7cc"; } 
                    }  
                }  
                part 'Logical System' : LogicalComponent { 
                    @CapellaID { eid = "5cfbda98-dcad-4d7f-8423-34b6f0692447"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = false; 
                    attribute :>> isHuman = false; 
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
                    interface '68ab1776-6210-4874-b63c-345f4bff3778' : ComponentExchange 
                        connect source ::> 'Evaporator'.'bottom'
                        to  target ::> 'Drain'.'in' { 
                        @CapellaID { eid = "68ab1776-6210-4874-b63c-345f4bff3778"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Drainage"; 
                        attribute :>> isOriented = false; 
                        allocation 'e2e36d91-0772-4df8-84c4-5cd1db55e1bd' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'134d7320-3277-4493-99f2-e729116897d5'
                            to componentExchange ::> '68ab1776-6210-4874-b63c-345f4bff3778' { 
                            @CapellaID { eid = "e2e36d91-0772-4df8-84c4-5cd1db55e1bd"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('e2e36d91-0772-4df8-84c4-5cd1db55e1bd'); 
                    }  
                    interface 'd362cc95-3dac-44f3-a392-7abab0a1b620' : ComponentExchange 
                        connect source ::> 'Evaporator'.'top'
                        to  target ::> 'Condenser'.'h in' { 
                        @CapellaID { eid = "d362cc95-3dac-44f3-a392-7abab0a1b620"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Steam"; 
                        attribute :>> isOriented = false; 
                        allocation '3bbf0db1-f7ba-410c-a792-be3a48817695' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'df2902c9-85f5-4e56-a697-a92a5ed5dbd8'
                            to componentExchange ::> 'd362cc95-3dac-44f3-a392-7abab0a1b620' { 
                            @CapellaID { eid = "3bbf0db1-f7ba-410c-a792-be3a48817695"; } 
                        }  
                        constraint '1d9b8e84-665a-4955-8cf0-a4f3baf0daf1' : CapellaConstraint { 
                            language "capella:linkedText" /* Phase Change Heat Transfer=(<a href="ccfaa68b-325b-4984-8804-ced9f3b18819"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                            @CapellaID { eid = "1d9b8e84-665a-4955-8cf0-a4f3baf0daf1"; }
                            ref :>> constrainedElements =  ('228ad0de-a4ed-43c9-bf0f-ab2e423ae615');
                            
                        } 
                        constraint 'c3bf2d63-f1ea-48a5-a88f-cb561fe08a84' : CapellaConstraint { 
                            language "capella:linkedText" /* Phase Change Heat Transfer = (<a href="6e33c9fe-194b-45c0-832f-e874d2b9b80e"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                            @CapellaID { eid = "c3bf2d63-f1ea-48a5-a88f-cb561fe08a84"; }
                            ref :>> constrainedElements =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'d362cc95-3dac-44f3-a392-7abab0a1b620');
                            
                        } 
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('3bbf0db1-f7ba-410c-a792-be3a48817695'); 
                        ref :>> ownedConstraints =  ('1d9b8e84-665a-4955-8cf0-a4f3baf0daf1',
                        'c3bf2d63-f1ea-48a5-a88f-cb561fe08a84'); 
                    }  
                    interface '2d1cc85b-0a82-4411-96e1-1fe63c50e52d' : ComponentExchange 
                        connect source ::> 'Condenser'.'c out'
                        to  target ::> 'Diverter Assembly'.'main2' { 
                        @CapellaID { eid = "2d1cc85b-0a82-4411-96e1-1fe63c50e52d"; sid = "2d1cc85b-0a82-4411-96e1-1fe63c50e52d"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water"; 
                        attribute :>> isOriented = false; 
                        ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '0314e53d-1e02-4681-b8de-1b84f422af1e' : ComponentExchange 
                        connect source ::> 'Diverter Assembly'.'out'
                        to  target ::> 'Evaporator'.'middle' { 
                        @CapellaID { eid = "0314e53d-1e02-4681-b8de-1b84f422af1e"; sid = "0314e53d-1e02-4681-b8de-1b84f422af1e"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water"; 
                        attribute :>> isOriented = false; 
                        allocation '42c0d211-a4b9-4b3d-9747-6bf696b52e86' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Logical Functions'::'Root Logical Function'.'fabaeebd-3e11-4d73-913e-cc9d62e3caca'
                            to componentExchange ::> '0314e53d-1e02-4681-b8de-1b84f422af1e' { 
                            @CapellaID { eid = "42c0d211-a4b9-4b3d-9747-6bf696b52e86"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('42c0d211-a4b9-4b3d-9747-6bf696b52e86'); 
                    }  
                    part '9337fe7e-6172-4883-8cef-bddd1df7d485' : CPart :> 'Condenser'  { 
                        @CapellaID { eid = "9337fe7e-6172-4883-8cef-bddd1df7d485"; sid = "9337fe7e-6172-4883-8cef-bddd1df7d485"; } 
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
                        constraint '99291201-b61b-445c-9367-795619600e7d' : CapellaConstraint { 
                            language "capella:linkedText" /* Single Phase Heat Transfer=((<a href="e8db4983-0311-4bca-bd16-5444cc0f2ace"/>-<a href="30dc3067-4626-44a4-9a2c-941f612a8500"/>)*<a href="0324618e-e8d5-4224-90fd-44ffa69e5a27"/>*<a href="1feb9267-7841-4e28-8506-55903b671bfe"/>) */
                            @CapellaID { eid = "99291201-b61b-445c-9367-795619600e7d"; sid = "99291201-b61b-445c-9367-795619600e7d"; }
                            ref :>> constrainedElements =  ('Distiller Project Project'::'Distiller Project'::'Logical Architecture'::'Structure'::'Logical System'.'9337fe7e-6172-4883-8cef-bddd1df7d485');
                            
                        } 
                        ref :>> ownedConstraints =  ('99291201-b61b-445c-9367-795619600e7d'); 
                    }  
                    part '9448c8b2-4bf6-4a4f-88f6-2307acb4e4f4' : CPart :> 'Evaporator'  { 
                        @CapellaID { eid = "9448c8b2-4bf6-4a4f-88f6-2307acb4e4f4"; sid = "9448c8b2-4bf6-4a4f-88f6-2307acb4e4f4"; } 
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
                    part '72fe3930-d7e1-4e7e-8a0d-8094dc7be5bb' : CPart :> 'Drain'  { 
                        @CapellaID { eid = "72fe3930-d7e1-4e7e-8a0d-8094dc7be5bb"; } 
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
                    part '94df4ae2-f52f-43ba-9cf9-6dfd944839fe' : CPart :> 'Diverter Assembly'  { 
                        @CapellaID { eid = "94df4ae2-f52f-43ba-9cf9-6dfd944839fe"; sid = "94df4ae2-f52f-43ba-9cf9-6dfd944839fe"; } 
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
                    part 'Condenser' : LogicalComponent { 
                        @CapellaID { eid = "a4ba374a-6856-4b91-97ce-bfcced091748"; sid = "a4ba374a-6856-4b91-97ce-bfcced091748"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Condense Steam'.'FIP 1'
                                to allocatingPort ::> 'h in'; 
                            ref :>> ownedPortAllocations =  ('46162c83-3ebc-4708-b929-aa347273b0b9'); 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                                to allocatingPort ::> 'CP 4'; 
                            ref :>> ownedPortAllocations =  ('b1f5fa60-09d7-46f1-9af2-27edd461ff6f'); 
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
                        allocation 'ef0a433e-26d7-42ea-a132-cfda5027a013' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Condense Steam'
                            to component ::> 'Condenser' { 
                            @CapellaID { eid = "ef0a433e-26d7-42ea-a132-cfda5027a013"; sid = "ef0a433e-26d7-42ea-a132-cfda5027a013"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Condense Steam' ; 
                        allocation '29c5330d-a013-4162-b68e-afad7431c7ac' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Heat Water'
                            to component ::> 'Condenser' { 
                            @CapellaID { eid = "29c5330d-a013-4162-b68e-afad7431c7ac"; sid = "29c5330d-a013-4162-b68e-afad7431c7ac"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Heat Water' ; 
                        ref :>> ownedFunctionalAllocation =  ('ef0a433e-26d7-42ea-a132-cfda5027a013',
                        '29c5330d-a013-4162-b68e-afad7431c7ac'); 
                    }  
                    part 'Evaporator' : LogicalComponent { 
                        @CapellaID { eid = "7a2d63d7-9645-4e97-9c97-95030c607f15"; sid = "7a2d63d7-9645-4e97-9c97-95030c607f15"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FOP 1'
                                to allocatingPort ::> 'bottom'; 
                            ref :>> ownedPortAllocations =  ('5b238627-81cb-4731-9cd1-9c3c727ce9f6'); 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FOP 2'
                                to allocatingPort ::> 'top'; 
                            ref :>> ownedPortAllocations =  ('373dfb0d-6ff3-4628-bc2c-cd7f53ad37b5'); 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FOP 2'
                                to allocatingPort ::> 'middle'; 
                            ref allocation 'cad000d6-77c5-4691-b57a-74cb2c1687dd' : PortAllocation
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Boil Water'.'hotDirtyWater'
                                to allocatingPort ::> 'middle'; 
                            ref :>> ownedPortAllocations =  ('f17dea7a-55ed-46b7-bda3-2ca961b29b8f',
                            'cad000d6-77c5-4691-b57a-74cb2c1687dd'); 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FIP 1'
                                to allocatingPort ::> 'heater'; 
                            ref :>> ownedPortAllocations =  ('4c394b9a-3e05-4a5d-b425-6bbe2800f71e'); 
                        }  
                        allocation '687ca8e1-1d25-4f6c-aed6-5b47171b340e' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Boil Water'
                            to component ::> 'Evaporator' { 
                            @CapellaID { eid = "687ca8e1-1d25-4f6c-aed6-5b47171b340e"; sid = "687ca8e1-1d25-4f6c-aed6-5b47171b340e"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Boil Water' ; 
                        ref :>> ownedFunctionalAllocation =  ('687ca8e1-1d25-4f6c-aed6-5b47171b340e'); 
                    }  
                    part 'Drain' : LogicalComponent { 
                        @CapellaID { eid = "8395f00c-1bcf-4c12-b4c9-443368b48ef6"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Drain Residue'.'FIP 1'
                                to allocatingPort ::> 'in'; 
                            ref :>> ownedPortAllocations =  ('eadda30d-6c41-44f8-8ae5-c9cd5362d2d5'); 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Drain Residue'.'FOP 2'
                                to allocatingPort ::> 'out'; 
                            ref :>> ownedPortAllocations =  ('994c03c3-4700-46dd-af63-1443f3a02a3a'); 
                        }  
                        allocation '547a31ab-dc9d-401b-bef4-a27a92f58187' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Drain Residue'
                            to component ::> 'Drain' { 
                            @CapellaID { eid = "547a31ab-dc9d-401b-bef4-a27a92f58187"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'System Functions'.'Distill Water'.'Drain Residue' ; 
                        ref :>> ownedFunctionalAllocation =  ('547a31ab-dc9d-401b-bef4-a27a92f58187'); 
                    }  
                    part 'Diverter Assembly' : LogicalComponent { 
                        @CapellaID { eid = "ef85f143-2e21-41f7-bf9d-8c234a72f59e"; sid = "ef85f143-2e21-41f7-bf9d-8c234a72f59e"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Divert Feed'.'FIP 2'
                                to allocatingPort ::> 'main2'; 
                            ref :>> ownedPortAllocations =  ('c21c01fc-6b34-4ab0-865c-a3ed257fd749'); 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Divert Feed'.'FOP 1'
                                to allocatingPort ::> 'out'; 
                            ref :>> ownedPortAllocations =  ('93c14017-128f-42a4-80a5-85e781d0250a'); 
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
                                allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Divert Feed'.'FOP 2'
                                to allocatingPort ::> 'FOP 2'; 
                            ref :>> ownedPortAllocations =  ('ef104d5d-3443-4502-a704-805d3db430db'); 
                        }  
                        allocation '7274fdcc-08fe-4aa4-84a0-29c439c2a939' : ComponentFunctionalAllocation
                            allocate function ::> 'Logical Functions'::'Root Logical Function'.'System Functions'.'Divert Feed'
                            to component ::> 'Diverter Assembly' { 
                            @CapellaID { eid = "7274fdcc-08fe-4aa4-84a0-29c439c2a939"; sid = "7274fdcc-08fe-4aa4-84a0-29c439c2a939"; } 
                        } 
                        perform 'Logical Functions'::'Root Logical Function'.'System Functions'.'Divert Feed' ; 
                        ref :>> ownedFunctionalAllocation =  ('7274fdcc-08fe-4aa4-84a0-29c439c2a939'); 
                    }  
                    ref :>> ownedConstraints =  ('0e661f1c-50ad-494a-aec3-27849d512a11',
                    'f29961c0-c50c-4a32-96a9-286182c1e0af',
                    'dcf28d8e-8fd8-4baf-bd68-2b562e9ac5d8'); 
                    ref :>> ownedComponentExchanges =  ('68ab1776-6210-4874-b63c-345f4bff3778',
                    'd362cc95-3dac-44f3-a392-7abab0a1b620',
                    '2d1cc85b-0a82-4411-96e1-1fe63c50e52d',
                    '0314e53d-1e02-4681-b8de-1b84f422af1e'); 
                    ref :>> ownedLogicalComponents =  ('Condenser',
                    'Evaporator',
                    'Drain',
                    'Diverter Assembly'); 
                     
                }  
                part 'Operator' : LogicalComponent { 
                    @CapellaID { eid = "9fc7946c-bda5-42b8-a39a-6ac860df9708"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Operate Distiller'.'outWater Control'
                            to allocatingPort ::> 'CP 1'; 
                        ref allocation 'c72da6c1-6d23-4587-971a-e2c4d87fb25e' : PortAllocation
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Tend Water Source'.'FOP 1'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('32935324-1fe5-4c61-ac38-576a65f37f4c',
                        'c72da6c1-6d23-4587-971a-e2c4d87fb25e'); 
                         
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Tend Heat Source'.'FOP 1'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation 'be6ae2e5-f3ca-4fa0-8bd4-45a43776664c' : PortAllocation
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Operate Distiller'.'outPower Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('38b604d3-4716-46e0-9feb-375d9f3f28c3',
                        'be6ae2e5-f3ca-4fa0-8bd4-45a43776664c'); 
                         
                    }  
                    dependency '67afb9eb-c398-49aa-a2f5-ef35ede55cb5'
                        from '950ac749-fc37-48a8-b536-4b70fc0afe12'
                        to  'System Analysis'::'Structure'::'Operator'::'a753723c-e1d0-45e5-b395-cb06e1b6f967' { 
                        @TransfoLink { 
                            @CapellaID { eid = "67afb9eb-c398-49aa-a2f5-ef35ede55cb5"; } 
                        }  
                    }  
                    dependency 'ab203f33-1a41-4935-91a3-05120b7ab8e9'
                        from 'CP 1'::'32935324-1fe5-4c61-ac38-576a65f37f4c'
                        to  'System Analysis'::'Structure'::'Operator'::'CP 1'::'1344f9d5-317e-468f-a0af-20b486194d9e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "ab203f33-1a41-4935-91a3-05120b7ab8e9"; } 
                        }  
                    }  
                    dependency 'df2c635b-9e16-49db-8f9e-6b7eae8703d6'
                        from 'af054c69-4bee-49aa-8dac-269903a44d9e'
                        to  'System Analysis'::'Structure'::'Operator'::'1809d5f9-ceab-432b-887a-a6a600ea5a51' { 
                        @TransfoLink { 
                            @CapellaID { eid = "df2c635b-9e16-49db-8f9e-6b7eae8703d6"; } 
                        }  
                    }  
                    dependency '546d2d17-6e7a-4128-ac1e-ee5c890d9564'
                        from 'CP 1'::'c72da6c1-6d23-4587-971a-e2c4d87fb25e'
                        to  'System Analysis'::'Structure'::'Operator'::'CP 1'::'425a0154-5f18-45fe-845c-3db308013284' { 
                        @TransfoLink { 
                            @CapellaID { eid = "546d2d17-6e7a-4128-ac1e-ee5c890d9564"; } 
                        }  
                    }  
                    dependency '117e42ce-486d-4ed1-83a7-639d5e5e5ba2'
                        from '21d7c394-0573-4007-ba65-6c0d2d625ae9'
                        to  'System Analysis'::'Structure'::'Operator'::'fa303449-e086-435f-b937-2a562fa55c34' { 
                        @TransfoLink { 
                            @CapellaID { eid = "117e42ce-486d-4ed1-83a7-639d5e5e5ba2"; } 
                        }  
                    }  
                    dependency '9d5cc299-1eb9-4ffa-83e7-c17396f187cc'
                        from 'CP 2'::'38b604d3-4716-46e0-9feb-375d9f3f28c3'
                        to  'System Analysis'::'Structure'::'Operator'::'CP 2'::'cb1cf033-e0f6-486d-b4f8-c91ffff3eb68' { 
                        @TransfoLink { 
                            @CapellaID { eid = "9d5cc299-1eb9-4ffa-83e7-c17396f187cc"; } 
                        }  
                    }  
                    dependency '17ad62d3-7566-4d5d-a898-a863f96a009d'
                        from 'CP 2'::'be6ae2e5-f3ca-4fa0-8bd4-45a43776664c'
                        to  'System Analysis'::'Structure'::'Operator'::'CP 2'::'6e2659a3-27d4-4ff8-8e24-6a4c912f2e92' { 
                        @TransfoLink { 
                            @CapellaID { eid = "17ad62d3-7566-4d5d-a898-a863f96a009d"; } 
                        }  
                    }  
                    allocation '950ac749-fc37-48a8-b536-4b70fc0afe12' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Operate Distiller'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "950ac749-fc37-48a8-b536-4b70fc0afe12"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Operate Distiller' ; 
                    allocation 'af054c69-4bee-49aa-8dac-269903a44d9e' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Tend Heat Source'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "af054c69-4bee-49aa-8dac-269903a44d9e"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Tend Heat Source' ; 
                    allocation '21d7c394-0573-4007-ba65-6c0d2d625ae9' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Tend Water Source'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "21d7c394-0573-4007-ba65-6c0d2d625ae9"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Tend Water Source' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('950ac749-fc37-48a8-b536-4b70fc0afe12',
                    'af054c69-4bee-49aa-8dac-269903a44d9e',
                    '21d7c394-0573-4007-ba65-6c0d2d625ae9'); 
                }  
                part 'Water Source' : LogicalComponent { 
                    @CapellaID { eid = "39a38305-7033-45d0-8e66-5be9a03308c7"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Provide Water'.'outDirty Water'
                            to allocatingPort ::> 'dirty'; 
                        ref :>> ownedPortAllocations =  ('cd5529ec-0186-49a1-b281-315b16b0f08d'); 
                         
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Provide Water'.'inWater Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation 'ae2d7b31-56fd-4fc3-9432-51f8fa3603d1' : PortAllocation
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Provide Water'.'FIP 2'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('86bba355-607f-4189-b8a8-8d37d099474f',
                        'ae2d7b31-56fd-4fc3-9432-51f8fa3603d1'); 
                         
                    }  
                    dependency '12c21efc-60e3-40f2-afae-d91d822d1aa8'
                        from 'ebb8f9fb-0d33-4786-9f47-29058ccb6193'
                        to  'System Analysis'::'Structure'::'Water Source'::'9dcc6740-0804-4871-a977-6eaaa8794791' { 
                        @TransfoLink { 
                            @CapellaID { eid = "12c21efc-60e3-40f2-afae-d91d822d1aa8"; } 
                        }  
                    }  
                    dependency '782d2227-2ef9-479d-a24f-7026d36084ac'
                        from 'dirty'::'cd5529ec-0186-49a1-b281-315b16b0f08d'
                        to  'System Analysis'::'Structure'::'Water Source'::'CP 1'::'fd795eaf-b27c-4ea2-ae1a-59c20dde8604' { 
                        @TransfoLink { 
                            @CapellaID { eid = "782d2227-2ef9-479d-a24f-7026d36084ac"; } 
                        }  
                    }  
                    dependency '22634cd3-20c3-46c9-9926-87b28cf8bd3c'
                        from 'CP 2'::'86bba355-607f-4189-b8a8-8d37d099474f'
                        to  'System Analysis'::'Structure'::'Water Source'::'CP 2'::'d2a2f3c7-fad7-4d0a-a1b0-961d2d2e410b' { 
                        @TransfoLink { 
                            @CapellaID { eid = "22634cd3-20c3-46c9-9926-87b28cf8bd3c"; } 
                        }  
                    }  
                    dependency 'd4db9630-444d-4160-81cd-28b8158df575'
                        from 'CP 2'::'ae2d7b31-56fd-4fc3-9432-51f8fa3603d1'
                        to  'System Analysis'::'Structure'::'Water Source'::'CP 2'::'090b51a0-39de-4e80-90b9-b277e9f978d9' { 
                        @TransfoLink { 
                            @CapellaID { eid = "d4db9630-444d-4160-81cd-28b8158df575"; } 
                        }  
                    }  
                    allocation 'ebb8f9fb-0d33-4786-9f47-29058ccb6193' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Provide Water'
                        to component ::> 'Structure'::'Water Source' { 
                        @CapellaID { eid = "ebb8f9fb-0d33-4786-9f47-29058ccb6193"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Provide Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('ebb8f9fb-0d33-4786-9f47-29058ccb6193'); 
                }  
                part 'Heat Source' : LogicalComponent { 
                    @CapellaID { eid = "6ecea0ca-3652-4035-9315-29475746d043"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Generate Heat'.'FOP 2'
                            to allocatingPort ::> 'q in'; 
                        ref :>> ownedPortAllocations =  ('21e7f52a-98f9-43eb-85c9-d5557d8b4c60'); 
                         
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Generate Heat'.'FIP 2'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation 'd936ced3-083f-4991-b643-6a4b7d6ace17' : PortAllocation
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Generate Heat'.'inPower Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('e329549d-b5fb-4844-ae88-d3d1ce61c81e',
                        'd936ced3-083f-4991-b643-6a4b7d6ace17'); 
                         
                    }  
                    dependency '6b621dd8-75f9-4da3-bbde-74708f01621a'
                        from '14ea23eb-08e4-43ff-81b4-25ca055403c1'
                        to  'System Analysis'::'Structure'::'Heat Source'::'d7185c34-9215-4cd2-985d-30015cd45b55' { 
                        @TransfoLink { 
                            @CapellaID { eid = "6b621dd8-75f9-4da3-bbde-74708f01621a"; } 
                        }  
                    }  
                    dependency '0a5272ca-9a66-40e4-983b-7eec7d0394bc'
                        from 'CP 2'::'e329549d-b5fb-4844-ae88-d3d1ce61c81e'
                        to  'System Analysis'::'Structure'::'Heat Source'::'CP 2'::'82089023-19fe-48cf-bd25-49b2c0fbb5cb' { 
                        @TransfoLink { 
                            @CapellaID { eid = "0a5272ca-9a66-40e4-983b-7eec7d0394bc"; } 
                        }  
                    }  
                    dependency '05d02b1f-51d5-4fab-9929-7f19579e6ce0'
                        from 'CP 2'::'d936ced3-083f-4991-b643-6a4b7d6ace17'
                        to  'System Analysis'::'Structure'::'Heat Source'::'CP 2'::'63555d19-4f92-4121-bb46-0fdd05d3f523' { 
                        @TransfoLink { 
                            @CapellaID { eid = "05d02b1f-51d5-4fab-9929-7f19579e6ce0"; } 
                        }  
                    }  
                    allocation '14ea23eb-08e4-43ff-81b4-25ca055403c1' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Generate Heat'
                        to component ::> 'Structure'::'Heat Source' { 
                        @CapellaID { eid = "14ea23eb-08e4-43ff-81b4-25ca055403c1"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Generate Heat' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('14ea23eb-08e4-43ff-81b4-25ca055403c1'); 
                }  
                part 'Water Distribution System' : LogicalComponent { 
                    @CapellaID { eid = "91e447c8-67c7-46dc-bad1-385f741314ee"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Distribute Clean Water'.'outSafe Drinking Water'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('d550b847-c002-4ec2-8522-8d70989a4e74'); 
                         
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Store Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'CP 3'; 
                        ref :>> ownedPortAllocations =  ('93aa7934-2874-4310-8bf6-439b6c1d7a48'); 
                    }  
                    dependency '5d0f6d6a-9064-4533-8b4f-1235998096ec'
                        from 'adb8b9e5-abf8-4c2f-b19c-9a7420df4023'
                        to  'System Analysis'::'Structure'::'Water Distribution System'::'a84474b5-2910-4d18-b8e5-522165c06214' { 
                        @TransfoLink { 
                            @CapellaID { eid = "5d0f6d6a-9064-4533-8b4f-1235998096ec"; } 
                        }  
                    }  
                    dependency 'f41499f2-3e50-438c-a134-46d13cfdb2d8'
                        from '4ab49737-b29d-4e0a-bede-4365636e7002'
                        to  'System Analysis'::'Structure'::'Water Distribution System'::'16ba6e4b-4e34-4677-8ddd-b6cda8dc16de' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f41499f2-3e50-438c-a134-46d13cfdb2d8"; } 
                        }  
                    }  
                    dependency '5be1fa25-d4b6-4a70-badf-c4081eadd447'
                        from 'CP 2'::'d550b847-c002-4ec2-8522-8d70989a4e74'
                        to  'System Analysis'::'Structure'::'Water Distribution System'::'CP 2'::'75738201-f633-47f8-801d-9df81642edec' { 
                        @TransfoLink { 
                            @CapellaID { eid = "5be1fa25-d4b6-4a70-badf-c4081eadd447"; } 
                        }  
                    }  
                    allocation 'adb8b9e5-abf8-4c2f-b19c-9a7420df4023' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Store Clean Water'
                        to component ::> 'Structure'::'Water Distribution System' { 
                        @CapellaID { eid = "adb8b9e5-abf8-4c2f-b19c-9a7420df4023"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Store Clean Water' ; 
                    allocation '4ab49737-b29d-4e0a-bede-4365636e7002' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Distribute Clean Water'
                        to component ::> 'Structure'::'Water Distribution System' { 
                        @CapellaID { eid = "4ab49737-b29d-4e0a-bede-4365636e7002"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Distribute Clean Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('adb8b9e5-abf8-4c2f-b19c-9a7420df4023',
                    '4ab49737-b29d-4e0a-bede-4365636e7002'); 
                }  
                part 'Water USer' : LogicalComponent { 
                    @CapellaID { eid = "4a2ee10f-c636-4b4f-afb4-1f2b13ba51cd"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Get Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('e726d0c3-43fa-4637-8361-4a00a531ccd7'); 
                         
                    }  
                    dependency '33d8b6e7-953f-4220-8c0f-13540b850e69'
                        from 'f0d15466-3152-41a1-bc24-084a4f7ae594'
                        to  'System Analysis'::'Structure'::'Water USer'::'c56d4781-7575-4ab4-bee0-ae4914e7c151' { 
                        @TransfoLink { 
                            @CapellaID { eid = "33d8b6e7-953f-4220-8c0f-13540b850e69"; } 
                        }  
                    }  
                    dependency '88ef163e-3011-4fe5-9dd6-91117b8ed636'
                        from 'CP 1'::'e726d0c3-43fa-4637-8361-4a00a531ccd7'
                        to  'System Analysis'::'Structure'::'Water USer'::'CP 1'::'657639a4-4597-4a9b-94e6-8d0d20feefc4' { 
                        @TransfoLink { 
                            @CapellaID { eid = "88ef163e-3011-4fe5-9dd6-91117b8ed636"; } 
                        }  
                    }  
                    allocation 'f0d15466-3152-41a1-bc24-084a4f7ae594' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Get Clean Water'
                        to component ::> 'Structure'::'Water USer' { 
                        @CapellaID { eid = "f0d15466-3152-41a1-bc24-084a4f7ae594"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Get Clean Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('f0d15466-3152-41a1-bc24-084a4f7ae594'); 
                }  
                part 'Waste Management System' : LogicalComponent { 
                    @CapellaID { eid = "dd444e3c-8338-4e5b-9343-f16dc3434fdf"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Discharge Residue'.'FIP 1'
                            to allocatingPort ::> 'sludge'; 
                        ref :>> ownedPortAllocations =  ('87cf1545-d811-4cf7-abfe-ebc466e4c99e'); 
                    }  
                    dependency 'b042a2f7-f28d-4a9a-b929-7adfcdbb49b9'
                        from 'c0907788-49f3-4f44-ad4e-2193d2fda823'
                        to  'System Analysis'::'Structure'::'Waste Management System'::'7b56a037-aa8a-4727-a197-0e5fd94360df' { 
                        @TransfoLink { 
                            @CapellaID { eid = "b042a2f7-f28d-4a9a-b929-7adfcdbb49b9"; } 
                        }  
                    }  
                    allocation 'c0907788-49f3-4f44-ad4e-2193d2fda823' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Discharge Residue'
                        to component ::> 'Structure'::'Waste Management System' { 
                        @CapellaID { eid = "c0907788-49f3-4f44-ad4e-2193d2fda823"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Discharge Residue' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('c0907788-49f3-4f44-ad4e-2193d2fda823'); 
                }  
                part 'Excess Water Discharge' : LogicalComponent { 
                    @CapellaID { eid = "19d1ec52-a0c8-443a-86ef-dad8c8739eea"; sid = "19d1ec52-a0c8-443a-86ef-dad8c8739eea"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
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
                            allocate allocatedPort ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Discharge Excess Water'.'FIP 1'
                            to allocatingPort ::> 'FIP 1'; 
                        ref :>> ownedPortAllocations =  ('46f27ff8-9cdc-49e0-b4fa-b714e3318545'); 
                    }  
                    allocation '60861243-2f35-40f8-a378-c4e7a7f56553' : ComponentFunctionalAllocation
                        allocate function ::> 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Discharge Excess Water'
                        to component ::> 'Structure'::'Excess Water Discharge' { 
                        @CapellaID { eid = "60861243-2f35-40f8-a378-c4e7a7f56553"; sid = "60861243-2f35-40f8-a378-c4e7a7f56553"; } 
                    } 
                    perform 'Logical Functions'::'Root Logical Function'.'Actor Functions'.'Discharge Excess Water' ; 
                    ref :>> ownedFunctionalAllocation =  ('60861243-2f35-40f8-a378-c4e7a7f56553'); 
                }  
            } 
            package 'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "7e933f41-3fdd-43b1-b673-e4b6b0c8abb9"; sid = "7e933f41-3fdd-43b1-b673-e4b6b0c8abb9"; } 
                use case 'Operate Distiller' : CapabilityRealization { 
                    @CapellaID { eid = "ebf4dbb6-3921-4359-a9ec-8b0a59894061"; sid = "ebf4dbb6-3921-4359-a9ec-8b0a59894061"; } 
                    ref action '2e8160ee-68b9-4fb4-b0b6-ed75cf389aa6' = 'Logical Functions'::'Root Logical Function'.'Test chain - Distill and Distribute Water'; 
                    dependency '3879a05f-e261-4079-bfc6-1dbf56640c6b'
                        from '2e8160ee-68b9-4fb4-b0b6-ed75cf389aa6'
                        to  'System Analysis'::'Capabilities'::'Operate Distiller'::'2ec2ec95-cbfc-4dd1-a0f7-9cd727b587eb' { 
                        @TransfoLink { 
                            @CapellaID { eid = "3879a05f-e261-4079-bfc6-1dbf56640c6b"; } 
                        }  
                    }  
                     
                }  
            } 
        } 
        package 'Physical Architecture' {
            @PackageMeta {
                type = "PhysicalArchitecture";
            } 
            @CapellaID { eid = "99dbdc7b-e875-4169-9786-a4d4b198d34b"; } 
            package 'Interfaces' {
                @PackageMeta {
                    type = "InterfacePkg";
                } 
                @CapellaID { eid = "bfbcf76f-b757-441d-a4cf-ed312b5323ef"; } 
            } 
            package 'Data' {
                @PackageMeta {
                    type = "DataPkg";
                } 
                @CapellaID { eid = "121d236d-4622-4676-8d2d-a513ffff454d"; } 
            } 
            constraint '1ad8651c-3ce4-4381-9ec6-c807d18bce55' : CapellaConstraint { 
                language "capella:linkedText" /* Phase Change Heat Transfer=(<a href="ccfaa68b-325b-4984-8804-ced9f3b18819"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                @CapellaID { eid = "1ad8651c-3ce4-4381-9ec6-c807d18bce55"; }
                ref :>> constrainedElements =  ('Structure'::'a47555fc-935f-408d-96db-4203c80f91cf');
                
            } 
            constraint 'bfeb0fa2-9bdf-4125-b5fc-fe26be37224c' : CapellaConstraint { 
                language "capella:linkedText" /* Phase Change Heat Transfer = (<a href="6e33c9fe-194b-45c0-832f-e874d2b9b80e"/>*<a href="1334b6d8-354d-41ea-83a9-1bc10d369577"/>) */
                @CapellaID { eid = "bfeb0fa2-9bdf-4125-b5fc-fe26be37224c"; }
                
            } 
            dependency '00fbc77b-994e-4a12-bf5d-73bc06e311bd'
                from 'Physical Architecture'::'1ad8651c-3ce4-4381-9ec6-c807d18bce55'
                to  'Logical Architecture'::'Structure'::'Logical System'::'d362cc95-3dac-44f3-a392-7abab0a1b620'::'1d9b8e84-665a-4955-8cf0-a4f3baf0daf1' { 
                @TransfoLink { 
                    @CapellaID { eid = "00fbc77b-994e-4a12-bf5d-73bc06e311bd"; } 
                }  
            }  
            dependency '74d8b205-6c2d-432f-a80a-f1daf858829b'
                from 'Physical Architecture'::'bfeb0fa2-9bdf-4125-b5fc-fe26be37224c'
                to  'Logical Architecture'::'Structure'::'Logical System'::'d362cc95-3dac-44f3-a392-7abab0a1b620'::'c3bf2d63-f1ea-48a5-a88f-cb561fe08a84' { 
                @TransfoLink { 
                    @CapellaID { eid = "74d8b205-6c2d-432f-a80a-f1daf858829b"; } 
                }  
            }  
            package 'Structure' {
                @PackageMeta {
                    type = "PhysicalComponentPkg";
                } 
                @CapellaID { eid = "88529b0f-a74c-4693-a72b-5c11c0c71b1b"; } 
                interface '04b8b95b-b6be-4652-9565-c3e5f76b6b98' : ComponentExchange 
                    connect source ::> 'Water Source'.'dirty'
                    to  target ::> 'Physical System'.'Condenser'.'c in' { 
                    @CapellaID { eid = "04b8b95b-b6be-4652-9565-c3e5f76b6b98"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation '39cac112-743e-431e-aa1e-b3d9768772cc' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'d2fadfc2-5ca1-4fe0-aee5-37b8987689b5'
                        to componentExchange ::> 'Structure'::'04b8b95b-b6be-4652-9565-c3e5f76b6b98' { 
                        @CapellaID { eid = "39cac112-743e-431e-aa1e-b3d9768772cc"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('39cac112-743e-431e-aa1e-b3d9768772cc'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Dirty Water'); 
                }  
                interface 'fd33e4a2-0c32-454e-8dc8-d5b1f36baa67' : ComponentExchange 
                    connect source ::> 'Water Distribution System'.'CP 2'
                    to  target ::> 'Water USer'.'CP 1' { 
                    @CapellaID { eid = "fd33e4a2-0c32-454e-8dc8-d5b1f36baa67"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Faucet"; 
                    attribute :>> isOriented = false; 
                    allocation 'b350f797-5f1d-45f2-871d-7b120d399c1e' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'d86eee53-1e17-472a-a454-779e07b4c76b'
                        to componentExchange ::> 'Structure'::'fd33e4a2-0c32-454e-8dc8-d5b1f36baa67' { 
                        @CapellaID { eid = "b350f797-5f1d-45f2-871d-7b120d399c1e"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('b350f797-5f1d-45f2-871d-7b120d399c1e'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'fbbd4370-b605-4562-ba0b-bd3e4372cf0d' : ComponentExchange 
                    connect source ::> 'Operator'.'CP 1'
                    to  target ::> 'Water Source'.'CP 2' { 
                    @CapellaID { eid = "fbbd4370-b605-4562-ba0b-bd3e4372cf0d"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Supply"; 
                    attribute :>> isOriented = false; 
                    allocation '1d397708-daaf-4ebf-aa0b-d14efe10edf3' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'02ad4ead-4d78-4fcf-b476-906943c4ff06'
                        to componentExchange ::> 'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d' { 
                        @CapellaID { eid = "1d397708-daaf-4ebf-aa0b-d14efe10edf3"; } 
                    }  
                    allocation '0fa21628-f75a-4d97-b575-53e9483f53d8' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'947328ac-5f47-4745-a87b-c30aba98372a'
                        to componentExchange ::> 'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d' { 
                        @CapellaID { eid = "0fa21628-f75a-4d97-b575-53e9483f53d8"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('1d397708-daaf-4ebf-aa0b-d14efe10edf3',
                    '0fa21628-f75a-4d97-b575-53e9483f53d8'); 
                     
                }  
                interface 'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3' : ComponentExchange 
                    connect source ::> 'Operator'.'CP 2'
                    to  target ::> 'Heat Source'.'CP 2' { 
                    @CapellaID { eid = "bcf4865f-d2de-4d68-bc0e-f085e9e81ed3"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Operating Fuel"; 
                    attribute :>> isOriented = false; 
                    allocation 'fd2aa839-7ecb-4fdb-bf3e-e14476b36c8e' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'90dd0efb-797b-4506-a33e-8d26b1b6289b'
                        to componentExchange ::> 'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3' { 
                        @CapellaID { eid = "fd2aa839-7ecb-4fdb-bf3e-e14476b36c8e"; } 
                    }  
                    allocation '118acce6-b439-49eb-886a-9a59721d42d5' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'8d255656-b25a-46bf-858e-d6ba28161f3b'
                        to componentExchange ::> 'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3' { 
                        @CapellaID { eid = "118acce6-b439-49eb-886a-9a59721d42d5"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('fd2aa839-7ecb-4fdb-bf3e-e14476b36c8e',
                    '118acce6-b439-49eb-886a-9a59721d42d5'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Heat Control',
                    'System Analysis'::'Data'::'Water Supply Control'); 
                }  
                interface 'b9c1cf0f-e96a-4dba-bb30-3b88599091e6' : ComponentExchange 
                    connect source ::> 'Physical System'.'Drain'.'out'
                    to  target ::> 'Waste Management System'.'sludge' { 
                    @CapellaID { eid = "b9c1cf0f-e96a-4dba-bb30-3b88599091e6"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Water Waste"; 
                    attribute :>> isOriented = false; 
                    allocation 'afaaba97-9266-485b-8462-a9a196ef759e' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'c27e7350-f701-46fd-b455-c3f99a6d9b3d'
                        to componentExchange ::> 'Structure'::'b9c1cf0f-e96a-4dba-bb30-3b88599091e6' { 
                        @CapellaID { eid = "afaaba97-9266-485b-8462-a9a196ef759e"; } 
                    }  
                    allocation 'dc0e4ecc-9a35-4c65-89b8-e5d537f11bdc' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'406cefff-802f-442d-8f92-ac38277f7136'
                        to componentExchange ::> 'Structure'::'b9c1cf0f-e96a-4dba-bb30-3b88599091e6' { 
                        @CapellaID { eid = "dc0e4ecc-9a35-4c65-89b8-e5d537f11bdc"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('afaaba97-9266-485b-8462-a9a196ef759e',
                    'dc0e4ecc-9a35-4c65-89b8-e5d537f11bdc'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Sludge'); 
                }  
                interface 'a47555fc-935f-408d-96db-4203c80f91cf' : ComponentExchange 
                    connect source ::> 'Physical System'.'Condenser'.'CP 4'
                    to  target ::> 'Water Distribution System'.'CP 3' { 
                    @CapellaID { eid = "a47555fc-935f-408d-96db-4203c80f91cf"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Distribution Pipeline"; 
                    attribute :>> isOriented = false; 
                    allocation 'd1e6ee20-5dac-4749-bc56-ad61f896929f' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'4689b116-bb9c-4af2-a3ca-935679587f3b'
                        to componentExchange ::> 'Structure'::'a47555fc-935f-408d-96db-4203c80f91cf' { 
                        @CapellaID { eid = "d1e6ee20-5dac-4749-bc56-ad61f896929f"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('d1e6ee20-5dac-4749-bc56-ad61f896929f'); 
                     
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Clean Water'); 
                }  
                interface 'eac90a95-6346-4c9a-bb16-b3fa78469415' : ComponentExchange 
                    connect source ::> 'Heat Source'.'q in'
                    to  target ::> 'Physical System'.'Evaporator'.'heater' { 
                    @CapellaID { eid = "eac90a95-6346-4c9a-bb16-b3fa78469415"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Heat Supply"; 
                    attribute :>> isOriented = false; 
                    allocation 'ec3f1b1b-8ecf-4266-b620-236f3071946d' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'fbf93101-8edf-4ee0-9a61-b7a8209c30ee'
                        to componentExchange ::> 'Structure'::'eac90a95-6346-4c9a-bb16-b3fa78469415' { 
                        @CapellaID { eid = "ec3f1b1b-8ecf-4266-b620-236f3071946d"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('ec3f1b1b-8ecf-4266-b620-236f3071946d'); 
                     
                }  
                interface 'e669304f-ddd7-4b80-8895-5c08f50f40ca' : ComponentExchange 
                    connect source ::> 'Physical System'.'Splitter'.'Splitter Excess'
                    to  target ::> 'Excess Water Discharge'.'FIP 1' { 
                    @CapellaID { eid = "e669304f-ddd7-4b80-8895-5c08f50f40ca"; } 
                    attribute :>> kind = ComponentExchangeKind::FLOW; 
                    attribute :>> interfaceName = "Excess Water"; 
                    attribute :>> isOriented = false; 
                    allocation '2b0782f2-5293-413e-8ae8-350a155a7d64' : ComponentExchangeFunctionalExchangeAllocation
                        allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'887d30a2-1d82-47f5-8cd6-b59f75bf6218'
                        to componentExchange ::> 'Structure'::'e669304f-ddd7-4b80-8895-5c08f50f40ca' { 
                        @CapellaID { eid = "2b0782f2-5293-413e-8ae8-350a155a7d64"; } 
                    }  
                    ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('2b0782f2-5293-413e-8ae8-350a155a7d64'); 
                    ref :>> convoyedInformations =  ('System Analysis'::'Data'::'Dirty Water'); 
                }  
                part '3d0b33a9-f0c2-46f1-8f27-b1589e36b580' : CPart :> 'Physical System'  { 
                    @CapellaID { eid = "3d0b33a9-f0c2-46f1-8f27-b1589e36b580"; } 
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
                part '7c0e4e61-dac6-43c9-a7fa-6d887bbb8674' : CPart :> 'Operator'  { 
                    @CapellaID { eid = "7c0e4e61-dac6-43c9-a7fa-6d887bbb8674"; } 
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
                part '4e58e1db-8a0c-4519-814d-a52980807841' : CPart :> 'Water Source'  { 
                    @CapellaID { eid = "4e58e1db-8a0c-4519-814d-a52980807841"; } 
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
                part '1780a605-09de-41a6-9f7c-385a8ef5e056' : CPart :> 'Heat Source'  { 
                    @CapellaID { eid = "1780a605-09de-41a6-9f7c-385a8ef5e056"; } 
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
                part '07c45558-3817-4b97-83d4-f113c6a86678' : CPart :> 'Water Distribution System'  { 
                    @CapellaID { eid = "07c45558-3817-4b97-83d4-f113c6a86678"; } 
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
                part '49dcd966-0044-4de4-b21f-2bc98a592321' : CPart :> 'Water USer'  { 
                    @CapellaID { eid = "49dcd966-0044-4de4-b21f-2bc98a592321"; } 
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
                part '3392f3ee-ab42-40d5-884a-3b1f2e595101' : CPart :> 'Waste Management System'  { 
                    @CapellaID { eid = "3392f3ee-ab42-40d5-884a-3b1f2e595101"; } 
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
                part '8abf5a65-b7f8-409e-872f-04013ef1b9f7' : CPart :> 'Excess Water Discharge'  { 
                    @CapellaID { eid = "8abf5a65-b7f8-409e-872f-04013ef1b9f7"; } 
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
                dependency '8fd94908-a9eb-4a1a-9c05-d765193680fe'
                    from 'Structure'::'7c0e4e61-dac6-43c9-a7fa-6d887bbb8674'
                    to  'Logical Architecture'::'Structure'::'44e58cd1-26af-44b8-abc7-fb38d7757340' { 
                    @TransfoLink { 
                        @CapellaID { eid = "8fd94908-a9eb-4a1a-9c05-d765193680fe"; } 
                    }  
                }  
                dependency 'a3a3c0bf-b1c1-423b-948e-a06e2987ac5d'
                    from 'Structure'::'4e58e1db-8a0c-4519-814d-a52980807841'
                    to  'Logical Architecture'::'Structure'::'fe82dfec-fb39-4964-b34e-fe9448b18e53' { 
                    @TransfoLink { 
                        @CapellaID { eid = "a3a3c0bf-b1c1-423b-948e-a06e2987ac5d"; } 
                    }  
                }  
                dependency 'be3e9024-1078-4666-b29d-a45f149cc57e'
                    from 'Structure'::'1780a605-09de-41a6-9f7c-385a8ef5e056'
                    to  'Logical Architecture'::'Structure'::'1928ee0a-9aa1-40d1-ac32-c45203228e2d' { 
                    @TransfoLink { 
                        @CapellaID { eid = "be3e9024-1078-4666-b29d-a45f149cc57e"; } 
                    }  
                }  
                dependency 'ee26ccb7-020f-4f54-917e-5946b33b5d2c'
                    from 'Structure'::'07c45558-3817-4b97-83d4-f113c6a86678'
                    to  'Logical Architecture'::'Structure'::'8e3bd06f-641c-4546-a43d-f67b20d3b0d9' { 
                    @TransfoLink { 
                        @CapellaID { eid = "ee26ccb7-020f-4f54-917e-5946b33b5d2c"; } 
                    }  
                }  
                dependency '1236778a-c64d-4338-a129-c955d1056212'
                    from 'Structure'::'49dcd966-0044-4de4-b21f-2bc98a592321'
                    to  'Logical Architecture'::'Structure'::'6384c5d9-6116-4089-a7fb-f75e2f425a31' { 
                    @TransfoLink { 
                        @CapellaID { eid = "1236778a-c64d-4338-a129-c955d1056212"; } 
                    }  
                }  
                dependency '45bf6ae5-9ed0-4372-a7b5-bae3c2846b3c'
                    from 'Structure'::'3392f3ee-ab42-40d5-884a-3b1f2e595101'
                    to  'Logical Architecture'::'Structure'::'7cabd6a1-3236-454a-b043-22f373f03c4a' { 
                    @TransfoLink { 
                        @CapellaID { eid = "45bf6ae5-9ed0-4372-a7b5-bae3c2846b3c"; } 
                    }  
                }  
                dependency '068df33c-7a0f-4db0-8ce7-8a091f555192'
                    from 'Structure'::'04b8b95b-b6be-4652-9565-c3e5f76b6b98'::'39cac112-743e-431e-aa1e-b3d9768772cc'
                    to  'Logical Architecture'::'Structure'::'38a7788a-3ef0-4a10-ad41-a1befb9aa9ed'::'aa69b4b2-7491-469d-9c7a-1bf802b9e46c' { 
                    @TransfoLink { 
                        @CapellaID { eid = "068df33c-7a0f-4db0-8ce7-8a091f555192"; } 
                    }  
                }  
                dependency 'a86f2ce6-e477-466e-b88d-1d40282aac87'
                    from 'Structure'::'8abf5a65-b7f8-409e-872f-04013ef1b9f7'
                    to  'Logical Architecture'::'Structure'::'3dd22111-ff9e-4c9f-be38-7b4601b54b4b' { 
                    @TransfoLink { 
                        @CapellaID { eid = "a86f2ce6-e477-466e-b88d-1d40282aac87"; } 
                    }  
                }  
                dependency '586f62d5-e115-43b3-8ffd-ed9ebd1c41f2'
                    from 'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d'::'1d397708-daaf-4ebf-aa0b-d14efe10edf3'
                    to  'Logical Architecture'::'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'::'b91b07a7-14c1-4e2b-80de-4fcf5394a475' { 
                    @TransfoLink { 
                        @CapellaID { eid = "586f62d5-e115-43b3-8ffd-ed9ebd1c41f2"; } 
                    }  
                }  
                dependency '27086beb-f36b-45b8-a9ab-a2d28cb2a749'
                    from 'Structure'::'fd33e4a2-0c32-454e-8dc8-d5b1f36baa67'::'b350f797-5f1d-45f2-871d-7b120d399c1e'
                    to  'Logical Architecture'::'Structure'::'2015732c-1abd-41ed-a97c-2055ae160b54'::'8356e117-7725-4455-8728-dae35c7778d2' { 
                    @TransfoLink { 
                        @CapellaID { eid = "27086beb-f36b-45b8-a9ab-a2d28cb2a749"; } 
                    }  
                }  
                dependency 'a3c8ef6f-7354-4b2e-b004-1bbbdbd60887'
                    from 'Structure'::'b9c1cf0f-e96a-4dba-bb30-3b88599091e6'::'afaaba97-9266-485b-8462-a9a196ef759e'
                    to  'Logical Architecture'::'Structure'::'85f0ec90-9cd0-41f6-af1a-7c9a4d5f572a'::'30d1dd18-a03d-4f01-b765-1ee4feebc9b6' { 
                    @TransfoLink { 
                        @CapellaID { eid = "a3c8ef6f-7354-4b2e-b004-1bbbdbd60887"; } 
                    }  
                }  
                dependency '7d3ed36e-53cf-4063-be78-276accc10899'
                    from 'Structure'::'a47555fc-935f-408d-96db-4203c80f91cf'::'d1e6ee20-5dac-4749-bc56-ad61f896929f'
                    to  'Logical Architecture'::'Structure'::'228ad0de-a4ed-43c9-bf0f-ab2e423ae615'::'31fed5a1-d669-4f28-b1d4-700d2cbc52a5' { 
                    @TransfoLink { 
                        @CapellaID { eid = "7d3ed36e-53cf-4063-be78-276accc10899"; } 
                    }  
                }  
                dependency 'c3ad54a1-07ac-4846-906c-f33b7747386f'
                    from 'Structure'::'fbbd4370-b605-4562-ba0b-bd3e4372cf0d'::'0fa21628-f75a-4d97-b575-53e9483f53d8'
                    to  'Logical Architecture'::'Structure'::'fd50370d-e785-4377-bdba-67841a8c013c'::'4584f3a4-8c64-4ab5-944f-125201ffdc6a' { 
                    @TransfoLink { 
                        @CapellaID { eid = "c3ad54a1-07ac-4846-906c-f33b7747386f"; } 
                    }  
                }  
                dependency '44ea5881-cb94-4d06-96e2-a97d24e173bd'
                    from 'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3'::'fd2aa839-7ecb-4fdb-bf3e-e14476b36c8e'
                    to  'Logical Architecture'::'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'::'2df983cd-2f8b-4033-bf2d-1da746b7dedf' { 
                    @TransfoLink { 
                        @CapellaID { eid = "44ea5881-cb94-4d06-96e2-a97d24e173bd"; } 
                    }  
                }  
                dependency '0e97979c-39a8-43e0-9c99-d9893de8d600'
                    from 'Structure'::'eac90a95-6346-4c9a-bb16-b3fa78469415'::'ec3f1b1b-8ecf-4266-b620-236f3071946d'
                    to  'Logical Architecture'::'Structure'::'c6e98fb9-2f71-4412-9e1a-191c1c344611'::'5ccd2b0c-9b1b-4149-8e83-9507af533adb' { 
                    @TransfoLink { 
                        @CapellaID { eid = "0e97979c-39a8-43e0-9c99-d9893de8d600"; } 
                    }  
                }  
                dependency 'ba220617-bf76-4c8a-9836-d2c4b60d047d'
                    from 'Structure'::'bcf4865f-d2de-4d68-bc0e-f085e9e81ed3'::'118acce6-b439-49eb-886a-9a59721d42d5'
                    to  'Logical Architecture'::'Structure'::'fa5aaeef-badc-4744-9f48-1020193f87c6'::'fa58bd87-e4e5-41ee-8238-0a8b130fa737' { 
                    @TransfoLink { 
                        @CapellaID { eid = "ba220617-bf76-4c8a-9836-d2c4b60d047d"; } 
                    }  
                }  
                interface 'bccb38b3-121a-4260-bc37-18c445875d0f' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Water Distiller'.'Condenser'.'PP 2'
                    to targetPhysicalPort ::> 'Water Distribution System'.'PP 3' {
                    @CapellaID { eid = "bccb38b3-121a-4260-bc37-18c445875d0f"; } 
                    attribute :>> interfaceName = "Clean Water Distribution Pipeline"; 
                     
                }  
                interface '2672b9e1-f3d6-49de-9ce4-fa4ad3e4c545' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Heat Source'.'PP 3'
                    to targetPhysicalPort ::> 'Physical System'.'Water Distiller'.'Mechanical Boiler'.'PP 3' {
                    @CapellaID { eid = "2672b9e1-f3d6-49de-9ce4-fa4ad3e4c545"; } 
                    attribute :>> interfaceName = "Heat Pipe"; 
                     
                }  
                interface 'ae8cbcbd-02d1-454d-8d4e-d21d28f76c75' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Water Distiller'.'Diverter Assembly'.'Splitter'.'splitter out'
                    to targetPhysicalPort ::> 'Excess Water Discharge'.'PP 2' {
                    @CapellaID { eid = "ae8cbcbd-02d1-454d-8d4e-d21d28f76c75"; } 
                    attribute :>> interfaceName = "Excess Water Pipeline"; 
                     
                }  
                interface 'a491b707-1647-4fc0-92e6-4cf6c1d28924' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Water Source'.'PP 4'
                    to targetPhysicalPort ::> 'Physical System'.'Water Distiller'.'Condenser'.'PP 4' {
                    @CapellaID { eid = "a491b707-1647-4fc0-92e6-4cf6c1d28924"; } 
                    attribute :>> interfaceName = "Source Pipeline"; 
                     
                }  
                interface '23c18e83-ffb0-4ce4-ab06-fadbdcbabc8f' : PhysicalLink 
                    connect sourcePhysicalPort ::> 'Physical System'.'Water Distiller'.'Drain Valve'.'PP 2'
                    to targetPhysicalPort ::> 'Waste Management System'.'PP 2' {
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
                    interface '743ea180-df8f-425e-b272-c8312387b4f3' : ComponentExchange 
                        connect source ::> 'Evaporator'.'bottom'
                        to  target ::> 'Drain'.'in' { 
                        @CapellaID { eid = "743ea180-df8f-425e-b272-c8312387b4f3"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Drainage"; 
                        attribute :>> isOriented = false; 
                        allocation 'd06ceeac-99c3-4971-9621-59825431e696' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'2dedf276-8988-40b1-9f20-fa6aa4bfb1bc'
                            to componentExchange ::> '743ea180-df8f-425e-b272-c8312387b4f3' { 
                            @CapellaID { eid = "d06ceeac-99c3-4971-9621-59825431e696"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('d06ceeac-99c3-4971-9621-59825431e696'); 
                         
                    }  
                    interface '780e948a-75d4-45c4-8985-a5c2f2fe9d18' : ComponentExchange 
                        connect source ::> 'Evaporator'.'top'
                        to  target ::> 'Condenser'.'h in' { 
                        @CapellaID { eid = "780e948a-75d4-45c4-8985-a5c2f2fe9d18"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Steam"; 
                        attribute :>> isOriented = false; 
                        allocation '3c6b9869-bf80-4fca-93e7-4b90d9081f45' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'afc69fbe-0dd9-480b-aa5f-b72c8a537751'
                            to componentExchange ::> '780e948a-75d4-45c4-8985-a5c2f2fe9d18' { 
                            @CapellaID { eid = "3c6b9869-bf80-4fca-93e7-4b90d9081f45"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('3c6b9869-bf80-4fca-93e7-4b90d9081f45'); 
                         
                    }  
                    interface '6351d22d-1038-4e6b-bbbd-bbad47a8ee71' : ComponentExchange 
                        connect source ::> 'Splitter'.'Backup to Feed Valve'
                        to  target ::> 'Feed'.'Back up In' { 
                        @CapellaID { eid = "6351d22d-1038-4e6b-bbbd-bbad47a8ee71"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Dirty Water Backup"; 
                        attribute :>> isOriented = false; 
                    }  
                    interface '99161e49-e6a0-421d-954a-926fdda252f3' : ComponentExchange 
                        connect source ::> 'Splitter'.'To Feed Valve'
                        to  target ::> 'Feed'.'Main in' { 
                        @CapellaID { eid = "99161e49-e6a0-421d-954a-926fdda252f3"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Dirt Water Feed"; 
                        attribute :>> isOriented = false; 
                        allocation 'd7b4558c-a380-4ab5-b149-fdf2ceb14aec' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'4babf37b-7c92-4d8e-b68f-bb3643e0d97c'
                            to componentExchange ::> '99161e49-e6a0-421d-954a-926fdda252f3' { 
                            @CapellaID { eid = "d7b4558c-a380-4ab5-b149-fdf2ceb14aec"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('d7b4558c-a380-4ab5-b149-fdf2ceb14aec'); 
                    }  
                    interface 'ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c' : ComponentExchange 
                        connect source ::> 'Condenser'.'c out'
                        to  target ::> 'Splitter'.'Condenser In' { 
                        @CapellaID { eid = "ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water CS"; 
                        attribute :>> isOriented = false; 
                        allocation '1886db86-1ce7-4796-9a28-145850db0390' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'2b1b287f-82fd-4aa3-bc91-41164bfa7f1c'
                            to componentExchange ::> 'ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c' { 
                            @CapellaID { eid = "1886db86-1ce7-4796-9a28-145850db0390"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('1886db86-1ce7-4796-9a28-145850db0390'); 
                    }  
                    interface '09f67067-4cbf-484d-a8d6-a85891f819b8' : ComponentExchange 
                        connect source ::> 'Feed'.'out'
                        to  target ::> 'Evaporator'.'middle' { 
                        @CapellaID { eid = "09f67067-4cbf-484d-a8d6-a85891f819b8"; } 
                        attribute :>> kind = ComponentExchangeKind::FLOW; 
                        attribute :>> interfaceName = "Hot Water FE"; 
                        attribute :>> isOriented = false; 
                        allocation '4ebf897b-2c4e-4858-9a58-2202cff45e29' : ComponentExchangeFunctionalExchangeAllocation
                            allocate functionalExchange ::> 'Physical Functions'::'Root Physical Function'.'1e0bb105-78e7-4461-b461-3815eebe0022'
                            to componentExchange ::> '09f67067-4cbf-484d-a8d6-a85891f819b8' { 
                            @CapellaID { eid = "4ebf897b-2c4e-4858-9a58-2202cff45e29"; } 
                        }  
                        ref :>> ownedComponentExchangeFunctionalExchangeAllocations =  ('4ebf897b-2c4e-4858-9a58-2202cff45e29'); 
                    }  
                    part 'd987159f-4cac-42a8-8d33-8a892bd9d4fb' : CPart :> 'Condenser'  { 
                        @CapellaID { eid = "d987159f-4cac-42a8-8d33-8a892bd9d4fb"; } 
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
                        constraint 'c98141c2-a58d-434c-bec9-14bd625d6e0a' : CapellaConstraint { 
                            language "capella:linkedText" /* Single Phase Heat Transfer=((<a href="e8db4983-0311-4bca-bd16-5444cc0f2ace"/>-<a href="30dc3067-4626-44a4-9a2c-941f612a8500"/>)*<a href="0324618e-e8d5-4224-90fd-44ffa69e5a27"/>*<a href="1feb9267-7841-4e28-8506-55903b671bfe"/>) */
                            @CapellaID { eid = "c98141c2-a58d-434c-bec9-14bd625d6e0a"; }
                            ref :>> constrainedElements =  ('Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'d987159f-4cac-42a8-8d33-8a892bd9d4fb');
                            
                        } 
                        ref :>> ownedConstraints =  ('c98141c2-a58d-434c-bec9-14bd625d6e0a'); 
                    }  
                    part '7e2eccd2-9761-4600-bd69-f1925e69f1b5' : CPart :> 'Evaporator'  { 
                        @CapellaID { eid = "7e2eccd2-9761-4600-bd69-f1925e69f1b5"; } 
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
                    part '1a5522a7-bd0e-4c6a-a6fa-dcaaa4a255b5' : CPart :> 'Drain'  { 
                        @CapellaID { eid = "1a5522a7-bd0e-4c6a-a6fa-dcaaa4a255b5"; } 
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
                    part '0dc5cdb8-8576-491a-b65f-5fd5e476c730' : CPart :> 'Water Distiller'  { 
                        @CapellaID { eid = "0dc5cdb8-8576-491a-b65f-5fd5e476c730"; } 
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
                    part '48be99ce-8e96-4f90-b7f9-441cca9d0523' : CPart :> 'Feed'  { 
                        @CapellaID { eid = "48be99ce-8e96-4f90-b7f9-441cca9d0523"; } 
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
                    part '64de9d71-c85d-4185-85a7-8560f5b0a64b' : CPart :> 'Splitter'  { 
                        @CapellaID { eid = "64de9d71-c85d-4185-85a7-8560f5b0a64b"; } 
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
                    part '82801e95-f491-4d08-a0ff-c74c4581e471' : CPart :> 'Diverter Assembly'  { 
                        @CapellaID { eid = "82801e95-f491-4d08-a0ff-c74c4581e471"; } 
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
                    part 'Condenser' : PhysicalComponent { 
                        @CapellaID { eid = "3b2e8898-0e75-4a20-b439-d0bd983e795d"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Condense Steam'.'FIP 1'
                                to allocatingPort ::> 'h in'; 
                            ref :>> ownedPortAllocations =  ('cf20e6e0-04c6-4b28-8e4e-02482c36919e'); 
                             
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                                to allocatingPort ::> 'CP 4'; 
                            ref :>> ownedPortAllocations =  ('14c65679-86fe-4576-ad0d-c605dbae6ce9'); 
                             
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Heat Water'.'inDirty Water'
                                to allocatingPort ::> 'c in'; 
                            ref :>> ownedPortAllocations =  ('46b40a53-bf2b-44b9-9c20-7eaeb0799639'); 
                             
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Heat Water'.'FOP 1'
                                to allocatingPort ::> 'c out'; 
                            ref :>> ownedPortAllocations =  ('9c601b34-0648-40b4-93b6-2d20d5ed8064'); 
                        }  
                        dependency '56db034e-e6b2-41f1-ae4b-fb82a7087742'
                            from '241b0033-d41e-435d-ad01-90c055db6432'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Condenser'::'ef0a433e-26d7-42ea-a132-cfda5027a013' { 
                            @TransfoLink { 
                                @CapellaID { eid = "56db034e-e6b2-41f1-ae4b-fb82a7087742"; } 
                            }  
                        }  
                        dependency 'd4db33e0-82c1-4a68-9ae6-ce99a206ba00'
                            from 'CP 4'::'14c65679-86fe-4576-ad0d-c605dbae6ce9'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Condenser'::'CP 4'::'b1f5fa60-09d7-46f1-9af2-27edd461ff6f' { 
                            @TransfoLink { 
                                @CapellaID { eid = "d4db33e0-82c1-4a68-9ae6-ce99a206ba00"; } 
                            }  
                        }  
                        dependency 'fc563fd9-fe5b-4674-950b-f01c6a8f38d3'
                            from 'b8aab39a-76c2-424d-998e-3c42cd267d9d'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Condenser'::'29c5330d-a013-4162-b68e-afad7431c7ac' { 
                            @TransfoLink { 
                                @CapellaID { eid = "fc563fd9-fe5b-4674-950b-f01c6a8f38d3"; } 
                            }  
                        }  
                        dependency '371e33eb-4077-433d-b1af-773dc8e87c97'
                            from 'h in'::'cf20e6e0-04c6-4b28-8e4e-02482c36919e'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Condenser'::'h in'::'46162c83-3ebc-4708-b929-aa347273b0b9' { 
                            @TransfoLink { 
                                @CapellaID { eid = "371e33eb-4077-433d-b1af-773dc8e87c97"; } 
                            }  
                        }  
                        allocation '241b0033-d41e-435d-ad01-90c055db6432' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Condense Steam'
                            to component ::> 'Condenser' { 
                            @CapellaID { eid = "241b0033-d41e-435d-ad01-90c055db6432"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Condense Steam' ; 
                        allocation 'b8aab39a-76c2-424d-998e-3c42cd267d9d' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Heat Water'
                            to component ::> 'Condenser' { 
                            @CapellaID { eid = "b8aab39a-76c2-424d-998e-3c42cd267d9d"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Heat Water' ; 
                         
                        ref :>> ownedFunctionalAllocation =  ('241b0033-d41e-435d-ad01-90c055db6432',
                        'b8aab39a-76c2-424d-998e-3c42cd267d9d'); 
                    }  
                    part 'Evaporator' : PhysicalComponent { 
                        @CapellaID { eid = "78ce67de-970f-4977-bad0-e532637fdd72"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FOP 1'
                                to allocatingPort ::> 'bottom'; 
                            ref :>> ownedPortAllocations =  ('310da036-b550-493f-82ed-3780dae746a0'); 
                             
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FOP 2'
                                to allocatingPort ::> 'top'; 
                            ref :>> ownedPortAllocations =  ('ad9f984a-292a-435b-8de8-b38d2477c52c'); 
                             
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FIP 2'
                                to allocatingPort ::> 'middle'; 
                            ref :>> ownedPortAllocations =  ('b9cae6db-2ee9-47ef-8434-09ae8b46af5b'); 
                             
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Boil Water'.'FIP 1'
                                to allocatingPort ::> 'heater'; 
                            ref :>> ownedPortAllocations =  ('8cc34582-12d1-4190-bfe6-00b1cf58fb4f'); 
                             
                        }  
                        dependency '76fa3f73-792a-4c04-b796-0d19567804e0'
                            from 'bb60edd8-2751-4ea5-99ea-e2a7433ab045'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Evaporator'::'687ca8e1-1d25-4f6c-aed6-5b47171b340e' { 
                            @TransfoLink { 
                                @CapellaID { eid = "76fa3f73-792a-4c04-b796-0d19567804e0"; } 
                            }  
                        }  
                        dependency '19b01c44-c2fb-4991-8eac-bdb6f3d48e00'
                            from 'heater'::'8cc34582-12d1-4190-bfe6-00b1cf58fb4f'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Evaporator'::'heater'::'4c394b9a-3e05-4a5d-b425-6bbe2800f71e' { 
                            @TransfoLink { 
                                @CapellaID { eid = "19b01c44-c2fb-4991-8eac-bdb6f3d48e00"; } 
                            }  
                        }  
                        dependency '8f1a9632-f4d2-4351-bd43-4ae6e32f2dd3'
                            from 'bottom'::'310da036-b550-493f-82ed-3780dae746a0'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Evaporator'::'bottom'::'5b238627-81cb-4731-9cd1-9c3c727ce9f6' { 
                            @TransfoLink { 
                                @CapellaID { eid = "8f1a9632-f4d2-4351-bd43-4ae6e32f2dd3"; } 
                            }  
                        }  
                        dependency '5d0100fa-f836-49ef-b0d6-36dd401da2a3'
                            from 'top'::'ad9f984a-292a-435b-8de8-b38d2477c52c'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Evaporator'::'top'::'373dfb0d-6ff3-4628-bc2c-cd7f53ad37b5' { 
                            @TransfoLink { 
                                @CapellaID { eid = "5d0100fa-f836-49ef-b0d6-36dd401da2a3"; } 
                            }  
                        }  
                        allocation 'bb60edd8-2751-4ea5-99ea-e2a7433ab045' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Boil Water'
                            to component ::> 'Evaporator' { 
                            @CapellaID { eid = "bb60edd8-2751-4ea5-99ea-e2a7433ab045"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Boil Water' ; 
                         
                        ref :>> ownedFunctionalAllocation =  ('bb60edd8-2751-4ea5-99ea-e2a7433ab045'); 
                    }  
                    part 'Drain' : PhysicalComponent { 
                        @CapellaID { eid = "843b4644-05ec-4039-95f6-4a30835692d0"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Drain Residue'.'FIP 1'
                                to allocatingPort ::> 'in'; 
                            ref :>> ownedPortAllocations =  ('bfad8337-2fa6-4876-b4f4-84217b055eb9'); 
                             
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Drain Residue'.'FOP 2'
                                to allocatingPort ::> 'out'; 
                            ref allocation 'f8fff004-1d3a-43d9-8fd9-0af1f20b02b8' : PortAllocation
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Drain Residue'.'outWaste'
                                to allocatingPort ::> 'out'; 
                            ref :>> ownedPortAllocations =  ('9220f7b7-16a5-4a54-8712-a831b0629638',
                            'f8fff004-1d3a-43d9-8fd9-0af1f20b02b8'); 
                             
                        }  
                        dependency '09d9acef-26a2-4881-81eb-8a00dfb4ecfe'
                            from 'f9986bd9-5e55-4662-8f95-b7f1fd7ee479'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Drain'::'547a31ab-dc9d-401b-bef4-a27a92f58187' { 
                            @TransfoLink { 
                                @CapellaID { eid = "09d9acef-26a2-4881-81eb-8a00dfb4ecfe"; } 
                            }  
                        }  
                        dependency '72475e7c-b67e-45a7-b89b-00268cc90fc7'
                            from 'in'::'bfad8337-2fa6-4876-b4f4-84217b055eb9'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Drain'::'in'::'eadda30d-6c41-44f8-8ae5-c9cd5362d2d5' { 
                            @TransfoLink { 
                                @CapellaID { eid = "72475e7c-b67e-45a7-b89b-00268cc90fc7"; } 
                            }  
                        }  
                        dependency '91a0f8fe-5d13-4a53-8327-e1f7cd1abfbc'
                            from 'out'::'9220f7b7-16a5-4a54-8712-a831b0629638'
                            to  'Logical Architecture'::'Structure'::'Logical System'::'Drain'::'out'::'994c03c3-4700-46dd-af63-1443f3a02a3a' { 
                            @TransfoLink { 
                                @CapellaID { eid = "91a0f8fe-5d13-4a53-8327-e1f7cd1abfbc"; } 
                            }  
                        }  
                        allocation 'f9986bd9-5e55-4662-8f95-b7f1fd7ee479' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Drain Residue'
                            to component ::> 'Drain' { 
                            @CapellaID { eid = "f9986bd9-5e55-4662-8f95-b7f1fd7ee479"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'System Functions'.'Distill Water'.'Drain Residue' ; 
                         
                        ref :>> ownedFunctionalAllocation =  ('f9986bd9-5e55-4662-8f95-b7f1fd7ee479'); 
                    }  
                    part 'Water Distiller' : PhysicalComponent { 
                        @CapellaID { eid = "08d85791-ac2d-45f1-8d3d-935a03369671"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        constraint 'Dirty Mass Flow Rate' : CapellaConstraint { 
                            @CapellaID { eid = "e88f8f11-6ae0-48b8-b344-fa3104cc81d9"; }
                            attribute :>> summary = "Mass Flow Rate Max = 50 g/s";
                        } 
                        part 'dae07d5a-c490-473c-8d1b-0fe5b3331c7e' : CPart :> 'Mechanical Boiler'  { 
                            @CapellaID { eid = "dae07d5a-c490-473c-8d1b-0fe5b3331c7e"; } 
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
                            allocation '692bb389-657a-4d35-8277-c36b5c6cdd8f' : PartDeploymentLink
                                allocate deployedElement ::> '7e2eccd2-9761-4600-bd69-f1925e69f1b5'
                                to location ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'dae07d5a-c490-473c-8d1b-0fe5b3331c7e' { 
                                @CapellaID { eid = "692bb389-657a-4d35-8277-c36b5c6cdd8f"; } 
                            }  
                            ref :>> ownedDeploymentLinks =  ('692bb389-657a-4d35-8277-c36b5c6cdd8f'); 
                        }  
                        part '87472dd9-0286-4f91-b80d-6ac86fe76538' : CPart :> 'Condenser'  { 
                            @CapellaID { eid = "87472dd9-0286-4f91-b80d-6ac86fe76538"; } 
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
                            allocation 'd47e5b84-73f8-45ae-b798-d8382e3addd7' : PartDeploymentLink
                                allocate deployedElement ::> 'd987159f-4cac-42a8-8d33-8a892bd9d4fb'
                                to location ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'87472dd9-0286-4f91-b80d-6ac86fe76538' { 
                                @CapellaID { eid = "d47e5b84-73f8-45ae-b798-d8382e3addd7"; } 
                            }  
                            ref :>> ownedDeploymentLinks =  ('d47e5b84-73f8-45ae-b798-d8382e3addd7'); 
                        }  
                        part 'e860a4cb-fcdd-4fd4-a5bf-f9191ce3c73b' : CPart :> 'Drain Valve'  { 
                            @CapellaID { eid = "e860a4cb-fcdd-4fd4-a5bf-f9191ce3c73b"; } 
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
                            allocation 'b5facf59-02c9-4c34-bef3-2c79a30b9d2c' : PartDeploymentLink
                                allocate deployedElement ::> '1a5522a7-bd0e-4c6a-a6fa-dcaaa4a255b5'
                                to location ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'e860a4cb-fcdd-4fd4-a5bf-f9191ce3c73b' { 
                                @CapellaID { eid = "b5facf59-02c9-4c34-bef3-2c79a30b9d2c"; } 
                            }  
                            ref :>> ownedDeploymentLinks =  ('b5facf59-02c9-4c34-bef3-2c79a30b9d2c'); 
                        }  
                        part 'c57a3475-ba5f-4ee7-bb9f-3534eb95c397' : CPart :> 'Diverter Assembly'  { 
                            @CapellaID { eid = "c57a3475-ba5f-4ee7-bb9f-3534eb95c397"; } 
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
                        state 'Distiller' : StateMachine  { 
                            @CapellaID { eid = "13cbbbf0-36c0-444f-a2e1-d5302f7b93aa"; } 
                            attribute :>> isControlOperator = false; 
                            state 'State 1' : State  { 
                                @CapellaID { eid = "dc47fc8c-3a5e-4630-8956-a68f8499bf8f"; } 
                            }  
                        }  
                        interface '0ec4d575-6eeb-4ac7-9af6-9ae1d08c7cbf' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Mechanical Boiler'.'PP 1'
                            to targetPhysicalPort ::> 'Condenser'.'PP 1' {
                            @CapellaID { eid = "0ec4d575-6eeb-4ac7-9af6-9ae1d08c7cbf"; } 
                            attribute :>> interfaceName = "Steam Pipe"; 
                             
                        }  
                        interface '7d01eaa0-15e4-4d3b-a8d8-6281604f30a0' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Mechanical Boiler'.'PP 2'
                            to targetPhysicalPort ::> 'Drain Valve'.'PP 1' {
                            @CapellaID { eid = "7d01eaa0-15e4-4d3b-a8d8-6281604f30a0"; } 
                            attribute :>> interfaceName = "Drainage Pipe"; 
                        }  
                        interface '16f1f463-4068-4754-b761-c013629c789e' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Diverter Assembly'.'Splitter'.'condensor in'
                            to targetPhysicalPort ::> 'Condenser'.'PP 3' {
                            @CapellaID { eid = "16f1f463-4068-4754-b761-c013629c789e"; } 
                            attribute :>> interfaceName = "Condenser-Splitter Pipe"; 
                             
                        }  
                        interface '3a8d76f7-572e-4c8b-a722-fead78941a42' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Diverter Assembly'.'Feed Valve'.'evaporator out'
                            to targetPhysicalPort ::> 'Mechanical Boiler'.'PP 4' {
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
                                    allocate allocatedPort ::> 'PP 1'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'top' { 
                                    @CapellaID { eid = "86ccb022-828d-48d9-8f7c-4fb1e0f40346"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('86ccb022-828d-48d9-8f7c-4fb1e0f40346'); 
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
                                    allocate allocatedPort ::> 'PP 3'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'heater' { 
                                    @CapellaID { eid = "3620ed4d-0aa2-4ef2-bb6e-67b15cbbd944"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('3620ed4d-0aa2-4ef2-bb6e-67b15cbbd944'); 
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
                                    allocate allocatedPort ::> 'PP 4'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Evaporator'.'middle' { 
                                    @CapellaID { eid = "16d31042-2a30-4edb-8586-35931a9fe83d"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('16d31042-2a30-4edb-8586-35931a9fe83d'); 
                            }  
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
                                    allocate allocatedPort ::> 'PP 1'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'h in' { 
                                    @CapellaID { eid = "29f33cf6-796f-4fd7-b1f1-9b0000a89a2e"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('29f33cf6-796f-4fd7-b1f1-9b0000a89a2e'); 
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
                                    allocate allocatedPort ::> 'PP 2'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'CP 4' { 
                                    @CapellaID { eid = "bffa11b5-bf52-448e-afc4-77242d3111ad"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('bffa11b5-bf52-448e-afc4-77242d3111ad'); 
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
                                    allocate allocatedPort ::> 'PP 3'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c out' { 
                                    @CapellaID { eid = "bbd93b45-68b8-4e21-a904-acdffb883cec"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('bbd93b45-68b8-4e21-a904-acdffb883cec'); 
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
                                    allocate allocatedPort ::> 'PP 4'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Condenser'.'c in' { 
                                    @CapellaID { eid = "35db7fa0-0e31-47f1-a032-8ecf428ee4e0"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('35db7fa0-0e31-47f1-a032-8ecf428ee4e0'); 
                            }  
                            state 'Physical Component State Machine' : StateMachine  { 
                                @CapellaID { eid = "baaa6f22-089f-4080-9061-00b8ca6ed8aa"; } 
                                attribute :>> isControlOperator = false; 
                                state 'State 1' : State  { 
                                    @CapellaID { eid = "351798df-a124-417a-9386-511b15f508cf"; } 
                                }  
                            }  
                            ref :>> ownedStateMachines =  ('Physical Component State Machine'); 
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
                                    allocate allocatedPort ::> 'PP 2'
                                    to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Drain'.'out' { 
                                    @CapellaID { eid = "456d2191-b528-4efd-b65b-7de5d2fe0056"; } 
                                }  
                                ref :>> ownedComponentPortAllocations =  ('456d2191-b528-4efd-b65b-7de5d2fe0056'); 
                            }  
                        }  
                        part 'Diverter Assembly' : PhysicalComponent { 
                            @CapellaID { eid = "c4a90174-38f0-4429-806d-954c9bb10fed"; } 
                            attribute :>> isAbstract = false; 
                            attribute :>> isActor = false; 
                            attribute :>> isHuman = false; 
                            attribute :>> kind = PhysicalComponentKind::UNSET; 
                            attribute :>> nature = PhysicalComponentNature::NODE; 
                            part '00397096-be9d-4b1f-aa65-999d948809fb' : CPart :> 'Splitter'  { 
                                @CapellaID { eid = "00397096-be9d-4b1f-aa65-999d948809fb"; } 
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
                                allocation 'cf8fec73-4869-48ea-88be-e635d615819e' : PartDeploymentLink
                                    allocate deployedElement ::> '64de9d71-c85d-4185-85a7-8560f5b0a64b'
                                    to location ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'00397096-be9d-4b1f-aa65-999d948809fb' { 
                                    @CapellaID { eid = "cf8fec73-4869-48ea-88be-e635d615819e"; } 
                                }  
                                ref :>> ownedDeploymentLinks =  ('cf8fec73-4869-48ea-88be-e635d615819e'); 
                            }  
                            part 'b640c33f-399b-47a5-bb58-b6ad7bff5ce2' : CPart :> 'Feed Valve'  { 
                                @CapellaID { eid = "b640c33f-399b-47a5-bb58-b6ad7bff5ce2"; } 
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
                                allocation '707c62c0-7880-414d-b27e-2af9ead38338' : PartDeploymentLink
                                    allocate deployedElement ::> '48be99ce-8e96-4f90-b7f9-441cca9d0523'
                                    to location ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Water Distiller'.'Diverter Assembly'.'b640c33f-399b-47a5-bb58-b6ad7bff5ce2' { 
                                    @CapellaID { eid = "707c62c0-7880-414d-b27e-2af9ead38338"; } 
                                }  
                                ref :>> ownedDeploymentLinks =  ('707c62c0-7880-414d-b27e-2af9ead38338'); 
                            }  
                            interface '50b4e630-a907-46b6-a242-c519f4ba9127' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Splitter'.'Feed Valve Out'
                                to targetPhysicalPort ::> 'Feed Valve'.'PP 1' {
                                @CapellaID { eid = "50b4e630-a907-46b6-a242-c519f4ba9127"; } 
                                attribute :>> interfaceName = "Pipeline"; 
                                 
                            }  
                            interface '3702f33d-19cb-46c0-ba5e-fc513590d7ae' : PhysicalLink 
                                connect sourcePhysicalPort ::> 'Splitter'.'Backup to Feed Valve'
                                to targetPhysicalPort ::> 'Feed Valve'.'PP 2' {
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
                                port 'Feed Valve Out' : PhysicalPort { 
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
                                        allocate allocatedPort ::> 'Feed Valve Out'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'To Feed Valve' { 
                                        @CapellaID { eid = "1dc85021-7844-4062-b975-ed42b1cf2efb"; } 
                                    }  
                                    ref :>> ownedComponentPortAllocations =  ('1dc85021-7844-4062-b975-ed42b1cf2efb'); 
                                }  
                                port 'Backup to Feed Valve' : PhysicalPort { 
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
                                        allocate allocatedPort ::> 'Backup to Feed Valve'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'Backup to Feed Valve' { 
                                        @CapellaID { eid = "125ede92-4589-453a-8850-db63940e1538"; } 
                                    }  
                                    ref :>> ownedComponentPortAllocations =  ('125ede92-4589-453a-8850-db63940e1538'); 
                                }  
                                port 'condensor in' : PhysicalPort { 
                                    doc /*
                                    <p>This physical port represents a input to the splitter from the &#39;Hot Water Pipeline&#39; from the &#39;Condenser&#39;.</p>

                                    <p><img src="Distiller Project/Images/20260414_112850_727469.png" /></p>

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
                                        allocate allocatedPort ::> 'condensor in'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'Condenser In' { 
                                        @CapellaID { eid = "c1781bab-2e3c-4d71-8827-6f7620a6f7ca"; } 
                                    }  
                                    ref :>> ownedComponentPortAllocations =  ('c1781bab-2e3c-4d71-8827-6f7620a6f7ca'); 
                                }  
                                port 'splitter out' : PhysicalPort { 
                                    doc /*
                                    <p>This physical port represents the output of &#39;Splitter&#39; to &#39;Excess Water Discharge&#39; through the &#39;Bypass Pipeline&#39;.</p>

                                    <p><img src="Distiller Project/Images/20260414_112850_749718.png" /></p>

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
                                        allocate allocatedPort ::> 'splitter out'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Splitter'.'Splitter Excess' { 
                                        @CapellaID { eid = "d6ff7720-30bc-4d28-a52c-9c2905b81d15"; } 
                                    }  
                                    ref :>> ownedComponentPortAllocations =  ('d6ff7720-30bc-4d28-a52c-9c2905b81d15'); 
                                }  
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
                                        allocate allocatedPort ::> 'PP 1'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'Main in' { 
                                        @CapellaID { eid = "9bd5d43d-080c-4d44-9824-461cebf6ae60"; } 
                                    }  
                                    ref :>> ownedComponentPortAllocations =  ('9bd5d43d-080c-4d44-9824-461cebf6ae60'); 
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
                                        allocate allocatedPort ::> 'PP 2'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'Back up In' { 
                                        @CapellaID { eid = "4f3093dd-0aa7-4531-9884-49f2d023c826"; } 
                                    }  
                                    ref :>> ownedComponentPortAllocations =  ('4f3093dd-0aa7-4531-9884-49f2d023c826'); 
                                }  
                                port 'evaporator out' : PhysicalPort { 
                                    doc /*
                                    <p>This physical port represents an output&nbsp;from the &#39;Feed Valve&#39;&nbsp;to the &#39;Boiler&#39; through the &#39;Dirty Pipeline&#39; physical link.</p>

                                    <p><img src="Distiller Project/Images/20260414_112850_756719.png" /></p>

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
                                        allocate allocatedPort ::> 'evaporator out'
                                        to allocatingPort ::> 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Structure'::'Physical System'.'Feed'.'out' { 
                                        @CapellaID { eid = "fad54811-abdf-45e8-9139-f4a2e0484bbb"; } 
                                    }  
                                    ref :>> ownedComponentPortAllocations =  ('fad54811-abdf-45e8-9139-f4a2e0484bbb'); 
                                }  
                            }  
                            ref :>> ownedPhysicalLinks =  ('50b4e630-a907-46b6-a242-c519f4ba9127',
                            '3702f33d-19cb-46c0-ba5e-fc513590d7ae'); 
                            ref :>> ownedPhysicalComponents =  ('Splitter',
                            'Feed Valve'); 
                        }  
                        ref :>> ownedConstraints =  ('Dirty Mass Flow Rate'); 
                        ref :>> ownedStateMachines =  ('Distiller'); 
                        ref :>> ownedPhysicalLinks =  ('0ec4d575-6eeb-4ac7-9af6-9ae1d08c7cbf',
                        '7d01eaa0-15e4-4d3b-a8d8-6281604f30a0',
                        '16f1f463-4068-4754-b761-c013629c789e',
                        '3a8d76f7-572e-4c8b-a722-fead78941a42'); 
                        ref :>> ownedPhysicalComponents =  ('Mechanical Boiler',
                        'Condenser',
                        'Drain Valve',
                        'Diverter Assembly'); 
                    }  
                    part 'Feed' : PhysicalComponent { 
                        @CapellaID { eid = "f185e8e8-d65c-49d0-9ea1-734e6ef585dc"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        port 'out' : ComponentPort { 
                            doc /*
                            <p>This component port represents an output from the &#39;Feed&#39; behavior component to the &#39;Evaporator&#39; component port through the &#39;Hot Water&#39; component exchange.</p>

                            <p><img height="294" src="Distiller Project/Images/20260414_112850_766720.png" style="width: 715px; height: 201px;" width="1068" /></p>

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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FOP 1'
                                to allocatingPort ::> 'out'; 
                            ref :>> ownedPortAllocations =  ('47d3c6be-8d91-44b2-b015-58eeba6dd99b'); 
                        }  
                        port 'Main in' : ComponentPort { 
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FIP 1'
                                to allocatingPort ::> 'Main in'; 
                            ref :>> ownedPortAllocations =  ('f6795681-5175-478b-9001-9616e00e0d9a'); 
                        }  
                        port 'Back up In' : ComponentPort { 
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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Throttle Flow'.'FIP 1'
                                to allocatingPort ::> 'Back up In'; 
                            ref :>> ownedPortAllocations =  ('fee65147-c256-47e8-bac9-de2ab1c58634'); 
                        }  
                        allocation 'ea32046e-b0ce-4bde-b954-d0a248089a2f' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Throttle Flow'
                            to component ::> 'Feed' { 
                            @CapellaID { eid = "ea32046e-b0ce-4bde-b954-d0a248089a2f"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Throttle Flow' ; 
                        ref :>> ownedFunctionalAllocation =  ('ea32046e-b0ce-4bde-b954-d0a248089a2f'); 
                    }  
                    part 'Splitter' : PhysicalComponent { 
                        @CapellaID { eid = "a7e06bfa-90f5-4209-8fd5-c9efdd85fc76"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::BEHAVIOR; 
                        port 'Condenser In' : ComponentPort { 
                            doc /*
                            <p>This component port represents an input to the splitter &#39;Behavior PC&#39;&nbsp;from the &#39;Hot Water&#39; component exchange&nbsp;from the &#39;Condenser&#39;.</p>

                            <p><img height="294" src="Distiller Project/Images/20260414_112850_784720.png" style="width: 924px; height: 241px;" width="1138" /></p>

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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Divert Flow'.'Condensor In'
                                to allocatingPort ::> 'Condenser In'; 
                            ref :>> ownedPortAllocations =  ('6a9aaba8-3f71-4978-84ff-e30a627e1478'); 
                        }  
                        port 'To Feed Valve' : ComponentPort { 
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
                            ref allocation '06ba949c-90a3-44a4-bcbf-03a7254c82e7' : PortAllocation
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Divert Flow'.'Main Out'
                                to allocatingPort ::> 'To Feed Valve'; 
                            ref :>> ownedPortAllocations =  ('06ba949c-90a3-44a4-bcbf-03a7254c82e7'); 
                        }  
                        port 'Backup to Feed Valve' : ComponentPort { 
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
                            ref allocation 'daedf7cd-9ae9-4199-a3f2-7b3d60b1fd5d' : PortAllocation
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Divert Flow'.'Main Out'
                                to allocatingPort ::> 'Backup to Feed Valve'; 
                            ref :>> ownedPortAllocations =  ('daedf7cd-9ae9-4199-a3f2-7b3d60b1fd5d'); 
                        }  
                        port 'Splitter Excess' : ComponentPort { 
                            doc /*
                            <p>This component port represents the output from &#39;Splitter&#39; behavior component to the &#39;Excess Water Dishcarge&#39; through the &#39;Bypass&#39; component exchange.</p>

                            <p><img height="287" src="Distiller Project/Images/20260414_112850_791721.png" style="width: 840px; height: 220px;" width="1086" /></p>

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
                                allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Divert Flow'.'FOP 2'
                                to allocatingPort ::> 'Splitter Excess'; 
                            ref :>> ownedPortAllocations =  ('178f0d38-0701-49d4-984a-bc11e4750d58'); 
                        }  
                        allocation 'c32aa521-2581-4629-94d3-7a7ab91d5a8c' : ComponentFunctionalAllocation
                            allocate function ::> 'Physical Functions'::'Root Physical Function'.'Divert Flow'
                            to component ::> 'Splitter' { 
                            @CapellaID { eid = "c32aa521-2581-4629-94d3-7a7ab91d5a8c"; } 
                        } 
                        perform 'Physical Functions'::'Root Physical Function'.'Divert Flow' ; 
                        ref :>> ownedFunctionalAllocation =  ('c32aa521-2581-4629-94d3-7a7ab91d5a8c'); 
                    }  
                    part 'Diverter Assembly' : PhysicalComponent { 
                        @CapellaID { eid = "9ec861da-8492-4707-861a-7395f8c39178"; } 
                        attribute :>> isAbstract = false; 
                        attribute :>> isActor = false; 
                        attribute :>> isHuman = false; 
                        attribute :>> kind = PhysicalComponentKind::UNSET; 
                        attribute :>> nature = PhysicalComponentNature::NODE; 
                        part 'd885b7a0-b0dc-4123-824f-44fa58ce9faa' : CPart :> 'Splitter'  { 
                            @CapellaID { eid = "d885b7a0-b0dc-4123-824f-44fa58ce9faa"; } 
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
                        part 'f5fe909f-0839-4ec4-94b2-917b57e3e075' : CPart :> 'Feed Valve'  { 
                            @CapellaID { eid = "f5fe909f-0839-4ec4-94b2-917b57e3e075"; } 
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
                        interface '3909f7b7-c924-4fea-99fd-bd85aff5105f' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Splitter'.'PP 1'
                            to targetPhysicalPort ::> 'Feed Valve'.'PP 1' {
                            @CapellaID { eid = "3909f7b7-c924-4fea-99fd-bd85aff5105f"; } 
                            attribute :>> interfaceName = "Pipeline"; 
                        }  
                        interface 'f6fb0fe0-1fe0-4e69-8969-3c19ea08943e' : PhysicalLink 
                            connect sourcePhysicalPort ::> 'Splitter'.'PP 2'
                            to targetPhysicalPort ::> 'Feed Valve'.'PP 2' {
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

                                <p><img src="Distiller Project/Images/20260414_112850_798726.png" /></p>

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

                                <p><img src="Distiller Project/Images/20260414_112850_804723.png" /></p>

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

                                <p><img src="Distiller Project/Images/20260414_112850_810724.png" /></p>

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
                        ref :>> ownedPhysicalLinks =  ('3909f7b7-c924-4fea-99fd-bd85aff5105f',
                        'f6fb0fe0-1fe0-4e69-8969-3c19ea08943e'); 
                        ref :>> ownedPhysicalComponents =  ('Splitter',
                        'Feed Valve'); 
                    }  
                    dependency 'd61c4c57-ac6f-4edf-a113-aa2adfa32a4a'
                        from 'd987159f-4cac-42a8-8d33-8a892bd9d4fb'
                        to  'Logical Architecture'::'Structure'::'Logical System'::'9337fe7e-6172-4883-8cef-bddd1df7d485' { 
                        @TransfoLink { 
                            @CapellaID { eid = "d61c4c57-ac6f-4edf-a113-aa2adfa32a4a"; } 
                        }  
                    }  
                    dependency 'cf4548b1-9a65-4eac-8d9d-a0d7906df66f'
                        from 'd987159f-4cac-42a8-8d33-8a892bd9d4fb'::'c98141c2-a58d-434c-bec9-14bd625d6e0a'
                        to  'Logical Architecture'::'Structure'::'Logical System'::'9337fe7e-6172-4883-8cef-bddd1df7d485'::'99291201-b61b-445c-9367-795619600e7d' { 
                        @TransfoLink { 
                            @CapellaID { eid = "cf4548b1-9a65-4eac-8d9d-a0d7906df66f"; } 
                        }  
                    }  
                    dependency '4bbadfc0-37f7-44e7-8be0-cd22ace88740'
                        from '7e2eccd2-9761-4600-bd69-f1925e69f1b5'
                        to  'Logical Architecture'::'Structure'::'Logical System'::'9448c8b2-4bf6-4a4f-88f6-2307acb4e4f4' { 
                        @TransfoLink { 
                            @CapellaID { eid = "4bbadfc0-37f7-44e7-8be0-cd22ace88740"; } 
                        }  
                    }  
                    dependency 'a5e5b21e-3b63-4e49-9bc7-a92a768a5df8'
                        from '1a5522a7-bd0e-4c6a-a6fa-dcaaa4a255b5'
                        to  'Logical Architecture'::'Structure'::'Logical System'::'72fe3930-d7e1-4e7e-8a0d-8094dc7be5bb' { 
                        @TransfoLink { 
                            @CapellaID { eid = "a5e5b21e-3b63-4e49-9bc7-a92a768a5df8"; } 
                        }  
                    }  
                    dependency 'faeffaa9-e24c-4869-bdf1-dcaba19bbf31'
                        from '743ea180-df8f-425e-b272-c8312387b4f3'::'d06ceeac-99c3-4971-9621-59825431e696'
                        to  'Logical Architecture'::'Structure'::'Logical System'::'68ab1776-6210-4874-b63c-345f4bff3778'::'e2e36d91-0772-4df8-84c4-5cd1db55e1bd' { 
                        @TransfoLink { 
                            @CapellaID { eid = "faeffaa9-e24c-4869-bdf1-dcaba19bbf31"; } 
                        }  
                    }  
                    ref :>> ownedComponentExchanges =  ('743ea180-df8f-425e-b272-c8312387b4f3',
                    '780e948a-75d4-45c4-8985-a5c2f2fe9d18',
                    '6351d22d-1038-4e6b-bbbd-bbad47a8ee71',
                    '99161e49-e6a0-421d-954a-926fdda252f3',
                    'ca0516cd-3bd3-4293-94fc-cdcc9c1bea8c',
                    '09f67067-4cbf-484d-a8d6-a85891f819b8'); 
                     
                     
                    ref :>> ownedPhysicalComponents =  ('Condenser',
                    'Evaporator',
                    'Drain',
                    'Water Distiller',
                    'Feed',
                    'Splitter',
                    'Diverter Assembly'); 
                }  
                part 'Operator' : PhysicalComponent { 
                    @CapellaID { eid = "8a5f41ee-8958-40cc-9c74-40bf7ca5a001"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Operate Distiller'.'outWater Control'
                            to allocatingPort ::> 'CP 1'; 
                        ref allocation '6eef3d9e-be71-4de9-aa42-89510381276a' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Tend Water Source'.'FOP 1'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('1445141e-1b2d-49f2-a0b9-f4bda4afadc1',
                        '6eef3d9e-be71-4de9-aa42-89510381276a'); 
                         
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Tend Heat Source'.'FOP 1'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation '18282724-6ba1-46f7-8578-3b01e380e42c' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Operate Distiller'.'outPower Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('9e2a66fa-ab1d-4b51-8fa5-0fa5f745467c',
                        '18282724-6ba1-46f7-8578-3b01e380e42c'); 
                         
                    }  
                    dependency '02bb3846-5f2f-477c-9ebb-f83abbc2a28f'
                        from 'e9019301-784b-482f-8b13-595fa6f6a08a'
                        to  'Logical Architecture'::'Structure'::'Operator'::'950ac749-fc37-48a8-b536-4b70fc0afe12' { 
                        @TransfoLink { 
                            @CapellaID { eid = "02bb3846-5f2f-477c-9ebb-f83abbc2a28f"; } 
                        }  
                    }  
                    dependency '37692bfd-0abd-4b93-9637-d1dd952f789b'
                        from 'CP 1'::'1445141e-1b2d-49f2-a0b9-f4bda4afadc1'
                        to  'Logical Architecture'::'Structure'::'Operator'::'CP 1'::'32935324-1fe5-4c61-ac38-576a65f37f4c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "37692bfd-0abd-4b93-9637-d1dd952f789b"; } 
                        }  
                    }  
                    dependency 'cc25c868-a58a-450c-ac23-3acb901bc3b3'
                        from 'CP 1'::'6eef3d9e-be71-4de9-aa42-89510381276a'
                        to  'Logical Architecture'::'Structure'::'Operator'::'CP 1'::'c72da6c1-6d23-4587-971a-e2c4d87fb25e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "cc25c868-a58a-450c-ac23-3acb901bc3b3"; } 
                        }  
                    }  
                    dependency '3b60bd97-2947-455c-9831-06b6e8e76509'
                        from 'e9c90e43-ece3-4dde-b882-a6acba364007'
                        to  'Logical Architecture'::'Structure'::'Operator'::'af054c69-4bee-49aa-8dac-269903a44d9e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "3b60bd97-2947-455c-9831-06b6e8e76509"; } 
                        }  
                    }  
                    dependency '8960f595-99f7-4796-9606-7f202d58d673'
                        from 'CP 2'::'9e2a66fa-ab1d-4b51-8fa5-0fa5f745467c'
                        to  'Logical Architecture'::'Structure'::'Operator'::'CP 2'::'38b604d3-4716-46e0-9feb-375d9f3f28c3' { 
                        @TransfoLink { 
                            @CapellaID { eid = "8960f595-99f7-4796-9606-7f202d58d673"; } 
                        }  
                    }  
                    dependency '75dc1e8c-41c9-4682-9021-49cad4576e96'
                        from 'd3b2be60-00d1-49f5-913d-e11fd60b7fe4'
                        to  'Logical Architecture'::'Structure'::'Operator'::'21d7c394-0573-4007-ba65-6c0d2d625ae9' { 
                        @TransfoLink { 
                            @CapellaID { eid = "75dc1e8c-41c9-4682-9021-49cad4576e96"; } 
                        }  
                    }  
                    dependency 'fa16a1d2-9263-4ef1-bf0f-0b86bda1d6e6'
                        from 'CP 2'::'18282724-6ba1-46f7-8578-3b01e380e42c'
                        to  'Logical Architecture'::'Structure'::'Operator'::'CP 2'::'be6ae2e5-f3ca-4fa0-8bd4-45a43776664c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "fa16a1d2-9263-4ef1-bf0f-0b86bda1d6e6"; } 
                        }  
                    }  
                    allocation 'e9019301-784b-482f-8b13-595fa6f6a08a' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Operate Distiller'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "e9019301-784b-482f-8b13-595fa6f6a08a"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Operate Distiller' ; 
                    allocation 'e9c90e43-ece3-4dde-b882-a6acba364007' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Tend Heat Source'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "e9c90e43-ece3-4dde-b882-a6acba364007"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Tend Heat Source' ; 
                    allocation 'd3b2be60-00d1-49f5-913d-e11fd60b7fe4' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Tend Water Source'
                        to component ::> 'Structure'::'Operator' { 
                        @CapellaID { eid = "d3b2be60-00d1-49f5-913d-e11fd60b7fe4"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Tend Water Source' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('e9019301-784b-482f-8b13-595fa6f6a08a',
                    'e9c90e43-ece3-4dde-b882-a6acba364007',
                    'd3b2be60-00d1-49f5-913d-e11fd60b7fe4'); 
                }  
                part 'Water Source' : PhysicalComponent { 
                    @CapellaID { eid = "d0305a2e-3edd-45e3-ab48-16d0f764b2a5"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Provide Water'.'outDirty Water'
                            to allocatingPort ::> 'dirty'; 
                        ref :>> ownedPortAllocations =  ('c9c00b87-8629-4d17-82c1-7f350bc3860f'); 
                         
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Provide Water'.'inWater Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation '1bd413e3-dbbb-4fe8-8a94-fa622cbec10a' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Provide Water'.'FIP 2'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('04deae4c-68d8-483e-831a-f6090d547ee8',
                        '1bd413e3-dbbb-4fe8-8a94-fa622cbec10a'); 
                         
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
                    dependency '40d73a3b-6ebd-4d9c-820d-6cbe92386711'
                        from 'b2104cb2-d5d9-42ce-a912-93fcc55e12e4'
                        to  'Logical Architecture'::'Structure'::'Water Source'::'ebb8f9fb-0d33-4786-9f47-29058ccb6193' { 
                        @TransfoLink { 
                            @CapellaID { eid = "40d73a3b-6ebd-4d9c-820d-6cbe92386711"; } 
                        }  
                    }  
                    dependency 'f6468b5c-4777-4dcb-bd31-9c0e64e551fe'
                        from 'dirty'::'c9c00b87-8629-4d17-82c1-7f350bc3860f'
                        to  'Logical Architecture'::'Structure'::'Water Source'::'dirty'::'cd5529ec-0186-49a1-b281-315b16b0f08d' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f6468b5c-4777-4dcb-bd31-9c0e64e551fe"; } 
                        }  
                    }  
                    dependency '590c13d1-45b1-4833-8908-18f508d22014'
                        from 'CP 2'::'04deae4c-68d8-483e-831a-f6090d547ee8'
                        to  'Logical Architecture'::'Structure'::'Water Source'::'CP 2'::'86bba355-607f-4189-b8a8-8d37d099474f' { 
                        @TransfoLink { 
                            @CapellaID { eid = "590c13d1-45b1-4833-8908-18f508d22014"; } 
                        }  
                    }  
                    dependency '1a09d82a-b271-41fe-abb6-cbfb6f76835a'
                        from 'CP 2'::'1bd413e3-dbbb-4fe8-8a94-fa622cbec10a'
                        to  'Logical Architecture'::'Structure'::'Water Source'::'CP 2'::'ae2d7b31-56fd-4fc3-9432-51f8fa3603d1' { 
                        @TransfoLink { 
                            @CapellaID { eid = "1a09d82a-b271-41fe-abb6-cbfb6f76835a"; } 
                        }  
                    }  
                    allocation 'b2104cb2-d5d9-42ce-a912-93fcc55e12e4' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Provide Water'
                        to component ::> 'Structure'::'Water Source' { 
                        @CapellaID { eid = "b2104cb2-d5d9-42ce-a912-93fcc55e12e4"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Provide Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('b2104cb2-d5d9-42ce-a912-93fcc55e12e4'); 
                }  
                part 'Heat Source' : PhysicalComponent { 
                    @CapellaID { eid = "4ce61649-d5ef-4f4e-a5f9-5973cd05e6b9"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Generate Heat'.'FOP 2'
                            to allocatingPort ::> 'q in'; 
                        ref :>> ownedPortAllocations =  ('10c685c8-d08a-4c09-b150-1c58cf3c572b'); 
                         
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Generate Heat'.'FIP 2'
                            to allocatingPort ::> 'CP 2'; 
                        ref allocation 'f126b165-8c83-464f-86ec-8adebb10e121' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Generate Heat'.'inPower Control'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('8f7dc74d-53ae-43df-9e7a-c00dd5b1a951',
                        'f126b165-8c83-464f-86ec-8adebb10e121'); 
                         
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
                    dependency '5bc93118-6eec-4d9f-872c-ed657486d8e4'
                        from 'cc21fd17-72e2-4388-a414-26eeb7836da0'
                        to  'Logical Architecture'::'Structure'::'Heat Source'::'14ea23eb-08e4-43ff-81b4-25ca055403c1' { 
                        @TransfoLink { 
                            @CapellaID { eid = "5bc93118-6eec-4d9f-872c-ed657486d8e4"; } 
                        }  
                    }  
                    dependency 'c95dee71-f25a-42e5-bd9b-ad65c7dd4e09'
                        from 'q in'::'10c685c8-d08a-4c09-b150-1c58cf3c572b'
                        to  'Logical Architecture'::'Structure'::'Heat Source'::'q in'::'21e7f52a-98f9-43eb-85c9-d5557d8b4c60' { 
                        @TransfoLink { 
                            @CapellaID { eid = "c95dee71-f25a-42e5-bd9b-ad65c7dd4e09"; } 
                        }  
                    }  
                    dependency 'cf8e5778-2152-4a31-b3b0-6e938b911018'
                        from 'CP 2'::'8f7dc74d-53ae-43df-9e7a-c00dd5b1a951'
                        to  'Logical Architecture'::'Structure'::'Heat Source'::'CP 2'::'e329549d-b5fb-4844-ae88-d3d1ce61c81e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "cf8e5778-2152-4a31-b3b0-6e938b911018"; } 
                        }  
                    }  
                    dependency 'b83578e8-8dd1-4959-be77-962e944f9ce0'
                        from 'CP 2'::'f126b165-8c83-464f-86ec-8adebb10e121'
                        to  'Logical Architecture'::'Structure'::'Heat Source'::'CP 2'::'d936ced3-083f-4991-b643-6a4b7d6ace17' { 
                        @TransfoLink { 
                            @CapellaID { eid = "b83578e8-8dd1-4959-be77-962e944f9ce0"; } 
                        }  
                    }  
                    allocation 'cc21fd17-72e2-4388-a414-26eeb7836da0' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Generate Heat'
                        to component ::> 'Structure'::'Heat Source' { 
                        @CapellaID { eid = "cc21fd17-72e2-4388-a414-26eeb7836da0"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Generate Heat' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('cc21fd17-72e2-4388-a414-26eeb7836da0'); 
                }  
                part 'Water Distribution System' : PhysicalComponent { 
                    @CapellaID { eid = "8a1d15df-7fd5-40ab-a682-3dcfa1c39f18"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Distribute Clean Water'.'outSafe Drinking Water'
                            to allocatingPort ::> 'CP 2'; 
                        ref :>> ownedPortAllocations =  ('fad4dad7-bd97-4e9d-ad33-92c41873d79f'); 
                         
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Store Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'CP 3'; 
                        ref :>> ownedPortAllocations =  ('3f0a3fc2-92c0-4af1-b1c0-0c91d7869c24'); 
                         
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
                    dependency 'ac50d812-2ac6-43d6-832f-44116b3ed8d3'
                        from 'c6859e25-e428-4e22-9620-192e6abe2f48'
                        to  'Logical Architecture'::'Structure'::'Water Distribution System'::'adb8b9e5-abf8-4c2f-b19c-9a7420df4023' { 
                        @TransfoLink { 
                            @CapellaID { eid = "ac50d812-2ac6-43d6-832f-44116b3ed8d3"; } 
                        }  
                    }  
                    dependency '444294df-6190-4c05-9533-03b237662fb8'
                        from '63991403-c0cd-47fa-9c02-719dcebfad1b'
                        to  'Logical Architecture'::'Structure'::'Water Distribution System'::'4ab49737-b29d-4e0a-bede-4365636e7002' { 
                        @TransfoLink { 
                            @CapellaID { eid = "444294df-6190-4c05-9533-03b237662fb8"; } 
                        }  
                    }  
                    dependency 'be9a6b23-8503-46c9-a953-30a4285a5b77'
                        from 'CP 3'::'3f0a3fc2-92c0-4af1-b1c0-0c91d7869c24'
                        to  'Logical Architecture'::'Structure'::'Water Distribution System'::'CP 3'::'93aa7934-2874-4310-8bf6-439b6c1d7a48' { 
                        @TransfoLink { 
                            @CapellaID { eid = "be9a6b23-8503-46c9-a953-30a4285a5b77"; } 
                        }  
                    }  
                    dependency 'a49cbc8a-8642-4acc-921f-edddf8c2e278'
                        from 'CP 2'::'fad4dad7-bd97-4e9d-ad33-92c41873d79f'
                        to  'Logical Architecture'::'Structure'::'Water Distribution System'::'CP 2'::'d550b847-c002-4ec2-8522-8d70989a4e74' { 
                        @TransfoLink { 
                            @CapellaID { eid = "a49cbc8a-8642-4acc-921f-edddf8c2e278"; } 
                        }  
                    }  
                    allocation 'c6859e25-e428-4e22-9620-192e6abe2f48' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Store Clean Water'
                        to component ::> 'Structure'::'Water Distribution System' { 
                        @CapellaID { eid = "c6859e25-e428-4e22-9620-192e6abe2f48"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Store Clean Water' ; 
                    allocation '63991403-c0cd-47fa-9c02-719dcebfad1b' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Distribute Clean Water'
                        to component ::> 'Structure'::'Water Distribution System' { 
                        @CapellaID { eid = "63991403-c0cd-47fa-9c02-719dcebfad1b"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Distribute Clean Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('c6859e25-e428-4e22-9620-192e6abe2f48',
                    '63991403-c0cd-47fa-9c02-719dcebfad1b'); 
                }  
                part 'Water USer' : PhysicalComponent { 
                    @CapellaID { eid = "252a19de-cc1d-4897-9639-930a64a425a7"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Get Clean Water'.'inSafe Drinking Water'
                            to allocatingPort ::> 'CP 1'; 
                        ref :>> ownedPortAllocations =  ('bf5aa2c8-e2a4-4df6-90eb-0d5ddf51825c'); 
                         
                    }  
                    dependency 'd79c5ae6-6f6d-4eef-853d-7787ab2e5ecf'
                        from '98756231-1567-4da9-8437-d05a1f39daf7'
                        to  'Logical Architecture'::'Structure'::'Water USer'::'f0d15466-3152-41a1-bc24-084a4f7ae594' { 
                        @TransfoLink { 
                            @CapellaID { eid = "d79c5ae6-6f6d-4eef-853d-7787ab2e5ecf"; } 
                        }  
                    }  
                    dependency 'b76fb01f-5a09-44eb-90c3-63529d28ec80'
                        from 'CP 1'::'bf5aa2c8-e2a4-4df6-90eb-0d5ddf51825c'
                        to  'Logical Architecture'::'Structure'::'Water USer'::'CP 1'::'e726d0c3-43fa-4637-8361-4a00a531ccd7' { 
                        @TransfoLink { 
                            @CapellaID { eid = "b76fb01f-5a09-44eb-90c3-63529d28ec80"; } 
                        }  
                    }  
                    allocation '98756231-1567-4da9-8437-d05a1f39daf7' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Get Clean Water'
                        to component ::> 'Structure'::'Water USer' { 
                        @CapellaID { eid = "98756231-1567-4da9-8437-d05a1f39daf7"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Get Clean Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('98756231-1567-4da9-8437-d05a1f39daf7'); 
                }  
                part 'Waste Management System' : PhysicalComponent { 
                    @CapellaID { eid = "29d79e41-48b5-4503-84af-29958d820f1f"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Discharge Residue'.'FIP 1'
                            to allocatingPort ::> 'sludge'; 
                        ref allocation '4aaeb69f-d324-4feb-a723-3d41216317ad' : PortAllocation
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Manage Waste'.'inWaste'
                            to allocatingPort ::> 'sludge'; 
                        ref :>> ownedPortAllocations =  ('86f2c368-37c4-4d23-bb03-ab5d86ad5d8a',
                        '4aaeb69f-d324-4feb-a723-3d41216317ad'); 
                         
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
                    dependency 'cf3c97b6-b1d5-4600-a021-de7e59a3d1ba'
                        from '14f3c99b-7246-4df2-8a85-28b1c4944531'
                        to  'Logical Architecture'::'Structure'::'Waste Management System'::'c0907788-49f3-4f44-ad4e-2193d2fda823' { 
                        @TransfoLink { 
                            @CapellaID { eid = "cf3c97b6-b1d5-4600-a021-de7e59a3d1ba"; } 
                        }  
                    }  
                    dependency '7057dede-9878-4cfe-9372-b4788c1fca6e'
                        from 'sludge'::'86f2c368-37c4-4d23-bb03-ab5d86ad5d8a'
                        to  'Logical Architecture'::'Structure'::'Waste Management System'::'sludge'::'87cf1545-d811-4cf7-abfe-ebc466e4c99e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "7057dede-9878-4cfe-9372-b4788c1fca6e"; } 
                        }  
                    }  
                    allocation '14f3c99b-7246-4df2-8a85-28b1c4944531' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Discharge Residue'
                        to component ::> 'Structure'::'Waste Management System' { 
                        @CapellaID { eid = "14f3c99b-7246-4df2-8a85-28b1c4944531"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Discharge Residue' ; 
                    allocation 'dc427c8c-e610-47f0-8c24-25734a300a8b' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'System Functions'.'Manage Waste'
                        to component ::> 'Structure'::'Waste Management System' { 
                        @CapellaID { eid = "dc427c8c-e610-47f0-8c24-25734a300a8b"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'System Functions'.'Manage Waste' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('14f3c99b-7246-4df2-8a85-28b1c4944531',
                    'dc427c8c-e610-47f0-8c24-25734a300a8b'); 
                }  
                part 'Excess Water Discharge' : PhysicalComponent { 
                    @CapellaID { eid = "971aa8c6-c90d-4d67-995f-611503195ff4"; } 
                    attribute :>> isAbstract = false; 
                    attribute :>> isActor = true; 
                    attribute :>> isHuman = true; 
                    attribute :>> kind = PhysicalComponentKind::UNSET; 
                    attribute :>> nature = PhysicalComponentNature::NODE; 
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Discharge Excess Water'.'FIP 1'
                            to allocatingPort ::> 'FIP 1'; 
                        ref :>> ownedPortAllocations =  ('2f91fa70-2f8b-4ba3-9572-e0a9774a5c57'); 
                         
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
                            allocate allocatedPort ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Discharge Excess Water'.'FIP 1'
                            to allocatingPort ::> 'PP 2'; 
                        ref :>> ownedPortAllocations =  ('0bea985e-9bba-49f5-be3b-879af5b0aa9d'); 
                    }  
                    dependency '3163abc5-95b1-458f-b0d2-8ead240e4c03'
                        from '86fb4513-00db-4b78-8f75-4256196f347a'
                        to  'Logical Architecture'::'Structure'::'Excess Water Discharge'::'60861243-2f35-40f8-a378-c4e7a7f56553' { 
                        @TransfoLink { 
                            @CapellaID { eid = "3163abc5-95b1-458f-b0d2-8ead240e4c03"; } 
                        }  
                    }  
                    dependency 'e72cb26a-5bf3-4b76-8134-f84bf090095e'
                        from 'FIP 1'::'2f91fa70-2f8b-4ba3-9572-e0a9774a5c57'
                        to  'Logical Architecture'::'Structure'::'Excess Water Discharge'::'FIP 1'::'46f27ff8-9cdc-49e0-b4fa-b714e3318545' { 
                        @TransfoLink { 
                            @CapellaID { eid = "e72cb26a-5bf3-4b76-8134-f84bf090095e"; } 
                        }  
                    }  
                    allocation '86fb4513-00db-4b78-8f75-4256196f347a' : ComponentFunctionalAllocation
                        allocate function ::> 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Discharge Excess Water'
                        to component ::> 'Structure'::'Excess Water Discharge' { 
                        @CapellaID { eid = "86fb4513-00db-4b78-8f75-4256196f347a"; } 
                    } 
                    perform 'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Discharge Excess Water' ; 
                     
                    ref :>> ownedFunctionalAllocation =  ('86fb4513-00db-4b78-8f75-4256196f347a'); 
                }  
            } 
            package 'Physical Functions' {
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
                    action 'Test Chain - Distill and Distribute Water (Backup Pipeline)' : FunctionalChain  { 
                        @CapellaID { eid = "8fa48383-648b-414c-b555-88aaefb7cd80"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action 'bf430795-a77f-40f0-a0b4-4ef05d30f2ed' = 'Actor Functions'.'Operate Distiller'; 
                        connection '332a98f0-3e3e-4715-bd22-b6e77bbc90d5' : FunctionalChainInvolvementLink 
                            connect source ::> 'bf430795-a77f-40f0-a0b4-4ef05d30f2ed'
                            to  target ::> 'b2bef7bf-98ad-4417-8aae-713e690b7f73' {

                                ref :>> involved = '02ad4ead-4d78-4fcf-b476-906943c4ff06';

                            } 
                        ref action 'b2bef7bf-98ad-4417-8aae-713e690b7f73' = 'Actor Functions'.'Provide Water'; 
                        connection '34814177-20b9-4adf-bb38-d4b4d45ae171' : FunctionalChainInvolvementLink 
                            connect source ::> 'bf430795-a77f-40f0-a0b4-4ef05d30f2ed'
                            to  target ::> '666aaa23-6a3a-4356-a091-3239cac92afc' {

                                ref :>> involved = '8d255656-b25a-46bf-858e-d6ba28161f3b';

                            } 
                        ref action '666aaa23-6a3a-4356-a091-3239cac92afc' = 'Actor Functions'.'Generate Heat'; 
                        connection '8b9c67ee-c969-44b6-a87d-3eb50f9bd865' : FunctionalChainInvolvementLink 
                            connect source ::> 'b2bef7bf-98ad-4417-8aae-713e690b7f73'
                            to  target ::> '4322a4b9-bccc-4561-8068-b599b1715568' {

                                ref :>> involved = 'd2fadfc2-5ca1-4fe0-aee5-37b8987689b5';

                            } 
                        connection '14561966-305b-4cff-9ea7-5d3efe2507b1' : FunctionalChainInvolvementLink 
                            connect source ::> '22276e04-8e53-4d41-87c4-a6dcad475f16'
                            to  target ::> 'be61662b-b640-4204-8e91-aeda3e8eccd2' {

                                ref :>> involved = '4689b116-bb9c-4af2-a3ca-935679587f3b';

                            } 
                        ref action 'be61662b-b640-4204-8e91-aeda3e8eccd2' = 'Actor Functions'.'Store Clean Water'; 
                        connection '82eece44-fbc8-4831-8c6b-9935b8075c08' : FunctionalChainInvolvementLink 
                            connect source ::> 'be61662b-b640-4204-8e91-aeda3e8eccd2'
                            to  target ::> 'cebf2363-11c4-4116-9afb-7cd43638f0b5' {

                                ref :>> involved = 'd9cee39d-3bed-49ed-bc4c-f01c6560681a';

                            } 
                        ref action 'cebf2363-11c4-4116-9afb-7cd43638f0b5' = 'Actor Functions'.'Distribute Clean Water'; 
                        connection '672d5611-f431-43c6-a791-398c4cb78192' : FunctionalChainInvolvementLink 
                            connect source ::> 'cebf2363-11c4-4116-9afb-7cd43638f0b5'
                            to  target ::> '7a7e5532-f91c-4cd1-9a4b-09aadd3b279b' {

                                ref :>> involved = 'd86eee53-1e17-472a-a454-779e07b4c76b';

                            } 
                        ref action '7a7e5532-f91c-4cd1-9a4b-09aadd3b279b' = 'Actor Functions'.'Get Clean Water'; 
                        ref action '4322a4b9-bccc-4561-8068-b599b1715568' = 'System Functions'.'Distill Water'.'Heat Water'; 
                        ref action '22276e04-8e53-4d41-87c4-a6dcad475f16' = 'System Functions'.'Distill Water'.'Condense Steam'; 
                        ref action '758f0a51-3288-43e7-8963-a909e5710572' = 'System Functions'.'Distill Water'.'Boil Water'; 
                        connection 'c6fc7169-afbe-4ab5-87d2-59d0e598324b' : FunctionalChainInvolvementLink 
                            connect source ::> '758f0a51-3288-43e7-8963-a909e5710572'
                            to  target ::> '3f378a93-ab38-447b-8cfa-2980a989390c' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'2dedf276-8988-40b1-9f20-fa6aa4bfb1bc';

                            } 
                        ref action 'bc781924-da75-4f62-84a2-53f8c9a15c18' = 'Actor Functions'.'Discharge Residue'; 
                        connection 'eff881b0-b957-405b-b776-aab089824d37' : FunctionalChainInvolvementLink 
                            connect source ::> '3f378a93-ab38-447b-8cfa-2980a989390c'
                            to  target ::> 'bc781924-da75-4f62-84a2-53f8c9a15c18' {

                                ref :>> involved = 'c27e7350-f701-46fd-b455-c3f99a6d9b3d';

                            } 
                        connection 'fd830524-9d78-4886-89eb-f87c733d7898' : FunctionalChainInvolvementLink 
                            connect source ::> '666aaa23-6a3a-4356-a091-3239cac92afc'
                            to  target ::> '758f0a51-3288-43e7-8963-a909e5710572' {

                                ref :>> involved = 'fbf93101-8edf-4ee0-9a61-b7a8209c30ee';

                            } 
                        ref action '3f378a93-ab38-447b-8cfa-2980a989390c' = 'System Functions'.'Distill Water'.'Drain Residue'; 
                        connection '9f5c9ee7-01c0-4902-8978-8d86e855dd4e' : FunctionalChainInvolvementLink 
                            connect source ::> '758f0a51-3288-43e7-8963-a909e5710572'
                            to  target ::> '22276e04-8e53-4d41-87c4-a6dcad475f16' {

                                ref :>> involved = 'System Functions'.'Distill Water'.'afc69fbe-0dd9-480b-aa5f-b72c8a537751';

                            } 
                        ref action '560cb55b-88c7-4698-9dd3-befc5224c086' = 'Divert Flow'; 
                        connection '5656b2f0-4d65-4b64-ad62-ba215f4d8eea' : FunctionalChainInvolvementLink 
                            connect source ::> '4322a4b9-bccc-4561-8068-b599b1715568'
                            to  target ::> '560cb55b-88c7-4698-9dd3-befc5224c086' {

                                ref :>> involved = '2b1b287f-82fd-4aa3-bc91-41164bfa7f1c';

                            } 
                        ref action '9d736556-09c7-499c-8433-28beef625210' = 'Throttle Flow'; 
                        connection 'e6f5b786-d878-43be-befc-c907fdcb43bb' : FunctionalChainInvolvementLink 
                            connect source ::> '9d736556-09c7-499c-8433-28beef625210'
                            to  target ::> '758f0a51-3288-43e7-8963-a909e5710572' {

                                ref :>> involved = '1e0bb105-78e7-4461-b461-3815eebe0022';

                            } 
                         
                    }  
                    action 'Maintain System' : FunctionalChain  { 
                        @CapellaID { eid = "d3be1d4c-5f70-4132-8173-7e2d7b705a5c"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '269ef3c3-85ba-4d92-a66a-ac3be75e751c' = 'System Functions'.'Maintain and Serivce System'; 
                        connection 'd0d34f19-e572-4a83-90e2-1a68cab56cf7' : FunctionalChainInvolvementLink 
                            connect source ::> '269ef3c3-85ba-4d92-a66a-ac3be75e751c'
                            to  target ::> '07c8e7c5-be1c-44be-bbbc-9517c44c2a88' {

                                ref :>> involved = '39ffbf26-a32f-4c23-a317-101ee271ae8f';

                            } 
                        ref action '07c8e7c5-be1c-44be-bbbc-9517c44c2a88' = 'System Functions'.'Allow maintenance and service'; 
                         
                    }  
                    action 'Backup Flow' : FunctionalChain  { 
                        @CapellaID { eid = "4c40bbdb-bded-4cd5-a659-62d3d43c3532"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action '6407cf6c-d0b8-4b9f-80e2-1317a9d030d1' = 'System Functions'.'Distill Water'.'Heat Water'; 
                    }  
                    action 'Main Flow' : FunctionalChain  { 
                        @CapellaID { eid = "9168cc43-cf40-4595-aaeb-6c397aeaad4e"; } 
                        attribute :>> kind = FunctionalChainKind::SIMPLE; 
                        ref action 'bd436bb9-98ed-4c6b-8900-a810ea3a3795' = 'System Functions'.'Distill Water'.'Heat Water'; 
                        ref action 'd9986923-caae-4461-9659-8638c8915b53' = 'Actor Functions'.'Discharge Excess Water'; 
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
                        in port 'FIP 1' : FunctionInputPort  { 
                            @CapellaID { eid = "f8507e9e-6d37-48c7-80af-10d7e19a5e68"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        out port 'FOP 1' : FunctionOutputPort  { 
                            @CapellaID { eid = "9f549a2f-cf52-493c-9e92-22a7bac723a4"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        ref :>> inputs =  ('FIP 1'); 
                        ref :>> outputs =  ('FOP 1'); 
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
                        in port 'Condensor In' : FunctionInputPort  { 
                            @CapellaID { eid = "9c1575c6-1ed7-4058-ac3e-62e757a3c219"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        out port 'Main Out' : FunctionOutputPort  { 
                            @CapellaID { eid = "4e1edfbe-37eb-4fcd-8beb-d6f842a23fd9"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        out port 'FOP 2' : FunctionOutputPort  { 
                            @CapellaID { eid = "601957bc-67ef-4b8f-9b09-5ac70b7d573d"; } 
                            attribute :>> isControl = false; 
                            attribute :>> isControlType = false; 
                            attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                            attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                            ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                        }  
                        ref :>> inputs =  ('Condensor In'); 
                        ref :>> outputs =  ('Main Out',
                        'FOP 2'); 
                    }  
                    dependency 'f23ccdc1-dad9-4836-aa7c-1b6972d4dba3'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'bf430795-a77f-40f0-a0b4-4ef05d30f2ed'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'1a22c4d3-0037-4473-8404-31a4a3fd57e7' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f23ccdc1-dad9-4836-aa7c-1b6972d4dba3"; } 
                        }  
                    }  
                    dependency '12f828c4-40c9-4620-b91c-50db1ee909ac'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'332a98f0-3e3e-4715-bd22-b6e77bbc90d5'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'255c315a-9d21-4938-86ae-ffc606f8db5c' { 
                        @TransfoLink { 
                            @CapellaID { eid = "12f828c4-40c9-4620-b91c-50db1ee909ac"; } 
                        }  
                    }  
                    dependency 'ae1d8995-274d-4c37-879f-672cdd6855d0'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'b2bef7bf-98ad-4417-8aae-713e690b7f73'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'c1e2a9d0-b740-472c-8b3d-5eb76c380e52' { 
                        @TransfoLink { 
                            @CapellaID { eid = "ae1d8995-274d-4c37-879f-672cdd6855d0"; } 
                        }  
                    }  
                    dependency '35747fe7-7dbc-4906-8e1a-5203e59e5f2b'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'34814177-20b9-4adf-bb38-d4b4d45ae171'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'17b071f7-d991-4b48-b457-e208b93b28d5' { 
                        @TransfoLink { 
                            @CapellaID { eid = "35747fe7-7dbc-4906-8e1a-5203e59e5f2b"; } 
                        }  
                    }  
                    dependency '14f329b1-c1ed-4cd8-9938-164c716c168a'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'666aaa23-6a3a-4356-a091-3239cac92afc'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'93037076-1d1f-4120-89f4-83e22e8dd425' { 
                        @TransfoLink { 
                            @CapellaID { eid = "14f329b1-c1ed-4cd8-9938-164c716c168a"; } 
                        }  
                    }  
                    dependency 'c7e48050-5abb-486a-bdf6-06e96a7ecd82'
                        from 'Maintain System'::'269ef3c3-85ba-4d92-a66a-ac3be75e751c'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Maintain System'::'8a6d8993-ba2a-4918-a2e2-0c555afdf77f' { 
                        @TransfoLink { 
                            @CapellaID { eid = "c7e48050-5abb-486a-bdf6-06e96a7ecd82"; } 
                        }  
                    }  
                    dependency 'f6e70cd3-0622-47e3-b03e-d41e95132f07'
                        from 'Maintain System'::'d0d34f19-e572-4a83-90e2-1a68cab56cf7'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Maintain System'::'8a44fee8-6900-4d1d-b39e-002a7378b9c2' { 
                        @TransfoLink { 
                            @CapellaID { eid = "f6e70cd3-0622-47e3-b03e-d41e95132f07"; } 
                        }  
                    }  
                    dependency '11fbb077-0c70-4a16-9e64-9b552731209e'
                        from 'Maintain System'::'07c8e7c5-be1c-44be-bbbc-9517c44c2a88'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Maintain System'::'ef3d2cb1-9ef3-4c8c-a973-56d804bd0d31' { 
                        @TransfoLink { 
                            @CapellaID { eid = "11fbb077-0c70-4a16-9e64-9b552731209e"; } 
                        }  
                    }  
                    dependency 'ba57a3ea-bc67-4898-9d73-0d260cc5a32f'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'8b9c67ee-c969-44b6-a87d-3eb50f9bd865'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'66ea36d1-c291-4167-a170-e6a607ea1bc4' { 
                        @TransfoLink { 
                            @CapellaID { eid = "ba57a3ea-bc67-4898-9d73-0d260cc5a32f"; } 
                        }  
                    }  
                    dependency '732198a0-6a8a-4e3d-b882-8f17776ab089'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'14561966-305b-4cff-9ea7-5d3efe2507b1'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'2dd2be46-fa7f-4a39-a428-60b6f1b46599' { 
                        @TransfoLink { 
                            @CapellaID { eid = "732198a0-6a8a-4e3d-b882-8f17776ab089"; } 
                        }  
                    }  
                    dependency '30393210-3994-4ab3-b3d5-953312413100'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'be61662b-b640-4204-8e91-aeda3e8eccd2'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'8f282e2a-9cb3-40e3-9f29-23522acfe2a2' { 
                        @TransfoLink { 
                            @CapellaID { eid = "30393210-3994-4ab3-b3d5-953312413100"; } 
                        }  
                    }  
                    dependency 'adfd4e56-da62-44ad-9f7d-ea8c6986c49d'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'82eece44-fbc8-4831-8c6b-9935b8075c08'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'18fed45d-c5c9-4e5f-aa24-f48235fb015e' { 
                        @TransfoLink { 
                            @CapellaID { eid = "adfd4e56-da62-44ad-9f7d-ea8c6986c49d"; } 
                        }  
                    }  
                    dependency '4a1ee5b9-e5c0-4115-a9c6-fcd9e80c8f2e'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'cebf2363-11c4-4116-9afb-7cd43638f0b5'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'46eed045-190f-4368-99f3-c5dd8077471f' { 
                        @TransfoLink { 
                            @CapellaID { eid = "4a1ee5b9-e5c0-4115-a9c6-fcd9e80c8f2e"; } 
                        }  
                    }  
                    dependency '670ee012-6752-4564-84a1-71f35d6dc9c1'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'672d5611-f431-43c6-a791-398c4cb78192'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'cd83dd61-9f73-412e-8bfa-3ce1f5160e8b' { 
                        @TransfoLink { 
                            @CapellaID { eid = "670ee012-6752-4564-84a1-71f35d6dc9c1"; } 
                        }  
                    }  
                    dependency 'd39b1a37-be11-4e26-a9c1-030204448d6d'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'7a7e5532-f91c-4cd1-9a4b-09aadd3b279b'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'b9474ac9-6344-465f-b8f4-d60c87ea5a7d' { 
                        @TransfoLink { 
                            @CapellaID { eid = "d39b1a37-be11-4e26-a9c1-030204448d6d"; } 
                        }  
                    }  
                    dependency '9ad3b6ab-903c-4cbd-9a83-94af62dc271d'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'4322a4b9-bccc-4561-8068-b599b1715568'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'2914868b-39ca-401d-88e6-343f2046df6b' { 
                        @TransfoLink { 
                            @CapellaID { eid = "9ad3b6ab-903c-4cbd-9a83-94af62dc271d"; } 
                        }  
                    }  
                    dependency 'b8c28a44-b5fe-407c-86c9-2ccae8049ed3'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'22276e04-8e53-4d41-87c4-a6dcad475f16'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'a0ba19cc-5818-41f4-957f-2715e6436c5f' { 
                        @TransfoLink { 
                            @CapellaID { eid = "b8c28a44-b5fe-407c-86c9-2ccae8049ed3"; } 
                        }  
                    }  
                    dependency '625367c4-e2d4-4236-9f7c-8d651266e269'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'758f0a51-3288-43e7-8963-a909e5710572'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'52245c69-0f49-46fe-9d7f-dd7f0a306a75' { 
                        @TransfoLink { 
                            @CapellaID { eid = "625367c4-e2d4-4236-9f7c-8d651266e269"; } 
                        }  
                    }  
                    dependency '07bf759e-4c47-4e08-819c-7e7e44cb14b9'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'c6fc7169-afbe-4ab5-87d2-59d0e598324b'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'f44ba065-954f-43ca-8f47-c66a78513226' { 
                        @TransfoLink { 
                            @CapellaID { eid = "07bf759e-4c47-4e08-819c-7e7e44cb14b9"; } 
                        }  
                    }  
                    dependency '83a8513e-2230-4c48-b698-121ea6f646e0'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'bc781924-da75-4f62-84a2-53f8c9a15c18'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'369bda6b-8caa-435f-8488-600243576e3f' { 
                        @TransfoLink { 
                            @CapellaID { eid = "83a8513e-2230-4c48-b698-121ea6f646e0"; } 
                        }  
                    }  
                    dependency 'b5725d28-8cf5-4eca-86f6-67b81a5c6e73'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'eff881b0-b957-405b-b776-aab089824d37'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'65b84872-3dae-4f3c-bdd0-3f0ac96e494a' { 
                        @TransfoLink { 
                            @CapellaID { eid = "b5725d28-8cf5-4eca-86f6-67b81a5c6e73"; } 
                        }  
                    }  
                    dependency '0aa1101f-38ee-4e43-a953-e7aa3b506717'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'fd830524-9d78-4886-89eb-f87c733d7898'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'ff6210be-a767-4dbe-8cc0-7d299863937f' { 
                        @TransfoLink { 
                            @CapellaID { eid = "0aa1101f-38ee-4e43-a953-e7aa3b506717"; } 
                        }  
                    }  
                    dependency '69fdddf3-d0cf-4b91-9782-54fa9abe32db'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'3f378a93-ab38-447b-8cfa-2980a989390c'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'e2bf2c4f-8e74-4c9c-849b-a7f5304537ef' { 
                        @TransfoLink { 
                            @CapellaID { eid = "69fdddf3-d0cf-4b91-9782-54fa9abe32db"; } 
                        }  
                    }  
                    dependency '87339928-ea27-4d61-96e6-e99002623ea1'
                        from 'Test Chain - Distill and Distribute Water (Backup Pipeline)'::'9f5c9ee7-01c0-4902-8978-8d86e855dd4e'
                        to  'Logical Architecture'::'Logical Functions'::'Root Logical Function'::'Test chain - Distill and Distribute Water'::'e83f498c-f698-4a97-bd21-358d4d062526' { 
                        @TransfoLink { 
                            @CapellaID { eid = "87339928-ea27-4d61-96e6-e99002623ea1"; } 
                        }  
                    }  
                    interface '02ad4ead-4d78-4fcf-b476-906943c4ff06' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Operate Distiller'.'outWater Control'
                        to target ::> 'Actor Functions'.'Provide Water'.'inWater Control' { 
                        @CapellaID { eid = "02ad4ead-4d78-4fcf-b476-906943c4ff06"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Water Supply"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Water Supply Control'); 
                    }  
                    interface '8d255656-b25a-46bf-858e-d6ba28161f3b' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Operate Distiller'.'outPower Control'
                        to target ::> 'Actor Functions'.'Generate Heat'.'inPower Control' { 
                        @CapellaID { eid = "8d255656-b25a-46bf-858e-d6ba28161f3b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat Supply"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Power Supply Control'); 
                    }  
                    interface 'd2fadfc2-5ca1-4fe0-aee5-37b8987689b5' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Provide Water'.'outDirty Water'
                        to target ::> 'System Functions'.'Distill Water'.'Heat Water'.'inDirty Water' { 
                        @CapellaID { eid = "d2fadfc2-5ca1-4fe0-aee5-37b8987689b5"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Dirty Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '4689b116-bb9c-4af2-a3ca-935679587f3b' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Condense Steam'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Store Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "4689b116-bb9c-4af2-a3ca-935679587f3b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Distilled Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface 'd9cee39d-3bed-49ed-bc4c-f01c6560681a' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Store Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Distribute Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "d9cee39d-3bed-49ed-bc4c-f01c6560681a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '406cefff-802f-442d-8f92-ac38277f7136' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Drain Residue'.'outWaste'
                        to target ::> 'System Functions'.'Manage Waste'.'inWaste' { 
                        @CapellaID { eid = "406cefff-802f-442d-8f92-ac38277f7136"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Waste"; 
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Waste'); 
                    }  
                    interface 'd86eee53-1e17-472a-a454-779e07b4c76b' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Distribute Clean Water'.'outSafe Drinking Water'
                        to target ::> 'Actor Functions'.'Get Clean Water'.'inSafe Drinking Water' { 
                        @CapellaID { eid = "d86eee53-1e17-472a-a454-779e07b4c76b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Safe Drinking Water"; 
                         
                        ref :>> exchangedItems =  ('Operational Analysis'::'Data'::'Clean Water'); 
                    }  
                    interface '39ffbf26-a32f-4c23-a317-101ee271ae8f' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Maintain and Serivce System'.'outMaintainance'
                        to target ::> 'System Functions'.'Allow maintenance and service'.'inMaintainance' { 
                        @CapellaID { eid = "39ffbf26-a32f-4c23-a317-101ee271ae8f"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Maintainance"; 
                         
                    }  
                    interface 'f935fe2c-7abd-4fbe-b4e1-0b0229d8297c' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Install System'.'outInstallation'
                        to target ::> 'System Functions'.'Provide Deploymentability'.'inInstallation' { 
                        @CapellaID { eid = "f935fe2c-7abd-4fbe-b4e1-0b0229d8297c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Installation"; 
                         
                    }  
                    interface 'e9598749-2eae-478f-9ab5-3c00d8ba0952' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Certify System'.'outCertification'
                        to target ::> 'System Functions'.'Provide Deploymentability'.'inCertification' { 
                        @CapellaID { eid = "e9598749-2eae-478f-9ab5-3c00d8ba0952"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Certification"; 
                         
                    }  
                    interface 'fbf93101-8edf-4ee0-9a61-b7a8209c30ee' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Generate Heat'.'FOP 2'
                        to target ::> 'System Functions'.'Distill Water'.'Boil Water'.'FIP 1' { 
                        @CapellaID { eid = "fbf93101-8edf-4ee0-9a61-b7a8209c30ee"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Heat"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface 'c27e7350-f701-46fd-b455-c3f99a6d9b3d' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Drain Residue'.'FOP 2'
                        to target ::> 'Actor Functions'.'Discharge Residue'.'FIP 1' { 
                        @CapellaID { eid = "c27e7350-f701-46fd-b455-c3f99a6d9b3d"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Residue"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Sludge'); 
                    }  
                    interface '947328ac-5f47-4745-a87b-c30aba98372a' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Tend Water Source'.'FOP 1'
                        to target ::> 'Actor Functions'.'Provide Water'.'FIP 2' { 
                        @CapellaID { eid = "947328ac-5f47-4745-a87b-c30aba98372a"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Water"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '90dd0efb-797b-4506-a33e-8d26b1b6289b' : FunctionalExchange 
                        connect source ::> 'Actor Functions'.'Tend Heat Source'.'FOP 1'
                        to target ::> 'Actor Functions'.'Generate Heat'.'FIP 2' { 
                        @CapellaID { eid = "90dd0efb-797b-4506-a33e-8d26b1b6289b"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Provide Fuel"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Heat Control'); 
                    }  
                    interface '19fb9821-877c-42ca-8856-ffe2d2b947ec' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Divert Feed'.'FOP 2'
                        to target ::> 'Actor Functions'.'Discharge Excess Water'.'FIP 1' { 
                        @CapellaID { eid = "19fb9821-877c-42ca-8856-ffe2d2b947ec"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Bypass"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '4babf37b-7c92-4d8e-b68f-bb3643e0d97c' : FunctionalExchange 
                        connect source ::> 'Divert Flow'.'Main Out'
                        to target ::> 'Throttle Flow'.'FIP 1' { 
                        @CapellaID { eid = "4babf37b-7c92-4d8e-b68f-bb3643e0d97c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Dirty Water"; 
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '2b1b287f-82fd-4aa3-bc91-41164bfa7f1c' : FunctionalExchange 
                        connect source ::> 'System Functions'.'Distill Water'.'Heat Water'.'FOP 1'
                        to target ::> 'Divert Flow'.'Condensor In' { 
                        @CapellaID { eid = "2b1b287f-82fd-4aa3-bc91-41164bfa7f1c"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water CS"; 
                         
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '887d30a2-1d82-47f5-8cd6-b59f75bf6218' : FunctionalExchange 
                        connect source ::> 'Divert Flow'.'FOP 2'
                        to target ::> 'Actor Functions'.'Discharge Excess Water'.'FIP 1' { 
                        @CapellaID { eid = "887d30a2-1d82-47f5-8cd6-b59f75bf6218"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Bypass Water"; 
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    interface '1e0bb105-78e7-4461-b461-3815eebe0022' : FunctionalExchange 
                        connect source ::> 'Throttle Flow'.'FOP 1'
                        to target ::> 'System Functions'.'Distill Water'.'Boil Water'.'FIP 2' { 
                        @CapellaID { eid = "1e0bb105-78e7-4461-b461-3815eebe0022"; } 
                        attribute :>> isMulticast = false; 
                        attribute :>> isMultireceive = false; 
                        attribute :>> kindOfRate = RateKind::Unspecified; 
                        attribute :>> interfaceName = "Hot Water FE"; 
                        ref :>> exchangedItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                    }  
                    item  'System Functions' : ItemPackage {
                        @PackageMeta {
                            type = "PhysicalFunctionPkg";
                        } 
                        @CapellaID { eid = "8592f463-e505-43e4-a1ef-c19214a93a0e"; } 
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
                                out port 'FOP 1' : FunctionOutputPort  { 
                                    @CapellaID { eid = "0ca66c33-c15a-4484-8b67-2534bb7bcbba"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                    ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                                }  
                                ref :>> inputs =  ('inDirty Water',
                                'FIP 3'); 
                                 
                                ref :>> outputs =  ('FOP 1'); 
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
                                     
                                    ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                                }  
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
                                ref :>> inputs =  ('FIP 1',
                                'FIP 2'); 
                                 
                                ref :>> outputs =  ('FOP 1',
                                'FOP 2'); 
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
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "36ccd74a-b142-4206-8f2c-cdf9683fdcc9"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
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
                                ref :>> inputs =  ('FIP 1'); 
                                 
                                ref :>> outputs =  ('FOP 2',
                                'outWaste'); 
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
                                in port 'FIP 1' : FunctionInputPort  { 
                                    @CapellaID { eid = "68a70947-f467-40f1-9ecd-4496a58e3c15"; } 
                                    attribute :>> isControl = false; 
                                    attribute :>> isControlType = false; 
                                    attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                    attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                     
                                }  
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
                                ref :>> inputs =  ('FIP 1'); 
                                 
                                ref :>> outputs =  ('outSafe Drinking Water',
                                'FOP 2'); 
                            }  
                            interface '2dedf276-8988-40b1-9f20-fa6aa4bfb1bc' : FunctionalExchange 
                                connect source ::> 'Boil Water'.'FOP 1'
                                to target ::> 'Drain Residue'.'FIP 1' { 
                                @CapellaID { eid = "2dedf276-8988-40b1-9f20-fa6aa4bfb1bc"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Sludge"; 
                                 
                                ref :>> exchangedItems =  ('System Analysis'::'Data'::'Sludge'); 
                            }  
                            interface '6d85b198-fe16-4158-bc1f-dae442d8807e' : FunctionalExchange 
                                connect source ::> 'Condense Steam'.'FOP 2'
                                to target ::> 'Heat Water'.'FIP 3' { 
                                @CapellaID { eid = "6d85b198-fe16-4158-bc1f-dae442d8807e"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Recovered Heat"; 
                                 
                                ref :>> exchangedItems =  ('System Analysis'::'Data'::'Heat'); 
                            }  
                            interface 'afc69fbe-0dd9-480b-aa5f-b72c8a537751' : FunctionalExchange 
                                connect source ::> 'Boil Water'.'FOP 2'
                                to target ::> 'Condense Steam'.'FIP 1' { 
                                @CapellaID { eid = "afc69fbe-0dd9-480b-aa5f-b72c8a537751"; } 
                                attribute :>> isMulticast = false; 
                                attribute :>> isMultireceive = false; 
                                attribute :>> kindOfRate = RateKind::Unspecified; 
                                attribute :>> interfaceName = "Steam"; 
                                 
                            }  
                            ref :>> ownedFunctions =  ('Heat Water',
                            'Boil Water',
                            'Drain Residue',
                            'Condense Steam'); 
                            ref :>> ownedFunctionalExchanges =  ('2dedf276-8988-40b1-9f20-fa6aa4bfb1bc',
                            '6d85b198-fe16-4158-bc1f-dae442d8807e',
                            'afc69fbe-0dd9-480b-aa5f-b72c8a537751'); 
                             
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
                            ref :>> inputs =  ('inWaste'); 
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
                            ref :>> inputs =  ('inMaintainance'); 
                             
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
                             
                            ref :>> outputs =  ('outMaintainance'); 
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
                             
                            ref :>> outputs =  ('outInstallation'); 
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
                             
                            ref :>> outputs =  ('outCertification'); 
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
                            ref :>> inputs =  ('inInstallation',
                            'inCertification'); 
                             
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
                            in port 'FIP 2' : FunctionInputPort  { 
                                @CapellaID { eid = "24e273d9-78f8-4588-a1c6-2fe12d16c9c1"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                                ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            out port 'FOP 1' : FunctionOutputPort  { 
                                @CapellaID { eid = "be389065-3eaf-4e90-b5c8-75d9707cfda4"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                                ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "9505a27f-b143-4108-b863-6bef38a4c20e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                                ref :>> outgoingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            ref :>> inputs =  ('FIP 2'); 
                             
                            ref :>> outputs =  ('FOP 1',
                            'FOP 2'); 
                        }  
                    } 
                    item  'Actor Functions' : ItemPackage {
                        @PackageMeta {
                            type = "PhysicalFunctionPkg";
                        } 
                        @CapellaID { eid = "c476b07b-5dad-448f-8d4b-714f3b620afc"; } 
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
                            action 'Test Chain - Distill and Distribute Water' : FunctionalChain  { 
                                @CapellaID { eid = "c5bc05a8-92a9-4854-b41f-c356efec1609"; } 
                                attribute :>> kind = FunctionalChainKind::SIMPLE; 
                                ref action '9487b02b-054b-41ce-8bb4-bd513ddaea98' = 'Distiller Project Project'::'Distiller Project'::'Physical Architecture'::'Physical Functions'::'Root Physical Function'.'Actor Functions'.'Operate Distiller'; 
                                connection '119fa752-abcd-4228-9e9f-c092b3e32db9' : FunctionalChainInvolvementLink 
                                    connect source ::> '9487b02b-054b-41ce-8bb4-bd513ddaea98'
                                    to  target ::> 'afe9068c-2017-4845-9604-935416db840e' {

                                        ref :>> involved = '02ad4ead-4d78-4fcf-b476-906943c4ff06';

                                    } 
                                ref action 'afe9068c-2017-4845-9604-935416db840e' = 'Provide Water'; 
                                connection '2f4ae201-96c3-42ce-af8a-8e55c41d83fe' : FunctionalChainInvolvementLink 
                                    connect source ::> '9487b02b-054b-41ce-8bb4-bd513ddaea98'
                                    to  target ::> '531a7a6e-359e-4e09-99a0-0d59a58bcc7c' {

                                        ref :>> involved = '8d255656-b25a-46bf-858e-d6ba28161f3b';

                                    } 
                                ref action '531a7a6e-359e-4e09-99a0-0d59a58bcc7c' = 'Generate Heat'; 
                                connection 'f9849e21-10b6-4e93-a497-cc0dd22223c5' : FunctionalChainInvolvementLink 
                                    connect source ::> 'afe9068c-2017-4845-9604-935416db840e'
                                    to  target ::> '9ba11de0-0c83-443b-ae92-f378256149aa' {

                                        ref :>> involved = 'd2fadfc2-5ca1-4fe0-aee5-37b8987689b5';

                                    } 
                                ref action '9ba11de0-0c83-443b-ae92-f378256149aa' = 'System Functions'.'Distill Water'.'Heat Water'; 
                                connection 'bd8d9200-6bb0-46fb-9323-189b5d5cb7fc' : FunctionalChainInvolvementLink 
                                    connect source ::> '531a7a6e-359e-4e09-99a0-0d59a58bcc7c'
                                    to  target ::> '95aef41e-f398-424e-8f0e-d166c06f0384' {

                                        ref :>> involved = 'fbf93101-8edf-4ee0-9a61-b7a8209c30ee';

                                    } 
                                ref action '95aef41e-f398-424e-8f0e-d166c06f0384' = 'System Functions'.'Distill Water'.'Boil Water'; 
                                connection '17128410-8aa2-4181-84cf-4848fe1c5b54' : FunctionalChainInvolvementLink 
                                    connect source ::> '9ba11de0-0c83-443b-ae92-f378256149aa'
                                    to  target ::> '1d958367-6231-49da-88d8-2b5c56a7ec71' {

                                        ref :>> involved = '2b1b287f-82fd-4aa3-bc91-41164bfa7f1c';

                                    } 
                                ref action '1d958367-6231-49da-88d8-2b5c56a7ec71' = 'Divert Flow'; 
                                connection 'c7d642e0-81f4-4030-b479-04ee04f0fdf6' : FunctionalChainInvolvementLink 
                                    connect source ::> '1d958367-6231-49da-88d8-2b5c56a7ec71'
                                    to  target ::> '821a4a61-804e-45d2-bdc5-85a18db2d538' {

                                        ref :>> involved = '4babf37b-7c92-4d8e-b68f-bb3643e0d97c';

                                    } 
                                ref action '821a4a61-804e-45d2-bdc5-85a18db2d538' = 'Throttle Flow'; 
                                connection '376a1a1b-38e1-45a2-8d51-4633204db669' : FunctionalChainInvolvementLink 
                                    connect source ::> '821a4a61-804e-45d2-bdc5-85a18db2d538'
                                    to  target ::> '95aef41e-f398-424e-8f0e-d166c06f0384' {

                                        ref :>> involved = '1e0bb105-78e7-4461-b461-3815eebe0022';

                                    } 
                                connection '653b7959-43bf-45b9-a327-9dc723ed740a' : FunctionalChainInvolvementLink 
                                    connect source ::> '95aef41e-f398-424e-8f0e-d166c06f0384'
                                    to  target ::> '97bd0038-c289-471b-989e-c3bd62dedba5' {

                                        ref :>> involved = 'System Functions'.'Distill Water'.'afc69fbe-0dd9-480b-aa5f-b72c8a537751';

                                    } 
                                ref action '97bd0038-c289-471b-989e-c3bd62dedba5' = 'System Functions'.'Distill Water'.'Condense Steam'; 
                                connection 'a7ca6d2f-59e9-4802-932f-7acd1dc63e70' : FunctionalChainInvolvementLink 
                                    connect source ::> '97bd0038-c289-471b-989e-c3bd62dedba5'
                                    to  target ::> '7d8c7503-e8ca-46b5-b10a-dd07fc783d70' {

                                        ref :>> involved = '4689b116-bb9c-4af2-a3ca-935679587f3b';

                                    } 
                                ref action '7d8c7503-e8ca-46b5-b10a-dd07fc783d70' = 'Store Clean Water'; 
                                connection 'ab529ab7-76a2-4d15-be45-bab0066796a8' : FunctionalChainInvolvementLink 
                                    connect source ::> '7d8c7503-e8ca-46b5-b10a-dd07fc783d70'
                                    to  target ::> '9fe48cbb-0f4d-4e46-9f7d-7bf4ed217c35' {

                                        ref :>> involved = 'd9cee39d-3bed-49ed-bc4c-f01c6560681a';

                                    } 
                                ref action '9fe48cbb-0f4d-4e46-9f7d-7bf4ed217c35' = 'Distribute Clean Water'; 
                                connection '245e38af-816a-41b4-846d-f00a67d82e63' : FunctionalChainInvolvementLink 
                                    connect source ::> '9fe48cbb-0f4d-4e46-9f7d-7bf4ed217c35'
                                    to  target ::> '701bc8cb-942a-47e4-89a7-a3997e6dea84' {

                                        ref :>> involved = 'd86eee53-1e17-472a-a454-779e07b4c76b';

                                    } 
                                ref action '701bc8cb-942a-47e4-89a7-a3997e6dea84' = 'Get Clean Water'; 
                                connection '144d2d85-d66b-4141-9539-dc7808d9b533' : FunctionalChainInvolvementLink 
                                    connect source ::> '95aef41e-f398-424e-8f0e-d166c06f0384'
                                    to  target ::> 'cc0ddcd4-7a25-4f19-81a6-9a43c6c5cee3' {

                                        ref :>> involved = 'System Functions'.'Distill Water'.'2dedf276-8988-40b1-9f20-fa6aa4bfb1bc';

                                    } 
                                ref action 'cc0ddcd4-7a25-4f19-81a6-9a43c6c5cee3' = 'System Functions'.'Distill Water'.'Drain Residue'; 
                                connection '1925c720-3e12-4195-a327-62e9d90c5447' : FunctionalChainInvolvementLink 
                                    connect source ::> 'cc0ddcd4-7a25-4f19-81a6-9a43c6c5cee3'
                                    to  target ::> '244e9812-e7c0-4339-9836-73845e2bae7a' {

                                        ref :>> involved = 'c27e7350-f701-46fd-b455-c3f99a6d9b3d';

                                    } 
                                ref action '244e9812-e7c0-4339-9836-73845e2bae7a' = 'Discharge Residue'; 
                                 
                            }  
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
                             
                            ref :>> outputs =  ('outWater Control',
                            'outPower Control'); 
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
                            out port 'outDirty Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "68cfa5f2-2174-4d77-a718-8a644bbec56d"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inWater Control',
                            'FIP 2'); 
                             
                            ref :>> outputs =  ('outDirty Water'); 
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
                            out port 'FOP 2' : FunctionOutputPort  { 
                                @CapellaID { eid = "0ccbbd28-e0f7-43b1-b29b-4c2a1294759f"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inPower Control',
                            'FIP 2'); 
                             
                            ref :>> outputs =  ('FOP 2'); 
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
                            in port 'inSafe Drinking Water' : FunctionInputPort  { 
                                @CapellaID { eid = "ae91e10a-f969-45c2-b2f9-f90a71362078"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "2a233698-4a98-4606-8b4f-186b99c15e30"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
                            ref :>> outputs =  ('outSafe Drinking Water'); 
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
                            in port 'inSafe Drinking Water' : FunctionInputPort  { 
                                @CapellaID { eid = "82a3965d-22fb-4f70-845c-5a0c8e57130e"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            out port 'outSafe Drinking Water' : FunctionOutputPort  { 
                                @CapellaID { eid = "1a77c3a8-3acc-48f7-bd7e-8963df0e2202"; } 
                                attribute :>> isControl = false; 
                                attribute :>> isControlType = false; 
                                attribute :>> kindOfNode = ObjectNodeKind::Unspecified; 
                                attribute :>> ordering = ObjectNodeOrderingKind::FIFO; 
                                 
                            }  
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
                            ref :>> outputs =  ('outSafe Drinking Water'); 
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
                            ref :>> inputs =  ('inSafe Drinking Water'); 
                             
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
                            ref :>> inputs =  ('FIP 1'); 
                             
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
                             
                            ref :>> outputs =  ('FOP 1'); 
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
                             
                            ref :>> outputs =  ('FOP 1'); 
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
                                 
                                ref :>> incomingExchangeItems =  ('System Analysis'::'Data'::'Dirty Water'); 
                            }  
                            ref :>> inputs =  ('FIP 1'); 
                             
                        }  
                    } 
                    ref :>> ownedFunctions =  ('Throttle Flow',
                    'Divert Flow'); 
                    ref :>> ownedFunctionalExchanges =  ('02ad4ead-4d78-4fcf-b476-906943c4ff06',
                    '8d255656-b25a-46bf-858e-d6ba28161f3b',
                    'd2fadfc2-5ca1-4fe0-aee5-37b8987689b5',
                    '4689b116-bb9c-4af2-a3ca-935679587f3b',
                    'd9cee39d-3bed-49ed-bc4c-f01c6560681a',
                    '406cefff-802f-442d-8f92-ac38277f7136',
                    'd86eee53-1e17-472a-a454-779e07b4c76b',
                    '39ffbf26-a32f-4c23-a317-101ee271ae8f',
                    'f935fe2c-7abd-4fbe-b4e1-0b0229d8297c',
                    'e9598749-2eae-478f-9ab5-3c00d8ba0952',
                    'fbf93101-8edf-4ee0-9a61-b7a8209c30ee',
                    'c27e7350-f701-46fd-b455-c3f99a6d9b3d',
                    '947328ac-5f47-4745-a87b-c30aba98372a',
                    '90dd0efb-797b-4506-a33e-8d26b1b6289b',
                    '19fb9821-877c-42ca-8856-ffe2d2b947ec',
                    '4babf37b-7c92-4d8e-b68f-bb3643e0d97c',
                    '2b1b287f-82fd-4aa3-bc91-41164bfa7f1c',
                    '887d30a2-1d82-47f5-8cd6-b59f75bf6218',
                    '1e0bb105-78e7-4461-b461-3815eebe0022'); 
                    ref :>> ownedPhysicalFunctionPkgs =  ('System Functions',
                    'Actor Functions'); 
                     
                }  
            } 
            package 'Capabilities' {
                @PackageMeta {
                    type = "CapabilityRealizationPkg";
                } 
                @CapellaID { eid = "91125c3e-9581-4182-ba2b-a4819d19c2d0"; } 
                use case 'Operate Distiller' : CapabilityRealization { 
                    @CapellaID { eid = "caa5b5ff-eaaa-423a-848e-faa7aeccd9db"; } 
                    ref action '8987ad05-4fe8-4a12-8520-a013978f672e' = 'Physical Functions'::'Root Physical Function'.'Test Chain - Distill and Distribute Water (Backup Pipeline)'; 
                    dependency 'c7d7a096-65c2-46b6-9711-82f1584c9288'
                        from '8987ad05-4fe8-4a12-8520-a013978f672e'
                        to  'Logical Architecture'::'Capabilities'::'Operate Distiller'::'2e8160ee-68b9-4fb4-b0b6-ed75cf389aa6' { 
                        @TransfoLink { 
                            @CapellaID { eid = "c7d7a096-65c2-46b6-9711-82f1584c9288"; } 
                        }  
                    }  
                     
                }  
            } 
        } 
    } 
    item '5bc735f6-994c-4398-bc70-c6414d537b11' : ModelInformation  { 
        @CapellaID { eid = "5bc735f6-994c-4398-bc70-c6414d537b11"; } 
    }  
}

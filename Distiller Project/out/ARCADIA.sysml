library package ARCADIA {
    import ScalarValues::*;
    import Actions::JoinAction;
    import Actions::MergeAction;
    import Constraints::ConstraintCheck;
    import MeasurementReferences::SimpleUnit;

    metadata def PackageMeta {
        attribute type : String;
        attribute summary : String;
    } 

    metadata def CapellaID {
        alias selfId for elementId {
            doc /*
                * Alias for globally unique elementId identifier.
                * This is intended to be set by the Capella adaptor tool, and it must not change during the lifetime of the annotated element
                */
        }
    }

    /* Base Unit of Measure for ARCADIA */
    attribute def ARCADIAUnit :> SimpleUnit;

    constraint def CapellaConstraint {

        ref occurrence constrainedElements[0..*];
    }

    requirement def ReqIFRequirement {
        attribute ReqIFPrefix : String;
        attribute ReqIFIdentifier : String;
    }

    enum def ParameterDirection :> Integer {
        doc /* specifies the direction in which data is passed along through a parameter
        * [source: Capella study]
        */

        enum IN = 0 {
            doc /* used when the parameter represents an input of the operation it is used in
            * [source: Capella study]
            */
        }
        enum OUT = 1 {
            doc /* used when the parameter represents an output of the operation it is used in
            * [source: Capella study]
            */
        }
        enum INOUT = 2 {
            doc /* used when the parameter represents both an input and on output of the operation it is used in
            * [source: Capella study]
            */
        }
        enum RETURN = 3 {
            doc /* used when the parameter represents the return value of the operation it is used in
            * [source: Capella study]
            */
        }
        enum EXCEPTION = 4 {
            doc /* the parameter is like an exception */
        }
        enum UNSET = 5 {
            doc /* used when the CommunicationLink protocol is not yet set */
        }
    }
    enum def PassingMode :> Integer {
        doc /* specifies the data passing mechanism for parameters of an operation
        * [source: Capella study]
        */

        enum UNSET = 0 {
            doc /* used when the data passing mechanism is not precised
            * [source: Capella study]
            */
        }
        enum BY_REF = 1 {
            doc /* used when the data is being passed by reference to the operation
            * [source: Capella study]
            */
        }
        enum BY_VALUE = 2 {
            doc /* used when the data is being passed by value to the operation
            * [source: Capella study]
            */
        }
    }
    enum def AccessPolicy :> Integer {
        doc /**/

        enum readOnly = 0 {
            doc /**/
        }
        enum readAndWrite = 1 {
            doc /**/
        }
    }
    enum def ControlNodeKind :> Integer {
        doc /**/

        enum OR = 0 {
            doc /**/
        }
        enum AND = 1 {
            doc /**/
        }
        enum ITERATE = 2 {
            doc /**/
        }
    }
    enum def UnaryOperator :> Integer {
        doc /* Specifies the kind of this unary operator */

        enum UNSET = 0 {
            doc /* Used when the unary operator is not initialized */
        }
        enum NOT = 1 {
            doc /* Used when the unary operator refers to a NOT operation */
        }
        enum POS = 2 {
            doc /* Used when the unary operator refers to a position operation */
        }
        enum VAL = 3 {
            doc /* Used when the unary operator refers to a value operation */
        }
        enum SUC = 4 {
            doc /* Used when the unary operator refers to a successor operation */
        }
        enum PRE = 5 {
            doc /* Used when the unary operator refers to a predecessor operation */
        }
    }
    enum def CommunicationLinkKind :> Integer {
        doc /* enumeration listing the various possibilities of communication links
        * [source: Capella study]
        */

        enum UNSET = 0 {
            doc /* used when the CommunicationLink protocol is not yet set */
        }
        enum PRODUCE = 1 {
            doc /* used when the CommunicationLink is used to describe a production of ExchangeItem */
        }
        enum CONSUME = 2 {
            doc /* used when the CommunicationLink is used to describe a comsumption of ExchangeItem */
        }
        enum SEND = 3 {
            doc /* used when the CommunicationLink is used to describe a sending of ExchangeItem */
        }
        enum RECEIVE = 4 {
            doc /* used when the CommunicationLink is used to describe a reception of ExchangeItem */
        }
        enum CALL = 5 {
            doc /* used when the CommunicationLink is used to describe a call of ExchangeItem */
        }
        enum EXECUTE = 6 {
            doc /* used when the CommunicationLink is used to describe an execution of ExchangeItem */
        }
        enum WRITE = 7 {
            doc /* used when the CommunicationLink is used to describe a writing of ExchangeItem */
        }
        enum ACCESS = 8 {
            doc /* used when the CommunicationLink is used to describe an access to the ExchangeItem */
        }
        enum ACQUIRE = 9 {
            doc /* used when the CommunicationLink is used to describe an acquisition of ExchangeItem */
        }
        enum TRANSMIT = 10 {
            doc /* used when the CommunicationLink is used to describe a transmission of ExchangeItem */
        }
    }
    enum def CatalogElementKind :> Integer {
        doc /**/

        enum REC = 0 {
            doc /**/
        }
        enum RPL = 1 {
            doc /**/
        }
        enum REC_RPL = 2 {
            doc /**/
        }
        enum GROUPING = 3 {
            doc /**/
        }
    }
    enum def SynchronismKind :> Integer {
        doc /* specifies the synchronicity of an operation invocation
        * [source: Capella study]
        */

        enum UNSET = 0 {
            doc /* used when the synchronicity of the operation is not precised
            * [source: Capella study]
            */
        }
        enum SYNCHRONOUS = 1 {
            doc /* used to specify that the invocation of the operation is synchronous, e.g. does not complete before the actions performed by the operation are complete
            * [source: Capella study]
            */
        }
        enum ASYNCHRONOUS = 2 {
            doc /* used to specify that the invocation of the operation is asynchronous, i.e. it is potentially completed before the actions performed in the operation are completed
            * [source: Capella study]
            */
        }
    }
    enum def TransitionKind :> Integer {
        doc /* TransitionKind is an enumeration type.
        * [source:UML Superstructure v2.2]
        */

        enum internal = 0 {
            doc /* kind=internal implies that the transition, if triggered, occurs without exiting or entering the source state. Thus, it does not
            * cause a state change. This means that the entry or exit condition of the source state will not be invoked. An internal
            * transition can be taken even if the state machine is in one or more regions nested within this state.
            * [source:UML Superstructure v2.2]
            */
        }
        enum local = 1 {
            doc /* kind=local implies that the transition, if triggered, will not exit the composite (source) state, but it will apply to any state
            * within the composite state, and these will be exited and entered.
            * [source:UML Superstructure v2.2]
            */
        }
        enum external = 2 {
            doc /* kind=external implies that the transition, if triggered, will exit the composite (source) state.
            * [source:UML Superstructure v2.2]
            */
        }
    }
    enum def AggregationKind :> Integer {
        doc /* defines the specific kind of a relationship, as per UML definitions
        * [source: Capella study]
        */

        enum UNSET = 0 {
            doc /* used when value is not defined by the user
            * [source: Capella study]
            */
        }
        enum ASSOCIATION = 1 {
            doc /* An association specifies a semantic relationship that can occur between typed instances. It has at least two ends
            * represented by properties, each of which is connected to the type of the end. More than one end of the association may
            * have the same type.
            * [source: UML superstructure v2.2]
            * 
            * Indicates that the property has no aggregation.
            * [source: UML superstructure v2.2]
            */
        }
        enum AGGREGATION = 2 {
            doc /* An aggregation specifies a semantic relationship between a part and a whole. The part has a lifecycle of its own, and is potentially shared among several aggregators
            * [source: Capella study]
            * 
            * Indicates that the property has a shared aggregation.
            * [source: UML superstructure v2.2]
            */
        }
        enum COMPOSITION = 3 {
            doc /* A composition specifies a semantic relationship between whole and its parts. The parts lifecycles are tied to that of the whole, and they are not shared with any other aggregator.
            * [source: Capella study]
            * 
            * Indicates that the property is aggregated compositely, i.e., the composite object has responsibility for the existence
            * and storage of the composed objects.
            * [source: UML superstructure v2.2]
            */
        }
    }
    enum def MessageKind :> Integer {
        doc /* This concept is similar to UML MessageSort :
        * This is an enumerated type that identifies the type of message.
        * [source:UML Superstructure v2.2]
        */

        enum UNSET = 0 {
            doc /* The message kind is not specified
            * [source:Capella study]
            */
        }
        enum ASYNCHRONOUS_CALL = 1 {
            doc /* This enumeration literal is equivalent to UML MessageSort::asynchCall :
            * The message was generated by an asynchronous call to an operation.
            * [source:UML Superstructure v2.2]
            */
        }
        enum SYNCHRONOUS_CALL = 2 {
            doc /* This enumeration literal is equivalent to UML MessageSort::synchCall :
            * The message was generated by a synchronous call to an operation.
            * [source:UML Superstructure v2.2]
            */
        }
        enum REPLY = 3 {
            doc /* This enumeration literal is equivalent to UML MessageSort::reply :
            * The message is a reply message to an operation call.
            * [source:UML Superstructure v2.2]
            */
        }
        enum DELETE = 4 {
            doc /* This enumeration literal is equivalent to UML MessageSort::deleteMessage :
            * The message designating the termination of another lifeline.
            * [source:UML Superstructure v2.2]
            */
        }
        enum CREATE = 5 {
            doc /* The message designating the creation of an instance role
            * [source:Capella study]
            */
        }
        enum TIMER = 6 {
            doc /* n/a */
        }
    }
    enum def UnionKind :> Integer {
        doc /* defines the specific kind of a Union structure
        * [source: Capella study]
        */

        enum UNION = 0 {
            doc /* used when the structure represents a union
            * [source: Capella study]
            */
        }
        enum VARIANT = 1 {
            doc /* used when the structure represents possible variants of the same data
            * [source: Capella study]
            */
        }
    }
    enum def CommunicationLinkProtocol :> Integer {
        doc /* enumeration listing the various possibilities for the protocol of the communication link */

        enum UNSET = 0 {
            doc /* used when the CommunicationLink protocol is not yet set */
        }
        enum UNICAST = 1 {
            doc /* used when the CommunicationLink is used to describe a sending of ExchangeItem using the unicast protocol */
        }
        enum MULTICAST = 2 {
            doc /* used when the CommunicationLink is used to describe a sending of ExchangeItem using the multicast protocol */
        }
        enum BROADCAST = 3 {
            doc /* used when the CommunicationLink is used to describe a sending of ExchangeItem using the broadcast protocol */
        }
        enum SYNCHRONOUS = 4 {
            doc /* used when the CommunicationLink is used to describe a call of ExchangeItem using the synchronous protocol */
        }
        enum ASYNCHRONOUS = 5 {
            doc /* used when the CommunicationLink is used to describe a call of ExchangeItem using the asynchronous protocol */
        }
        enum READ = 6 {
            doc /* used when the CommunicationLink is used to describe a access to the ExchangeItem by reading it */
        }
        enum ACCEPT = 7 {
            doc /* used when the CommunicationLink is used to describe a access to the ExchangeItem by accepting it */
        }
    }
    enum def FunctionalChainKind :> Integer {
        doc /* Enumeration of the different functional chains
        * [source:Capella study]
        */

        enum SIMPLE = 0 {
            doc /* simple functional chain */
        }
        enum COMPOSITE = 1 {
            doc /* composite functional chain */
        }
        enum FRAGMENT = 2 {
            doc /* fragment functional chain */
        }
    }
    enum def FunctionKind :> Integer {
        doc /**/

        enum FUNCTION = 0 {
            doc /**/
        }
        enum DUPLICATE = 1 {
            doc /**/
        }
        enum GATHER = 2 {
            doc /**/
        }
        enum SELECT = 3 {
            doc /**/
        }
        enum SPLIT = 4 {
            doc /**/
        }
        enum ROUTE = 5 {
            doc /**/
        }
    }
    enum def ScenarioKind :> Integer {
        doc /* none */

        enum UNSET = 4 {
            doc /* none */
        }
        enum INTERFACE = 0 {
            doc /* none */
        }
        enum DATA_FLOW = 1 {
            doc /* none */
        }
        enum INTERACTION = 2 {
            doc /* none */
        }
        enum FUNCTIONAL = 3 {
            doc /* none */
        }
    }
    enum def TimeEventKind :> Integer {
        doc /* TimeEventKind is an enumeration type.
        * [source: Capella study]
        */

        enum AT = 0 {
            doc /* An absolute time trigger is specified with the keyword 'at' followed by an expression that
            * evaluates to a time value, such as 'Jan. 1, 2000, Noon'.
            * [source: UML superstructure v2.4]
            */
        }
        enum AFTER = 1 {
            doc /* A relative time trigger is specified with the keyword 'after' followed by an expression that evaluates to a time value, such
            * as 'after (5 seconds)'.
            * [source: UML superstructure v2.4]
            */
        }
    }
    enum def ChangeEventKind :> Integer {
        doc /* ChangeEventKind is an enumeration type.
        * [source:Capella study]
        */

        enum WHEN = 0 {
            doc /* A change event occurs when a Boolean-valued expression becomes true.
            * [source:UML Superstructure v2.4]
            */
        }
    }
    enum def ObjectNodeOrderingKind :> Integer {
        doc /* ObjectNodeOrderingKind is an enumeration indicating queuing order within a node
        * [source: UML superstructure v2.2]
        */

        enum FIFO = 0 {
            doc /* First In First Out ordering */
        }
        enum LIFO = 1 {
            doc /* Last In First Out ordering */
        }
        enum ordered = 2 {
            doc /* Indicates that object node tokens are ordered. */
        }
        enum unordered = 3 {
            doc /* Indicates that object node tokens are unordered. */
        }
    }
    enum def ObjectNodeKind :> Integer {
        doc /* specifies the type of behavior of the object node with respect to incoming data
        * [source: Capella study]
        */

        enum Unspecified = 0 {
            doc /* Used when incoming object node management policy is not precised */
        }
        enum NoBuffer = 1 {
            doc /* When the "nobuffer" stereotype is applied to object nodes, tokens arriving at the node are discarded if they are refused by
            * outgoing edges, or refused by actions for object nodes that are input pins
            * [source: SysML specification v1.1]
            */
        }
        enum Overwrite = 2 {
            doc /* When the "overwrite" stereotype is applied to object nodes, a token arriving at a full object node replaces the ones
            * already there (a full object node has as many tokens as allowed by its upper bound)
            * [source: SysML specification v1.1]
            */
        }
    }
    enum def NumericTypeKind :> Integer {
        doc /* Specifies the kind of this numeric data type
        * [source: Capella study]
        */

        enum INTEGER = 0 {
            doc /* Used when the numeric type refers to an integer value
            * [source: Capella study]
            */
        }
        enum FLOAT = 1 {
            doc /* Used when the numeric type refers to a float value
            * [source: Capella study]
            */
        }
    }
    enum def PhysicalComponentKind :> Integer {
        doc /* allows to categorize a physical component, with respect to real life physical entities
        * [source: Capella study]
        */

        enum UNSET = 0 {
            doc /* used when the physical component kind is not precised
            * [source: Capella study]
            */
        }
        enum HARDWARE = 1 {
            doc /* used when the physical component is a hardware resource
            * [source: Capella study]
            */
        }
        enum HARDWARE_COMPUTER = 2 {
            doc /* used when the physical component is a computing resource
            * [source: Capella study]
            */
        }
        enum SOFTWARE = 3 {
            doc /* used when the physical component is a software entity
            * [source: Capella study]
            */
        }
        enum SOFTWARE_DEPLOYMENT_UNIT = 4 {
            doc /* used when the physical component is a software deployment unit
            * [source: Capella study]
            */
        }
        enum SOFTWARE_EXECUTION_UNIT = 5 {
            doc /* used when the physical component is a software execution unit
            * [source: Capella study]
            */
        }
        enum SOFTWARE_APPLICATION = 6 {
            doc /* used when the physical component is a software application
            * [source: Capella study]
            */
        }
        enum FIRMWARE = 7 {
            doc /* used when the physical component is a firmware part
            * [source: Capella study]
            */
        }
        enum PERSON = 8 {
            doc /* used when the physical component is a person
            * [source: Capella study]
            */
        }
        enum FACILITIES = 9 {
            doc /* used when the physical component refers to Facilities
            * [source: Capella study]
            */
        }
        enum DATA = 10 {
            doc /* used when the physical component represents a set of data
            * [source: Capella study]
            */
        }
        enum MATERIALS = 11 {
            doc /* used when the physical component represents a bunch of materials
            * [source: Capella study]
            */
        }
        enum SERVICES = 12 {
            doc /* used when the physical components represents a set of services
            * [source: Capella study]
            */
        }
        enum PROCESSES = 13 {
            doc /* used when the physical component represents a set of processes
            * [source: Capella study]
            */
        }
    }
    enum def VisibilityKind :> Integer {
        doc /* enumeration listing the various possibilities regarding the visibility of a feature of a class
        * [source: Capella study]
        */

        enum UNSET = 0 {
            doc /* used when visibility is not precised
            * [source: Capella study]
            */
        }
        enum PUBLIC = 1 {
            doc /* used when the feature offers public access
            * [source: Capella study]
            */
        }
        enum PROTECTED = 2 {
            doc /* used when the feature offers restricted visibility, only to children of the class
            * [source: Capella study]
            */
        }
        enum PRIVATE = 3 {
            doc /* used when the feature is only visible/accessible from the class itself
            * [source: Capella study]
            */
        }
        enum PACKAGE = 4 {
            doc /* used when the feature is accessible from any element stored within the same package
            * [source: Capella study]
            */
        }
    }
    enum def ComponentExchangeKind :> Integer {
        doc /* ConnectorKind is an enumeration of the following literal values:
        * - assembly
        * Indicates that the connector is an assembly connector.
        * - delegation
        * Indicates that the connector is a delegation connector.
        * [source: UML superstructure v2.2]
        */

        enum UNSET = 0 {
            doc /* Communication kind is not set
            * [source: Capella study]
            */
        }
        enum DELEGATION = 1 {
            doc /* Indicates that the connector is a delegation connector.
            * [source: UML superstructure v2.2]
            */
        }
        enum ASSEMBLY = 2 {
            doc /* Indicates that the connector is an assembly connector.
            * [source: UML superstructure v2.2]
            */
        }
        enum FLOW = 3 {
            doc /* Describes a flow communication */
        }
    }
    enum def ComponentPortKind :> Integer {
        doc /* ComponentPortKind is an enumeration of the following literal values:
        * standard:
        * A port is an interaction point between a Block or sub-Block and its environment that supports Exchanges with other ports.
        * flow:
        * A FlowPorts is an interaction point through which input and/or output of items such as data, material, or energy may flow
        */

        enum STANDARD = 0 {
            doc /* Describes a standard port :
            * A port is an interaction point between a Block or sub-Block and its environment that supports Exchanges with other ports.
            * [source: SysML glossary for SysML v1.0]
            */
        }
        enum FLOW = 1 {
            doc /* Describes a flow port :
            * A FlowPorts is an interaction point through which input and/or output of items such as data, material, or energy may flow
            * [source: SysML specification v1.1]
            */
        }
    }
    enum def OrientationPortKind :> Integer {
        doc /* ComponentPortKind is an enumeration of the following literal values:
        * standard:
        * A port is an interaction point between a Block or sub-Block and its environment that supports Exchanges with other ports.
        * flow:
        * A FlowPorts is an interaction point through which input and/or output of items such as data, material, or energy may flow
        */

        enum UNSET = 0 {
            doc /* used when the port orientation is undefined */
        }
        enum IN = 1 {
            doc /* used when the port represents an input of the component it is used in */
        }
        enum OUT = 2 {
            doc /* used when the port represents an output of the component it is used in */
        }
        enum INOUT = 3 {
            doc /* used when the port represents both an input and on output of the component it is used in */
        }
    }
    enum def ParameterEffectKind :> Integer {
        doc /* The datatype ParameterEffectKind is an enumeration that indicates the effect of a behavior on values passed in or out of
        * its parameters
        * [source: UML superstructure v2.2]
        */

        enum create = 2 {
            doc /* referenced parameter value is being created upon behavior execution
            * [source: Capella study]
            */
        }
        enum read = 0 {
            doc /* referenced parameter value is only being read upon behavior execution
            * [source: Capella study]
            */
        }
        enum update = 1 {
            doc /* referenced parameter value is being updated upon behavior execution
            * [source: Capella study]
            */
        }
        enum delete = 3 {
            doc /* referenced parameter value is being deleted upon behavior execution
            * [source: Capella study]
            */
        }
    }
    enum def ExchangeMechanism :> Integer {
        doc /* Enumeration of the different exchange mechanisms
        * [source:Capella study]
        */

        enum UNSET = 0 {
            doc /* Exchange mechanism not defined */
        }
        enum FLOW = 1 {
            doc /* Continuous supply of a data
            * [Capella study]
            */
        }
        enum OPERATION = 2 {
            doc /* Sporadic supply of a data with a returned data
            * [Capella study]
            */
        }
        enum EVENT = 3 {
            doc /* Asynchronous information that is taken into account rapidly
            * [Capella study]
            */
        }
        enum SHARED_DATA = 4 {
            doc /* Data taken into account (reading or writing) without taking care of producers or consumers
            * [Capella study]
            */
        }
    }
    enum def ElementKind :> Integer {
        doc /* enumeration listing the various possibilities regarding the visibility of a feature of a class
        * [source: Capella study]
        */

        enum TYPE = 0 {
            doc /* used when ExchangeItemElement is described as a type for its ExchangeItem */
        }
        enum MEMBER = 1 {
            doc /* used when ExchangeItemElement is described as a member for its ExchangeItem */
        }
    }
    enum def RateKind :> Integer {
        doc /* enumeration containing the possible caracterizations for the rate of a streaming parameter
        * [source: Capella study]
        */

        enum Unspecified = 0 {
            doc /* used when the rate kind is not precised
            * [source: Capella study]
            */
        }
        enum Continuous = 1 {
            doc /* used when the rate characterizes a continuous flow
            * [source: Capella study]
            */
        }
        enum Discrete = 2 {
            doc /* Used when the rate characterizes a discrete flow
            * [source: Capella study]
            */
        }
    }
    enum def CollectionKind :> Integer {
        doc /* defines the specific kind of a Collection structure
        * [source: Capella study]
        */

        enum ARRAY = 0 {
            doc /* used when the collection is to be considered as an array of elements
            * [source: Capella study]
            */
        }
        enum SEQUENCE = 1 {
            doc /* used when the collection is to be considered as a sequence (list) of elements
            * [source: Capella study]
            */
        }
    }
    enum def BinaryOperator :> Integer {
        doc /* Specifies the kind of this binary operator */

        enum UNSET = 0 {
            doc /* Used when the binary operator is not initialized */
        }
        enum ADD = 1 {
            doc /* Used when the binary operator refers to an addition */
        }
        enum MUL = 2 {
            doc /* Used when the binary operator refers to a multiplication */
        }
        enum SUB = 3 {
            doc /* Used when the binary operator refers to a substraction */
        }
        enum DIV = 4 {
            doc /* Used when the binary operator refers to a division */
        }
        enum POW = 5 {
            doc /* Used when the binary operator refers to a power operation */
        }
        enum MIN = 6 {
            doc /* Used when the binary operator refers to a min operation */
        }
        enum MAX = 7 {
            doc /* Used when the binary operator refers to a max operation */
        }
        enum EQU = 8 {
            doc /* Used when the binary operator refers to an equal operation */
        }
        enum IOR = 9 {
            doc /* Used when the binary operator refers to a logical inclusive OR operation */
        }
        enum XOR = 10 {
            doc /* Used when the binary operator refers to a logical exclusive OR operation */
        }
        enum AND = 11 {
            doc /* Used when the binary operator refers to a logical AND operation */
        }
    }
    enum def ConfigurationItemKind :> Integer {
        doc /**/

        enum Unset = 0 {
            doc /**/
        }
        enum COTSCI = 1 {
            doc /* Commercial Off The Shelves Configuration Item */
        }
        enum CSCI = 2 {
            doc /* Computer Software Configuration Item */
        }
        enum HWCI = 3 {
            doc /* Hardware Configuration Item */
        }
        enum InterfaceCI = 4 {
            doc /* Interface Configuration Item */
        }
        enum NDICI = 5 {
            doc /* Non Developmental Configuration Item */
        }
        enum PrimeItemCI = 6 {
            doc /* Prime Item Configuration Item */
        }
        enum SystemCI = 7 {
            doc /* System Configuration Item */
        }
    }
    enum def InteractionOperatorKind :> Integer {
        doc /* n/a */

        enum UNSET = 11 {
            doc /* n/a */
        }
        enum ALT = 0 {
            doc /* n/a */
        }
        enum OPT = 1 {
            doc /* n/a */
        }
        enum PAR = 2 {
            doc /* n/a */
        }
        enum LOOP = 3 {
            doc /* n/a */
        }
        enum CRITICAL = 4 {
            doc /* n/a */
        }
        enum NEG = 5 {
            doc /* n/a */
        }
        enum ASSERT = 6 {
            doc /* n/a */
        }
        enum STRICT = 7 {
            doc /* n/a */
        }
        enum SEQ = 8 {
            doc /* n/a */
        }
        enum IGNORE = 9 {
            doc /* n/a */
        }
        enum CONSIDER = 10 {
            doc /* n/a */
        }
    }
    enum def PhysicalComponentNature :> Integer {
        doc /* characterizes a physical component, with respect to its property of being a host of behavioral components, or a behavioral component
        * [source: Capella study]
        */

        enum UNSET = 0 {
            doc /* used when the physical component nature is not precised
            * [source: Capella study]
            */
        }
        enum BEHAVIOR = 1 {
            doc /* used when the physical component nature is behavioral (typically, a piece of software)
            * [source: Capella study]
            */
        }
        enum NODE = 2 {
            doc /* used when the physical component is a host for behavioral components (typically, a computing resource)
            * [source: Capella study]
            */
        }
    }

    abstract constraint def AbstractConstraint :> Constraints::ConstraintCheck {
        doc /* specifies a constraint applying to a given set of model elements
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
    }

    constraint def Constraint :> AbstractConstraint {
        doc /* A constraint is a condition or restriction expressed in natural language text or in a machine readable language for the purpose of declaring some of the semantics of an element
        * [source:UML Superstructure v2.2]
        */
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
    }


    abstract attribute def AbstractPropertyValue  {
        doc /* It is a way to define extension properties for any capella elements
        * A property value is a named element that has a value. This value has no specific format, it is described as a string.
        * [Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }

    attribute def StringPropertyValue :> AbstractPropertyValue, String {
        doc /* It is a way to define extension properties for any capella elements
        * A property value is a named element that has a value. This value has no specific format, it is described as a string.
        * [Capella study]
        */
        
        
    }

    attribute def IntegerPropertyValue :> AbstractPropertyValue, Integer {
        doc /* It is a way to define extension properties for any capella elements
        * A property value is a named element that has a value. This value has no specific format, it is described as a string.
        * [Capella study]
        */
        
        
    }

    attribute def BooleanPropertyValue :> AbstractPropertyValue, Boolean {
        doc /* It is a way to define extension properties for any capella elements
        * A property value is a named element that has a value. This value has no specific format, it is described as a string.
        * [Capella study]
        */
        
        
    }

    attribute def FloatPropertyValue :> AbstractPropertyValue, Real {
        doc /* It is a way to define extension properties for any capella elements
        * A property value is a named element that has a value. This value has no specific format, it is described as a string.
        * [Capella study]
        */
        
        
    }

    attribute def EnumerationPropertyValue :> AbstractPropertyValue, EnumerationPropertyLiteral {
        doc /* It is a way to define extension properties for any capella elements
        * A property value is a named element that has a value. This value has no specific format, it is described as a string.
        * [Capella study]
        */
        
        ref attribute type[0..1] ordered: EnumerationPropertyType;
        ref attribute value[0..1] ordered: EnumerationPropertyLiteral;
    }

    attribute def PropertyValueGroup  {
        doc /* Package that contain property values
        * [Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }


    attribute def EnumerationPropertyLiteral {
        doc /* A literal value, used in an EnumerationPropertyType
        * [Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    } 

    attribute def EnumerationPropertyType :> EnumerationPropertyLiteral{
        doc /* It is a way to define extension properties for any capella elements
        * A property value is a named element that has a value. This value has no specific format, it is described as a string.
        * [Capella study]
        */
    }

    abstract item def StateEvent :> ElementExtension {
        doc /* An event used in statemachine definition which occurs at a given condition.
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedStateEventRealizations[0..*] ordered: StateEventRealization;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint expression[0..1] ordered: Constraint;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }

    item def ChangeEvent :> StateEvent {
        doc /* A change event occurs when a Boolean-valued expression becomes true. For example, as a result of a change in the value
        * held in a slot corresponding to an attribute, or a change in the value referenced by a link corresponding to an association.
        * A change event is raised implicitly and is not the result of an explicit action
        * [source: UML superstructure v2.4]
        */
        attribute kind : ChangeEventKind {
            doc /* specifies the type of the state ChangeEvent (see ChangeEventKind)
            * [source: Capella study]
            */
        }
        
    }

    item def TimeEvent :> StateEvent {
        doc /* A time event specifies a point in time by an expression. The expression might be absolute or might be relative to some
        * other point in time.
        * [source: UML superstructure v2.4]
        */
        attribute kind : TimeEventKind {
            doc /* specifies the type of the state TimeEvent (see TimeEventKind)
            * [source: Capella study]
            */
        }
        
    }

    abstract item def AbstractExchangeItem :> ElementExtension {
        doc /* Set of exchanged element (e.g. data, material...) expected or provided, exchanged between ports */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }

    item def ExchangeItem :> AbstractExchangeItem {
        doc /* Defined by functional characteristics that exist at a common boundary with co-functioning items and allow systems equipment to be compatible.
        * An exchange item describes a required or produced data.
        * An exchange item has an exchange mechanism
        * [source:ARCADIA encyclopedia v0.8.0]
        */
        attribute exchangeMechanism : ExchangeMechanism {
            doc /* Communication principle associated to this exchange item
            * [source:ARCADIA encyclopedia v0.8.0]
            */
        }
        attribute isAbstract : Boolean {
            doc /* specifies whether this classifier is abstract or concrete
            * [source: Capella study]
            */
        }
        attribute isFinal : Boolean {
            doc /* none */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedInformationRealizations[0..*] ordered: InformationRealization;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref item ownedElements[0..*] ordered: ExchangeItemElement;
        ref item ownedExchangeItemInstances[0..*] ordered: ExchangeItemInstance;
    }

    item def ExchangeItemElement :> ElementExtension {
        doc /* a part of a structured exchange item
        * [source: Capella study]
        */
        attribute direction : ParameterDirection {
            doc /* specifies whether the parameter is an input, an output, or both.
            * [source: Capella study]
            */
        }
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute isComposite : Boolean {
            doc /* n/a */
        }
        attribute isMaxInclusive : Boolean {
            doc /* specifies whether the max value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isMinInclusive : Boolean {
            doc /* specifies whether the min value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isOrdered : Boolean {
            doc /* For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are
            * sequentially ordered
            * [source: UML superstructure v2.2]
            */
        }
        attribute isUnique : Boolean {
            doc /* specifies whether or not this element is unique
            * [source: Capella study]
            */
        }
        attribute kind : ElementKind {
            doc /* refer to ElementKind description */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref occurrence abstractType[0..1];
    }

    abstract item def GeneralClass :> ElementExtension {
        doc /* an abstract concept allowing the nesting of classes in classes
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute isAbstract : Boolean {
            doc /* specifies whether this classifier is abstract or concrete
            * [source: Capella study]
            */
        }
        attribute isFinal : Boolean {
            doc /* none */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref item nestedGeneralClasses[0..*] ordered: GeneralClass;
    }

    item def InterfaceItem :> GeneralClass {
        doc /* An interface is a kind of classifier that represents a declaration of a set of coherent public features and obligations. An
        * interface specifies a contract; any instance of a classifier that realizes the interface must fulfill that contract.
        * [source: UML superstructure v2.2]
        * 
        * Interfaces are defined by functional and physical characteristics that exist at a common boundary with co-functioning items and allow systems, equipment, software, and system data to be compatible.
        * [source: not precised]
        * 
        * That design feature of one piece of equipment that affects a design feature of another piece of equipment.
        * An interface can extend beyond the physical boundary between two items. (For example, the weight and center of gravity of one item can affect the interfacing item; however, the center of gravity is rarely located at the physical boundary.
        * An electrical interface generally extends to the first isolating element rather than terminating at a series of connector pins.)
        */
        attribute isStructural : Boolean {
            doc /* none */
        }
        attribute mechanism : String {
            doc /* _todo_reviewed : cannot find the meaning of this attribute ? How to fill it ? */
        }
        abstract ref allocation ownedExchangeItemAllocations[0..*] ordered: ExchangeItemAllocation;
        abstract ref allocation ownedInterfaceAllocations[0..*] ordered: InterfaceAllocation;
    }

    item def Class :> GeneralClass {
        doc /* A class describes a set of objects that share the same specifications of features, constraints, and semantics
        * [source: UML superstructure v2.2]
        */
        attribute isPrimitive : Boolean {
            doc /* indicates whether or not the class inherits from a parent class.
            * [source: Capella study]
            */
        }
        abstract ref allocation ownedInformationRealizations[0..*] ordered: InformationRealization;
        ref state ownedStateMachines[0..*] ordered: StateMachine;
    }

    item def DomainElement :> Class, GeneralClass {
        doc /* A reinterpretable representation of information in a formalized manner suitable for communication, interpretation, or processing.
        * [source: Open Archival Information System (OAIS), IEC]
        */
        
        
    }

    item def Union :> Class, GeneralClass {
        doc /* (not used) */
        attribute kind : UnionKind {
            doc /* specifies the type of the union
            * [source: Capella study]
            */
        }
        
    }

    abstract occurrence def ElementExtension  {
        doc /**/
        
        ref occurrence ownedExtensions[0..*] ordered: ElementExtension;
    }

    item def ExchangeItemInstance :> ElementExtension {
        doc /**/
        attribute aggregationKind : AggregationKind {
            doc /* Specifies the kind of aggregation that applies to the Property
            * [source: UML superstructure v2.2]
            */
        }
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute isAbstract : Boolean {
            doc /* specifies whether the Feature is abstract or concrete
            * [source: Capella study]
            */
        }
        attribute isDerived : Boolean {
            doc /* Specifies whether the Property is derived, i.e., whether its value or values can be computed from other information
            * [source: UML superstructure v2.2]
            */
        }
        attribute isFinal : Boolean {
            doc /* none */
        }
        attribute isMaxInclusive : Boolean {
            doc /* specifies whether the max value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isMinInclusive : Boolean {
            doc /* specifies whether the min value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isOrdered : Boolean {
            doc /* For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are
            * sequentially ordered
            * [source: UML superstructure v2.2]
            */
        }
        attribute isPartOfKey : Boolean {
            doc /* specifies whether this Property is involved as a key to a table of values
            * [source: Capella study]
            */
        }
        attribute isReadOnly : Boolean {
            doc /* If true, the attribute may only be read, and not written
            * [source: UML superstructure v2.2]
            */
        }
        attribute isStatic : Boolean {
            doc /* Specifies whether the Feature is static
            * [source: Capella study]
            */
        }
        attribute isUnique : Boolean {
            doc /* specifies whether or not this element is unique
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref occurrence abstractType[0..1];
    }


    abstract state def IState :> ElementExtension {
        doc /* A vertex is an abstraction of a node in a state machine graph. In general, it can be the source or destination of any number
        * of transitions.
        * [source:UML Superstructure v2.2]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref state exploitedStates[0..*] ordered: IState;
        ref state referencedStates[0..*] ordered: IState;
    }

    state def State :> AbstractState, IState {
        doc /* A state models a situation during which some (usually implicit) invariant condition holds.
        * [source: UML superstructure v2.2]
        * 
        * A condition of a system or element, as defined by some of its properties, which can enable system behaviors and/or structure to occur. Note: The enabled behavior may include no actions, such as associated with a wait state. Also, the condition that defines the state may be dependent on one or more previous states
        * [source: UML for SE RFP]
        */
        
        ref constraint stateInvariant[0..1] ordered: AbstractConstraint;
        ref state ownedConnectionPoints[0..*] ordered: Pseudostate;
    }

    state def Mode :> AbstractState, IState, State {
        doc /* A condition which characterizes an expected behaviour through the set of functions or elements available at a point in time. */
        
        
    }

    state def FinalState :> AbstractState, IState, State {
        doc /* A special kind of state signifying that the enclosing region is completed. If the enclosing region is directly contained in a
        * state machine and all other regions in the state machine also are completed, then it means that the entire state machine is
        * completed.
        * [source: UML superstructure v2.2]
        */
        
        
    }

    abstract state def AbstractState :> IState {
        doc /* an abstract base class to define various kinds of states (typically real states and pseudo states)
        * [source: Capella study]
        */
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedAbstractStateRealizations[0..*] ordered: AbstractStateRealization;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref state involvedStates[0..*] ordered: AbstractState;
        ref state ownedStates[0..*] ordered: AbstractState;
    }

    abstract state def Pseudostate :> AbstractState, IState {
        doc /* A pseudostate is an abstraction that encompasses different types of transient vertices in the state machine graph.
        * [source: UML superstructure v2.2]
        */
        
        
    }

    state def JoinPseudoState :> AbstractState, IState, Pseudostate {
        doc /* join vertices serve to merge several transitions emanating from source vertices in different orthogonal regions. The
        * transitions entering a join vertex cannot have guards or triggers
        * [source: UML superstructure v2.2]
        */
        
        
    }

    state def ForkPseudoState :> AbstractState, IState, Pseudostate {
        doc /* fork vertices serve to split an incoming transition into two or more transitions terminating on orthogonal target vertices
        * (i.e., vertices in different regions of a composite state). The segments outgoing from a fork vertex must not have guards
        * or triggers.
        * [source: UML superstructure v2.2]
        */
        
        
    }

    state def ChoicePseudoState :> AbstractState, IState, Pseudostate {
        doc /* choice vertices which, when reached, result in the dynamic evaluation of the guards of the triggers of its outgoing
        * transitions. This realizes a dynamic conditional branch. It allows splitting of transitions into multiple outgoing paths
        * such that the decision on which path to take may be a function of the results of prior actions performed in the same runto-
        * completion step
        * [source: UML superstructure v2.2]
        */
        
        
    }

    state def TerminatePseudoState :> AbstractState, IState, Pseudostate {
        doc /* Entering a terminate pseudostate implies that the execution of this state machine by means of its context object is
        * terminated. The state machine does not exit any states nor does it perform any exit actions other than those associated
        * with the transition leading to the terminate pseudostate
        * [source: UML superstructure v2.2]
        */
        
        
    }

    state def ShallowHistoryPseudoState :> AbstractState, IState, Pseudostate {
        doc /* Shallow history represents the most recent active substate of its containing state (but not the substates of that substate).
        * A composite state can have at most one shallow history vertex. A transition coming into the shallow history vertex is
        * equivalent to a transition coming into the most recent active substate of a state. At most one transition may originate
        * from the history connector to the default shallow history state. This transition is taken in case the composite state had
        * never been active before. The entry action of the state represented by the shallow history is performed.
        * [source: UML superstructure v2.4]
        */
        
        
    }

    state def DeepHistoryPseudoState :> AbstractState, IState, Pseudostate {
        doc /* Deep history represents the most recent active configuration of the composite state that directly contains this
        * pseudostate (e.g., the state configuration that was active when the composite state was last exited). A composite state
        * can have at most one deep history vertex. At most one transition may originate from the history connector to the default
        * deep history state. This transition is taken in case the composite state had never been active before. Entry actions of
        * states entered on the implicit direct path from the deep history to the innermost state(s) represented by a deep history
        * are performed. The entry action is preformed only once for each state in the active state configuration being restored.
        * [source: UML superstructure v2.4]
        */
        
        
    }

    state def EntryPointPseudoState :> AbstractState, IState, Pseudostate {
        doc /* An entry point pseudostate is an entry point of a state machine or composite state. In each region of the state machine or
        * composite state it has at most a single transition to a vertex within the same region.
        * [source: UML superstructure v2.4]
        */
        
        
    }

    state def ExitPointPseudoState :> AbstractState, IState, Pseudostate {
        doc /* An exit point pseudostate is an exit point of a state machine or composite state. Entering an exit point within any region
        * of the composite state or state machine referenced by a submachine state implies the exit of this composite state or
        * submachine state and the triggering of the transition that has this exit point as source in the state machine enclosing the
        * submachine or composite state.
        * [source: UML superstructure v2.4]
        */
        
        
    }

    state def StateMachine :> ElementExtension {
        doc /* State machines can be used to express the behavior of part of a system. Behavior is modeled as a traversal of a graph of
        * state nodes interconnected by one or more joined transition arcs that are triggered by the dispatching of series of (event)
        * occurrences. During this traversal, the state machine executes a series of activities associated with various elements of the
        * state machine.
        * [source: UML superstructure v2.2]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute isControlOperator : Boolean {
            doc /* Tells whether the type of this behavior node is to be treated as control
            * [source: UML superstructure v2.2]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref state ownedConnectionPoints[0..*] ordered: Pseudostate;
    }


    port def PhysicalPort :> AbstractPort {
        doc /* A port on a physical component
        * [source: Capella study]
        */
        attribute aggregationKind : AggregationKind {
            doc /* Specifies the kind of aggregation that applies to the Property
            * [source: UML superstructure v2.2]
            */
        }
        attribute isAbstract : Boolean {
            doc /* specifies whether the Feature is abstract or concrete
            * [source: Capella study]
            */
        }
        attribute isDerived : Boolean {
            doc /* Specifies whether the Property is derived, i.e., whether its value or values can be computed from other information
            * [source: UML superstructure v2.2]
            */
        }
        attribute isFinal : Boolean {
            doc /* none */
        }
        attribute isMaxInclusive : Boolean {
            doc /* specifies whether the max value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isMinInclusive : Boolean {
            doc /* specifies whether the min value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isOrdered : Boolean {
            doc /* For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are
            * sequentially ordered
            * [source: UML superstructure v2.2]
            */
        }
        attribute isPartOfKey : Boolean {
            doc /* specifies whether this Property is involved as a key to a table of values
            * [source: Capella study]
            */
        }
        attribute isReadOnly : Boolean {
            doc /* If true, the attribute may only be read, and not written
            * [source: UML superstructure v2.2]
            */
        }
        attribute isStatic : Boolean {
            doc /* Specifies whether the Feature is static
            * [source: Capella study]
            */
        }
        attribute isUnique : Boolean {
            doc /* specifies whether or not this element is unique
            * [source: Capella study]
            */
        }
        abstract ref allocation ownedComponentPortAllocations[0..*] ordered: ComponentPortAllocation;
        abstract ref allocation ownedPhysicalPortRealizations[0..*] ordered: PhysicalPortRealization;
        ref occurrence abstractType[0..1];
    }

    port def FunctionInputPort :> AbstractPort, FunctionPort {
        doc /* an input interface of its owning function, to receive functional exchanges from other functions
        * [source: Capella study]
        */
        attribute isControl : Boolean {
            doc /* Tells whether the pins provide data to the actions, or just controls when it executes it.
            * [source: UML superstructure v2.2]
            */
        }
        attribute isControlType : Boolean {
            doc /* Tells whether the type of the object node is to be treated as control
            * [source: UML superstructure v2.2]
            */
        }
        attribute kindOfNode : ObjectNodeKind {
            doc /* characterizes the node */
        }
        attribute ordering : ObjectNodeOrderingKind {
            doc /* Tells whether and how the tokens in the object node are ordered for selection to traverse edges outgoing from the
            * object node
            * [source: UML superstructure v2.2]
            */
        }
        ref item incomingExchangeItems[0..*] ordered: ExchangeItem;
        ref state inState[0..*] ordered: IState;
    }

    port def FunctionOutputPort :> AbstractPort, FunctionPort {
        doc /* an output interface of its owning function, to be the origin of functional exchanges towards other functions
        * [source: Capella study]
        */
        attribute isControl : Boolean {
            doc /* Tells whether the pins provide data to the actions, or just controls when it executes it.
            * [source: UML superstructure v2.2]
            */
        }
        attribute isControlType : Boolean {
            doc /* Tells whether the type of the object node is to be treated as control
            * [source: UML superstructure v2.2]
            */
        }
        attribute kindOfNode : ObjectNodeKind {
            doc /* characterizes the node */
        }
        attribute ordering : ObjectNodeOrderingKind {
            doc /* Tells whether and how the tokens in the object node are ordered for selection to traverse edges outgoing from the
            * object node
            * [source: UML superstructure v2.2]
            */
        }
        ref item outgoingExchangeItems[0..*] ordered: ExchangeItem;
        ref state inState[0..*] ordered: IState;
    }

    abstract port def FunctionPort :> AbstractPort {
        doc /* A port is an interaction point between a block or part and its environment that is connected with other ports via connectors
        * [source: SysML specification v1.1]
        * 
        * Base abstract class for actual port implementations
        * [source: Capella study]
        */
        
        ref occurrence abstractType[0..1];
        ref port representedComponentPort[0..1] ordered: ComponentPort;
    }

    port def ComponentPort :> AbstractPort {
        doc /* A component port is the unification of the standard port and the flow port. */
        attribute aggregationKind : AggregationKind {
            doc /* Specifies the kind of aggregation that applies to the Property
            * [source: UML superstructure v2.2]
            */
        }
        attribute isAbstract : Boolean {
            doc /* specifies whether the Feature is abstract or concrete
            * [source: Capella study]
            */
        }
        attribute isDerived : Boolean {
            doc /* Specifies whether the Property is derived, i.e., whether its value or values can be computed from other information
            * [source: UML superstructure v2.2]
            */
        }
        attribute isFinal : Boolean {
            doc /* none */
        }
        attribute isMaxInclusive : Boolean {
            doc /* specifies whether the max value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isMinInclusive : Boolean {
            doc /* specifies whether the min value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isOrdered : Boolean {
            doc /* For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are
            * sequentially ordered
            * [source: UML superstructure v2.2]
            */
        }
        attribute isPartOfKey : Boolean {
            doc /* specifies whether this Property is involved as a key to a table of values
            * [source: Capella study]
            */
        }
        attribute isReadOnly : Boolean {
            doc /* If true, the attribute may only be read, and not written
            * [source: UML superstructure v2.2]
            */
        }
        attribute isStatic : Boolean {
            doc /* Specifies whether the Feature is static
            * [source: Capella study]
            */
        }
        attribute isUnique : Boolean {
            doc /* specifies whether or not this element is unique
            * [source: Capella study]
            */
        }
        attribute kind : ComponentPortKind {
            doc /* A component port is the unification of the standard port and the flow port.
            * see the ComponentPortKind enumeration.
            */
        }
        attribute orientation : OrientationPortKind {
            doc /* the orientation of a component port. */
        }
        ref occurrence abstractType[0..1];
    }

    abstract port def AbstractPort :> ElementExtension {
        doc /* A port is an interaction point between a block or part and its environment that
        * is connected with other ports via connectors
        * [source: SysML specification v1.1]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedPortAllocations[0..*] ordered: PortAllocation;
        abstract ref allocation ownedPortRealizations[0..*] ordered: PortRealization;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref item providedInterfaces[0..*] ordered: InterfaceItem;
        ref item requiredInterfaces[0..*] ordered: InterfaceItem;
        ref state ownedProtocols[0..*] ordered: StateMachine;
    }


    abstract action def AbstractFunction :> ElementExtension {
        doc /* Specifies an operation or an action that is performed by an entity.
        * 
        * A transformation of inputs to outputs that may include the creation, monitoring, modification or destruction of elements, or a null transformation.
        * [source: SysML glossary for SysML v1.0]
        * 
        * This is an abstract base class for the derivation of specific function types at each design level
        * [source: Capella study]
        */
        attribute aggregationKind : AggregationKind {
            doc /* Specifies the kind of aggregation that applies to the Property
            * [source: UML superstructure v2.2]
            */
        }
        attribute condition : String {
            doc /**/
        }
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute isAbstract : Boolean {
            doc /* specifies whether the Feature is abstract or concrete
            * [source: Capella study]
            */
        }
        attribute isDerived : Boolean {
            doc /* Specifies whether the Property is derived, i.e., whether its value or values can be computed from other information
            * [source: UML superstructure v2.2]
            */
        }
        attribute isFinal : Boolean {
            doc /* none */
        }
        attribute isMaxInclusive : Boolean {
            doc /* specifies whether the max value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isMinInclusive : Boolean {
            doc /* specifies whether the min value of the range is included or not
            * [source: Capella light-light study]
            */
        }
        attribute isOrdered : Boolean {
            doc /* For a multivalued multiplicity, this attribute specifies whether the values in an instantiation of this element are
            * sequentially ordered
            * [source: UML superstructure v2.2]
            */
        }
        attribute isPartOfKey : Boolean {
            doc /* specifies whether this Property is involved as a key to a table of values
            * [source: Capella study]
            */
        }
        attribute isReadOnly : Boolean {
            doc /* If true, the attribute may only be read, and not written
            * [source: UML superstructure v2.2]
            */
        }
        attribute isStatic : Boolean {
            doc /* Specifies whether the Feature is static
            * [source: Capella study]
            */
        }
        attribute isUnique : Boolean {
            doc /* specifies whether or not this element is unique
            * [source: Capella study]
            */
        }
        attribute kind : FunctionKind {
            doc /**/
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedFunctionRealizations[0..*] ordered: FunctionRealization;
        abstract ref interface ownedFunctionalExchanges[0..*] ordered: FunctionalExchange :> Interfaces::interfaces;
        ref action ownedFunctionalChains[0..*] ordered: FunctionalChain;
        ref action ownedFunctions[0..*] ordered: AbstractFunction;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint localPostcondition[0..1] ordered: AbstractConstraint;
        ref constraint localPrecondition[0..1] ordered: AbstractConstraint;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref occurrence abstractType[0..1];
        ref occurrence context[0..1];
        ref port arguments[0..*];
        ref port inputs[0..*];
        ref port outputs[0..*];
        ref port results[0..*];
        ref state availableInStates[0..*] ordered: State;
    }

    action def PhysicalFunction :> AbstractFunction {
        doc /* Function applied at physical level
        * [source: Capella study]
        */
        
        
    }

    action def LogicalFunction :> AbstractFunction {
        doc /* Function at Logical level */
        
        
    }

    action def SystemFunction :> AbstractFunction {
        doc /* Function at System level
        * [source: Capella study]
        */
        
        
    }

    action def OperationalActivity :> AbstractFunction {
        doc /* Any process step or function performed, both mental and physical, toward achieving some objective. A task is a "formal" activity (see also task).
        * [source: Sys EM, EIA/IS-731.1]
        */
        
        
    }

    action def FunctionalChain :> ElementExtension {
        doc /* A functional chain is a set of Functions, activated through an activation graph (or path) and carrying non functional properties such as latency, criticity level ...
        * It provides a high-level description of a contribution of the system, users or external entities to an operational capability.
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute kind : FunctionalChainKind {
            doc /* Defines the kind of this FunctionalChain */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedFunctionalChainRealizations[0..*] ordered: FunctionalChainRealization;
        abstract ref connection ownedSequenceLinks[0..*] ordered: SequenceLink :> Connections::connections;
        ref action ownedSequenceNodes[0..*] ordered: ControlNode;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref constraint postCondition[0..1] ordered: Constraint;
        ref constraint preCondition[0..1] ordered: Constraint;
        ref state availableInStates[0..*] ordered: State;
    }

    action def OperationalProcess :> FunctionalChain {
        doc /* An Operational Process is a logical organization of activities to fulfill an operational capability. */
        
        
    }

    abstract action def ControlNode :> ElementExtension {
        doc /* used to control the flow of executions of represented functions in a functional chain
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }

    action def AND :> ControlNode, Actions::JoinAction {
        doc /**/
        
        
    }

    action def OR :> ControlNode, Actions::MergeAction {
        doc /**/
        
        
    }

    action def IT :> ControlNode {
        doc /**/
        
        
    }


    abstract part def Component :> ElementExtension {
        doc /* An entity, with discrete structure within the system, that interacts with other Components of the system, thereby contributing at its lowest level to the system properties and characteristics.
        * [source: Sys EM , ISO/IEC CD 15288]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute isAbstract : Boolean {
            doc /* specifies whether this classifier is abstract or concrete
            * [source: Capella study]
            */
        }
        attribute isActor : Boolean {
            doc /* Indicates if the Component is an Actor */
        }
        attribute isHuman : Boolean {
            doc /* Indicates whether the Component is a Human */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedComponentRealizations[0..*] ordered: ComponentRealization;
        abstract ref allocation ownedFunctionalAllocation[0..*] ordered: ComponentFunctionalAllocation;
        abstract ref allocation ownedInterfaceAllocations[0..*] ordered: InterfaceAllocation;
        abstract ref interface ownedCommunicationLinks[0..*] ordered: CommunicationLink :> Interfaces::interfaces;
        abstract ref interface ownedComponentExchanges[0..*] ordered: ComponentExchange :> Interfaces::interfaces;
        abstract ref interface ownedPhysicalLinks[0..*] ordered: PhysicalLink :> Interfaces::interfaces;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref state ownedStateMachines[0..*] ordered: StateMachine;
    }

    part def ConfigurationItem :> Component {
        doc /* Aggregation of hardware, software, processed materials, services, or any of their discrete portions designated for configuration management and treated as a single entity in the configuration management process. */
        attribute itemIdentifier : String {
            doc /**/
        }
        attribute kind : ConfigurationItemKind {
            doc /**/
        }
        abstract ref allocation ownedPhysicalArtifactRealizations[0..*] ordered: PhysicalArtifactRealization;
        ref part ownedConfigurationItems[0..*] ordered: ConfigurationItem;
    }

    part def PhysicalComponent :> Component {
        doc /* Physical Components are the artifacts enabling to describe architectural solutions to satisfy the logical architecture identified at the upper abstraction level. Physical components are identified according to physical rationals (i.e. components reuse, available COTS, non functional constraints...)
        * Examples: Software component, executable, hardware component (mechanical devices, electronical boards, equipments)
        */
        attribute kind : PhysicalComponentKind {
            doc /* specifies the type of physical component (refer to PhysicalComponentKind for detailed description)
            * [source: Capella study]
            */
        }
        attribute nature : PhysicalComponentNature {
            doc /* specifies the nature of this physical component, typically whether it is an actual execution node, or a behavioral component like a SW part
            * [source: Capella study]
            */
        }
        abstract ref allocation ownedDeploymentLinks[0..*] ordered: AbstractDeploymentLink;
        ref part ownedPhysicalComponents[0..*] ordered: PhysicalComponent;
    }

    part def PhysicalNode :> Component, PhysicalComponent {
        doc /* a physical resource hosting behavioral components, and required for their execution or expected behavior
        * [source: Arcadia encyclopedia]
        */
        
        
    }

    part def LogicalComponent :> Component {
        doc /* Logical Components are the artifacts enabling decomposition of the system as a "white box", independently from any technological solutions. Logical components are identified according to logical abstractions (i.e. functional grouping, logical interfaces) */
        
        ref part ownedLogicalComponents[0..*] ordered: LogicalComponent;
    }

    part def SystemComponent :> Component {
        doc /* An entity, with discrete structure within the system, that interacts with other Components of the system, thereby contributing at its lowest level to the system properties and characteristics.
        * [source: Sys EM , ISO/IEC CD 15288]
        */
        attribute isDataComponent : Boolean {
            doc /* specifies whether or not this is a data component
            * [source: Capella light-light study]
            */
        }
        ref part ownedSystemComponents[0..*] ordered: SystemComponent;
    }

    part def Entity :> AbstractConceptItem, Component {
        doc /* An Operational Entity is a thing or entity that occurs in the real world of which information is required about fact that need to be known.
        * An Operational Entity can be for instance: A operational node, an actor, an equipment...
        */
        
        abstract ref allocation ownedRoleAllocations[0..*] ordered: RoleAllocation;
        abstract ref interface ownedCommunicationMeans[0..*] ordered: CommunicationMean :> Interfaces::interfaces;
        ref part actualLocation[0..1] ordered: Location;
        ref part ownedEntities[0..*] ordered: Entity;
    }

    abstract part def AbstractConceptItem :> Component {
        doc /* Constitutive element of a Concept.
        * [source: Capella study]
        */
        
        
    }

    part def Location :> AbstractConceptItem, Component {
        doc /* a physical place where specific entities can be located.
        * [source: Capella study]
        */
        attribute locationDescription : String {
            doc /* a textual description of this location
            * [source: Capella study]
            */
        }
        ref part locatedEntities[0..*] ordered: Entity;
    }

    part def CapabilityConfiguration :> AbstractConceptItem, Component {
        doc /* one of the possible configurations of an operational capability
        * [source: Capella study]
        */
        
        ref use case configuredCapability[0..1] ordered: OperationalCapability;
    }


    use case def Mission :> ElementExtension {
        doc /* Operational goal. It must be satisfied by usage of System capabilities.
        * 
        * A mission can be compared to a UML UseCase : A use case is the specification of a set of actions performed by a system, which yields an observable result that is,
        * typically, of value for one or more actors or other stakeholders of the system.
        * [source: UML superstructure v2.2]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }

    use case def CapabilityRealization :> AbstractCapability {
        doc /* a realization of a capability of the above abstraction level
        * [source: Capella study]
        */
        
        
    }

    abstract use case def AbstractCapability :> ElementExtension {
        doc /* Base class for Capabilities (Capability and Capability Realization)
        * [source:UML Superstructure v2.2]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedAbstractCapabilityRealizations[0..*] ordered: AbstractCapabilityRealization;
        ref action ownedFunctionalChains[0..*] ordered: FunctionalChain;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref constraint postCondition[0..1] ordered: Constraint;
        ref constraint preCondition[0..1] ordered: Constraint;
        ref state availableInStates[0..*] ordered: State;
    }

    use case def Capability :> AbstractCapability {
        doc /* Ability of an organisation, system or process to provide a service that supports the achievement of high-level operational goals */
        
        
    }

    use case def OperationalCapability :> AbstractCapability {
        doc /* Ability of an organisation, system or process to to provide a service that supports the achievement of high-level operational goals
        * 
        * At the organisation level: Ability of an organisation, system or process to realise a product that will fulfill the requirements for that product.
        * [source: ISO 9000]
        * 
        * At the program level: An operational outcome or effect that users of equipment need to achieve.
        * [source: Smart Procurement - Edition 3 - June 2000]
        * 
        * At the system level: Set of functions that characterise an Operational service provided by a system, it is required against one or several requirements: functional and not functional (performance, constraint, ...).
        * [source: MIST]
        */
        
        ref part configurations[0..*] ordered: CapabilityConfiguration;
    }


    connection def SequenceLink :> ElementExtension{
        doc /* express precedence between executions of represented functions
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref connection links[0..*] ordered: FunctionalChainInvolvementLink :> Connections::connections;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint condition[0..1] ordered: Constraint;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        import SequenceFunctions::notEmpty;
        
        end action source;
        end action target;
        
        succession succ[0..1] first source.start then target.start;
        
        calc calccondition { return : ScalarValues::Boolean default true; }
        
        assert constraint { notEmpty(succ) == calccondition() }
    }
    connection def FunctionalChainInvolvementLink :> ElementExtension{
        doc /* specifies the involvement of a model element in form of link in a functional chain
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint exchangeContext[0..1] ordered: Constraint;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref item exchangedItems[0..*] ordered: ExchangeItem;
        abstract ref interface involved : FunctionalExchange :> Interfaces::interfaces;

        end source;
        end target;
        
    }
    connection def OAInteraction :> FunctionalExchange{
        doc /**/
        
        
        end source : OperationalActivity;
        end target : OperationalActivity;

    }

    interface def FunctionalExchange :> ElementExtension {
        doc /* an exchange between two functions of the system
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute interfaceName : String {
            doc /* The name of the NamedElement
            * [source: UML superstructure v2.2]
            */
        }
        attribute isMulticast : Boolean {
            doc /* Tells whether the objects in the flow are passed by multicasting
            * [source: UML superstructure v2.2]
            */
        }
        attribute isMultireceive : Boolean {
            doc /* Tells whether the objects in the flow are gathered from respondents to multicasting
            * [source: UML superstructure v2.2]
            */
        }
        attribute kindOfRate : RateKind {
            doc /* characterizes the rate : typically, discrete versus continuous.
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedFunctionalExchangeRealizations[0..*] ordered: FunctionalExchangeRealization;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref item exchangedItems[0..*] ordered: ExchangeItem;

        end port source;
        end port target;

        message transfer of exchangedItems : ExchangeItem[0..*]
            from source to target;

    }
    interface def ComponentExchange :> ElementExtension {
        doc /* a specialized version of an exchange specification, dedicated to characterize exchanges between components
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute interfaceName : String {
            doc /* The name of the NamedElement
            * [source: UML superstructure v2.2]
            */
        }
        attribute isOriented : Boolean {
            doc /* describes the orientation of the connection. The connection can be oriented or not */
        }
        attribute kind : ComponentExchangeKind {
            doc /* Kind of the connection */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedComponentExchangeFunctionalExchangeAllocations[0..*] ordered: ComponentExchangeFunctionalExchangeAllocation;
        abstract ref allocation ownedComponentExchangeRealizations[0..*] ordered: ComponentExchangeRealization;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref item convoyedInformations[0..*] ordered: AbstractExchangeItem;

        end port source;
        end port target;

    }
    interface def CommunicationMean :> ComponentExchange {
        doc /* the mean by which two specific operational entities are able to exchange information
        * [source: Capella study]
        */
        
        

        end port source;
        end port target;

    }
    interface def PhysicalLink :> ElementExtension {
        doc /* the representation of the physical medium connecting two physical interfaces
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute interfaceName : String {
            doc /* The name of the NamedElement
            * [source: UML superstructure v2.2]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        abstract ref allocation ownedComponentExchangeAllocations[0..*] ordered: ComponentExchangeAllocation;
        abstract ref allocation ownedComponentExchangeFunctionalExchangeAllocations[0..*] ordered: ComponentExchangeFunctionalExchangeAllocation;
        abstract ref allocation ownedPhysicalLinkRealizations[0..*] ordered: PhysicalLinkRealization;
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;

        end port source;
        end port target;

    }
    interface def CommunicationLink :> ElementExtension {
        doc /* describes a link of communication using exchange items */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute kind : CommunicationLinkKind {
            doc /* refer to CommunicationLinkKind description */
        }
        attribute protocol : CommunicationLinkProtocol {
            doc /* refer to CommunicationLinkProtocol description */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref item exchangeItem[0..1] ordered: ExchangeItem;

        end port source;
        end port target;

    }

    allocation def AbstractStateRealization :> CapellaAllocation {
        doc /* an AbstractStateRealization is a specific kind of allocation link between two AbstractStates (typically of different design levels, or of different nature)
        * [source: Capella study]
        */
        
        
    }

    allocation def StateTransitionRealization :> CapellaAllocation {
        doc /* a StateTransitionRealization is a specific kind of allocation link between two StateTransitions (typically of different design levels, or of different nature)
        * [source: Capella study]
        */
        
        
    }

    allocation def StateEventRealization :> CapellaAllocation {
        doc /* a StateEventRealization is a specific kind of realization link between two StateEvent (typically of different design levels, or of different nature)
        * [source: Capella study]
        */
        
        
    }

    abstract allocation def CapellaAllocation :> ElementExtension {
        doc /* Allocation is similar to SysML Allocate concept : It is a mechanism for associating elements of different types, or in
        * different hierarchies, at an abstract level. Allocate is used for assessing user model consistency and directing future design
        * activity. It is expected that an "allocate" relationship between model elements is a precursor to a more concrete
        * relationship between the elements, their properties, operations, attributes, or sub-classes.
        * [source:SysML v1.1]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }

    abstract allocation def ArchitectureAllocation :> CapellaAllocation {
        doc /* Mediator class between BlockArchitecture elements, to represent an allocation link
        * [source: Capella study]
        */
        
        
    }

    allocation def ComponentRealization :> CapellaAllocation {
        doc /* Mediator class between Component elements, representing the realization link between these elements
        * [source: Capella light-light study]
        */
        
        
    }

    abstract allocation def InterfaceAllocation :> CapellaAllocation {
        doc /* Mediator class between an Interface and an element that allocates to/from it.
        * [source: Capella study]
        */
        
        
    }

    allocation def PhysicalLinkRealization :> CapellaAllocation {
        doc /* n/a */
        
        
    }

    allocation def PhysicalPathRealization :> CapellaAllocation {
        doc /* n/a */
        
        
    }

    allocation def PhysicalPortRealization :> CapellaAllocation {
        doc /* n/a */
        
        
    }

    abstract allocation def AbstractFunctionAllocation :> CapellaAllocation {
        doc /* a base class for deriving allocation relationships between a function, and some other model element
        * [source: Capella study]
        */
        
        
    }

    allocation def ComponentFunctionalAllocation :> AbstractFunctionAllocation, CapellaAllocation {
        doc /* a allocation link between a function and a component
        * [source: Capella study]
        */
        
        
        end function:AbstractFunction;
        end component:Component;
    }

    allocation def FunctionalChainRealization :> CapellaAllocation {
        doc /* an allocation link between two Functional Chains */
        
        
    }

    abstract allocation def ExchangeSpecificationRealization :> CapellaAllocation {
        doc /* Base class for deriving specific realization links between exchange specifications and the model elements that realize them.
        * [source: Capella study]
        */
        
        
    }

    allocation def FunctionalExchangeRealization :> CapellaAllocation {
        doc /* a realization link between a functional exchange, and the (typically higher level) functional exchange that it realizes
        * [source: Capella study]
        */
        
        
    }

    allocation def FunctionRealization :> AbstractFunctionAllocation, CapellaAllocation {
        doc /* an allocation link between a function, and the function that it realizes
        * [source: Capella study]
        */
        
        
    }

    allocation def ComponentExchangeAllocation :> CapellaAllocation {
        doc /* Mediator class implementing an allocation relationship, between a component exchange, and the element that allocates it
        * [source: Capella study]
        */
        
        
    }

    allocation def ComponentExchangeFunctionalExchangeAllocation :> AbstractFunctionAllocation, CapellaAllocation {
        doc /* allocation link between a connection and a functional exchange
        * [source: Capella study]
        */
        
        
        end functionalExchange:FunctionalExchange;
        end componentExchange:ComponentExchange;
    }

    allocation def ComponentExchangeRealization :> CapellaAllocation, ExchangeSpecificationRealization {
        doc /* an allocation link between a connection, and another (typically lower level) connection that realizes it */
        
        
    }

    allocation def ComponentPortAllocation :> CapellaAllocation {
        doc /* specific kind of allocation link, between two Ports.
        * [source: Capella study]
        */
        
        
        end allocatedPort:AbstractPort;
        end allocatingPort:AbstractPort;
    }

    allocation def OperationAllocation :> CapellaAllocation {
        doc /* Mediator class supporting the implementation of the allocation link between two Operations
        * [source: Capella study]
        */
        
        
    }

    allocation def PortRealization :> CapellaAllocation {
        doc /* a PortRealization is a specific kind of allocation link between two Ports (typically of different design levels, or of different nature)
        * [source: Capella study]
        */
        
        
    }

    allocation def PortAllocation :> CapellaAllocation {
        doc /* specific kind of allocation link, between two Ports.
        * [source: Capella study]
        */
        
        
        end allocatedPort:AbstractPort;
        end allocatingPort:AbstractPort;
    }

    allocation def InformationRealization :> CapellaAllocation {
        doc /* Realization link between two information items */
        
        
    }

    allocation def ExchangeItemRealization :> CapellaAllocation {
        doc /* Allocation link between exchange items and operation(s) of an interface that support them
        * [source: Capella study]
        */
        
        
    }

    allocation def PhysicalArchitectureRealization :> ArchitectureAllocation, CapellaAllocation {
        doc /* Realization link betwen an EPBS architecture and a physical architecture
        * [source:Capella study]
        * 
        * Realization is a specialized abstraction relationship between two sets of model elements, one representing a specification
        * (the supplier) and the other represents an implementation of the latter (the client). Realization can be used to model
        * stepwise refinement, optimizations, transformations, templates, model synthesis, framework composition, etc.
        * [source: UML superstructure v2.2]
        */
        
        
    }

    allocation def PhysicalArtifactRealization :> CapellaAllocation {
        doc /* Realization link betwen a Configuration Item and a physical artifact */
        
        
    }

    allocation def LogicalArchitectureRealization :> ArchitectureAllocation, CapellaAllocation {
        doc /* mediator class supporting the implementation of the allocation link between a physical architecture, and the logical architecture(s) that it realizes
        * [source: Capella study]
        */
        
        
    }

    allocation def LogicalInterfaceRealization :> CapellaAllocation, InterfaceAllocation {
        doc /* mediator class supporting the implementation of the allocation link between a physical interface, and the logical interface(s) that it realizes
        * [source: Capella study]
        */
        
        
    }

    allocation def SystemAnalysisRealization :> ArchitectureAllocation, CapellaAllocation {
        doc /* a realisation link between a system analysis and a logical architecture
        * [source: Capella study]
        */
        
        
    }

    allocation def ContextInterfaceRealization :> CapellaAllocation, InterfaceAllocation {
        doc /* an allocation link between an interface at the logical level, and the system-level interface that it realizes
        * [source: Capella study]
        */
        
        
    }

    allocation def AbstractCapabilityRealization :> CapellaAllocation {
        doc /* An abstract capability realization describes an realization between an realizing capability and an realized capability
        * [source:Capella study]
        */
        
        
    }

    allocation def ScenarioRealization :> CapellaAllocation {
        doc /* an allocation link between a scenario, and the scenario that it realizes */
        
        
    }

    allocation def OperationalAnalysisRealization :> ArchitectureAllocation, CapellaAllocation {
        doc /* Realization link betwen a system analysis and an operational analysis
        * [source:Capella study]
        * 
        * Realization is a specialized abstraction relationship between two sets of model elements, one representing a specification
        * (the supplier) and the other represents an implementation of the latter (the client). Realization can be used to model
        * stepwise refinement, optimizations, transformations, templates, model synthesis, framework composition, etc.
        * [source:UML superstructure v2.2]
        */
        
        
    }

    allocation def ActivityAllocation :> CapellaAllocation {
        doc /* allocation relationship between an operational role and an operational activity
        * [source: Capella study]
        */
        
        
    }

    allocation def RoleAllocation :> CapellaAllocation {
        doc /* Allocation link between an operational role and an operational entity
        * [source: Capella study]
        */
        
        
    }

    abstract allocation def AbstractDeploymentLink :> ElementExtension {
        doc /* the link between a physical element, and the physical target onto which it is deployed
        * [source: Capella study]
        */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
    }

    allocation def InstanceDeploymentLink :> AbstractDeploymentLink {
        doc /* link between a physical object and its deployment element
        * [source: Capella study]
        */
        
        
    }

    allocation def PartDeploymentLink :> AbstractDeploymentLink {
        doc /* link between a part and its deployment element */
        
        
        end deployed:PhysicalComponent;
        end deploying:PhysicalComponent;
    }

    allocation def TypeDeploymentLink :> AbstractDeploymentLink {
        doc /* deployment link between a data type and the model element that deploys it
        * [source: Capella study]
        */
        
        
    }

    allocation def ExchangeItemAllocation :> ElementExtension {
        doc /* Allocation link between exchange items and interface that support them */
        attribute id : String {
            doc /* the unique identifier for this element
            * [source: Capella study]
            */
        }
        attribute isFinal : Boolean {
            doc /* none */
        }
        attribute receiveProtocol : CommunicationLinkProtocol {
            doc /* describes the default protocol used by the receiver of the exchange item. It could be overrided by the protocol used by the given communication exchanger */
        }
        attribute review : String {
            doc /* Review description on the Capella element */
        }
        attribute sendProtocol : CommunicationLinkProtocol {
            doc /* describes the default protocol used by the sender of the exchange item. It could be overrided by the protocol used by the given communication exchanger */
        }
        attribute summary : String {
            doc /* Summary of the element
            * [Capella study]
            */
        }
        ref attribute appliedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute appliedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute features[0..*] ordered: EnumerationPropertyLiteral;
        ref attribute ownedEnumerationPropertyTypes[0..*] ordered: EnumerationPropertyType;
        ref attribute ownedPropertyValueGroups[0..*] ordered: PropertyValueGroup;
        ref attribute ownedPropertyValues[0..*] ordered: AbstractPropertyValue;
        ref attribute status[0..1] ordered: EnumerationPropertyLiteral;
        ref constraint ownedConstraints[0..*] ordered: AbstractConstraint;
        ref item allocatedItems[0..1] ordered: ExchangeItem;
        end allocatedItem:ExchangeItem;
        end allocatingInterface:InterfaceItem;
    }


}
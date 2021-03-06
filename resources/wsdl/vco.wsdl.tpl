<?xml version="1.0" encoding="UTF-8"?>
<wsdl:definitions targetNamespace="http://webservice.vso.dunes.ch" xmlns:apachesoap="http://xml.apache.org/xml-soap" xmlns:impl="http://webservice.vso.dunes.ch" xmlns:intf="http://webservice.vso.dunes.ch" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/" xmlns:wsdlsoap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:xsd="http://www.w3.org/2001/XMLSchema">

<!--WSDL created by Apache Axis version: 1.2.1
Built on Jun 14, 2005 (09:15:57 EDT)-->

  <wsdl:types>

    <schema elementFormDefault="qualified" targetNamespace="http://webservice.vso.dunes.ch" xmlns="http://www.w3.org/2001/XMLSchema">

      <element name="find">

        <complexType>

          <sequence>

            <element name="type" type="xsd:string"/>

            <element name="query" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="findResponse">

        <complexType>

          <sequence>

            <element name="findReturn" type="impl:QueryResult"/>

          </sequence>

        </complexType>

      </element>

      <complexType name="Property">

        <sequence>

          <element name="name" nillable="true" type="xsd:string"/>

          <element name="value" nillable="true" type="xsd:string"/>

        </sequence>

      </complexType>

      <complexType name="ArrayOfProperty">

        <sequence>

          <element maxOccurs="unbounded" minOccurs="0" name="item" type="impl:Property"/>

        </sequence>

      </complexType>

      <complexType name="FinderResult">

        <sequence>

          <element name="type" nillable="true" type="xsd:string"/>

          <element name="id" nillable="true" type="xsd:string"/>

          <element name="properties" nillable="true" type="impl:ArrayOfProperty"/>

          <element name="dunesUri" nillable="true" type="xsd:string"/>

        </sequence>

      </complexType>

      <complexType name="ArrayOfFinderResult">

        <sequence>

          <element maxOccurs="unbounded" minOccurs="0" name="item" type="impl:FinderResult"/>

        </sequence>

      </complexType>

      <complexType name="QueryResult">

        <sequence>

          <element name="totalCount" type="xsd:long"/>

          <element name="elements" nillable="true" type="impl:ArrayOfFinderResult"/>

        </sequence>

      </complexType>

      <element name="echo">

        <complexType>

          <sequence>

            <element name="message" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="echoResponse">

        <complexType>

          <sequence>

            <element name="echoReturn" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="echoWorkflow">

        <complexType>

          <sequence>

            <element name="workflowMessage" type="impl:Workflow"/>

          </sequence>

        </complexType>

      </element>

      <complexType name="WorkflowParameter">

        <sequence>

          <element name="name" nillable="true" type="xsd:string"/>

          <element name="type" nillable="true" type="xsd:string"/>

        </sequence>

      </complexType>

      <complexType name="ArrayOfWorkflowParameter">

        <sequence>

          <element maxOccurs="unbounded" minOccurs="0" name="item" type="impl:WorkflowParameter"/>

        </sequence>

      </complexType>

      <complexType name="Workflow">

        <sequence>

          <element name="id" nillable="true" type="xsd:string"/>

          <element name="name" nillable="true" type="xsd:string"/>

          <element name="description" nillable="true" type="xsd:string"/>

          <element name="inParameters" nillable="true" type="impl:ArrayOfWorkflowParameter"/>

          <element name="outParameters" nillable="true" type="impl:ArrayOfWorkflowParameter"/>

          <element name="attributes" nillable="true" type="impl:ArrayOfWorkflowParameter"/>

        </sequence>

      </complexType>

      <element name="echoWorkflowResponse">

        <complexType>

          <sequence>

            <element name="echoWorkflowReturn" type="impl:Workflow"/>

          </sequence>

        </complexType>

      </element>

      <element name="sendCustomEvent">

        <complexType>

          <sequence>

            <element name="eventName" type="xsd:string"/>

            <element name="serializedProperties" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="sendCustomEventResponse">

        <complexType/>

      </element>

      <element name="getWorkflowForId">

        <complexType>

          <sequence>

            <element name="workflowId" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowForIdResponse">

        <complexType>

          <sequence>

            <element name="getWorkflowForIdReturn" type="impl:Workflow"/>

          </sequence>

        </complexType>

      </element>

      <element name="getAllWorkflows">

        <complexType>

          <sequence>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getAllWorkflowsResponse">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="getAllWorkflowsReturn" type="impl:Workflow"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowsWithName">

        <complexType>

          <sequence>

            <element name="workflowName" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowsWithNameResponse">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="getWorkflowsWithNameReturn" type="impl:Workflow"/>

          </sequence>

        </complexType>

      </element>

      <element name="executeWorkflow">

        <complexType>

          <sequence>

            <element name="workflowId" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

            <element maxOccurs="unbounded" minOccurs="0" name="workflowInputs" type="impl:WorkflowTokenAttribute"/>

          </sequence>

        </complexType>

      </element>

      <complexType name="WorkflowTokenAttribute">

        <sequence>

          <element name="name" nillable="true" type="xsd:string"/>

          <element name="type" nillable="true" type="xsd:string"/>

          <element name="value" nillable="true" type="xsd:string"/>

        </sequence>

      </complexType>

      <element name="executeWorkflowResponse">

        <complexType>

          <sequence>

            <element name="executeWorkflowReturn" type="impl:WorkflowToken"/>

          </sequence>

        </complexType>

      </element>

      <complexType name="WorkflowToken">

        <sequence>

          <element name="id" nillable="true" type="xsd:string"/>

          <element name="title" nillable="true" type="xsd:string"/>

          <element name="workflowId" nillable="true" type="xsd:string"/>

          <element name="currentItemName" nillable="true" type="xsd:string"/>

          <element name="currentItemState" nillable="true" type="xsd:string"/>

          <element name="globalState" nillable="true" type="xsd:string"/>

          <element name="startDate" nillable="true" type="xsd:string"/>

          <element name="endDate" nillable="true" type="xsd:string"/>

          <element name="xmlContent" nillable="true" type="xsd:string"/>

        </sequence>

      </complexType>

      <element name="simpleExecuteWorkflow">

        <complexType>

          <sequence>

            <element name="in0" type="xsd:string"/>

            <element name="in1" type="xsd:string"/>

            <element name="in2" type="xsd:string"/>

            <element name="in3" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="simpleExecuteWorkflowResponse">

        <complexType>

          <sequence>

            <element name="simpleExecuteWorkflowReturn" type="impl:WorkflowToken"/>

          </sequence>

        </complexType>

      </element>

      <element name="cancelWorkflow">

        <complexType>

          <sequence>

            <element name="workflowTokenId" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="cancelWorkflowResponse">

        <complexType/>

      </element>

      <element name="getWorkflowTokenResult">

        <complexType>

          <sequence>

            <element name="workflowTokenId" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowTokenResultResponse">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="getWorkflowTokenResultReturn" type="impl:WorkflowTokenAttribute"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowTokenForId">

        <complexType>

          <sequence>

            <element name="workflowTokenId" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowTokenForIdResponse">

        <complexType>

          <sequence>

            <element name="getWorkflowTokenForIdReturn" type="impl:WorkflowToken"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowTokenStatus">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="workflowTokenIds" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getWorkflowTokenStatusResponse">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="getWorkflowTokenStatusReturn" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="answerWorkflowInput">

        <complexType>

          <sequence>

            <element name="workflowTokenId" type="xsd:string"/>

            <element maxOccurs="unbounded" minOccurs="1" name="answerInputs" type="impl:WorkflowTokenAttribute"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="answerWorkflowInputResponse">

        <complexType/>

      </element>

      <element name="hasRights">

        <complexType>

          <sequence>

            <element name="taskId" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

            <element name="right" type="xsd:int"/>

          </sequence>

        </complexType>

      </element>

      <element name="hasRightsResponse">

        <complexType>

          <sequence>

            <element name="hasRightsReturn" type="xsd:boolean"/>

          </sequence>

        </complexType>

      </element>

      <element name="getAllPlugin">

        <complexType>

          <sequence>

            <element name="in0" type="xsd:string"/>

            <element name="in1" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getAllPluginResponse">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="getAllPluginReturn" type="impl:ModuleInfo"/>

          </sequence>

        </complexType>

      </element>

      <complexType name="ModuleInfo">

        <sequence>

          <element name="moduleName" nillable="true" type="xsd:string"/>

          <element name="moduleVersion" nillable="true" type="xsd:string"/>

          <element name="moduleDescription" nillable="true" type="xsd:string"/>

          <element name="moduleDisplayName" nillable="true" type="xsd:string"/>

        </sequence>

      </complexType>

      <element name="getAllPlugins">

        <complexType>

          <sequence>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="getAllPluginsResponse">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="getAllPluginsReturn" type="impl:ModuleInfo"/>

          </sequence>

        </complexType>

      </element>

      <element name="findForId">

        <complexType>

          <sequence>

            <element name="type" type="xsd:string"/>

            <element name="id" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="findForIdResponse">

        <complexType>

          <sequence>

            <element name="findForIdReturn" type="impl:FinderResult"/>

          </sequence>

        </complexType>

      </element>

      <element name="findRelation">

        <complexType>

          <sequence>

            <element name="parentType" type="xsd:string"/>

            <element name="parentId" type="xsd:string"/>

            <element name="relationName" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="findRelationResponse">

        <complexType>

          <sequence>

            <element maxOccurs="unbounded" minOccurs="0" name="findRelationReturn" type="impl:FinderResult"/>

          </sequence>

        </complexType>

      </element>

      <element name="hasChildrenInRelation">

        <complexType>

          <sequence>

            <element name="parentType" type="xsd:string"/>

            <element name="parentId" type="xsd:string"/>

            <element name="relationName" type="xsd:string"/>

            <element name="username" type="xsd:string"/>

            <element name="password" type="xsd:string"/>

          </sequence>

        </complexType>

      </element>

      <element name="hasChildrenInRelationResponse">

        <complexType>

          <sequence>

            <element name="hasChildrenInRelationReturn" type="xsd:int"/>

          </sequence>

        </complexType>

      </element>

    </schema>

  </wsdl:types>


    <wsdl:message name="hasChildrenInRelationRequest">


        <wsdl:part element="impl:hasChildrenInRelation" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="answerWorkflowInputResponse">


        <wsdl:part element="impl:answerWorkflowInputResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowTokenForIdRequest">


        <wsdl:part element="impl:getWorkflowTokenForId" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getAllPluginResponse">


        <wsdl:part element="impl:getAllPluginResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="sendCustomEventResponse">


        <wsdl:part element="impl:sendCustomEventResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="findRelationRequest">


        <wsdl:part element="impl:findRelation" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="echoRequest">


        <wsdl:part element="impl:echo" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="executeWorkflowResponse">


        <wsdl:part element="impl:executeWorkflowResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowForIdResponse">


        <wsdl:part element="impl:getWorkflowForIdResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowForIdRequest">


        <wsdl:part element="impl:getWorkflowForId" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowTokenStatusResponse">


        <wsdl:part element="impl:getWorkflowTokenStatusResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="hasRightsResponse">


        <wsdl:part element="impl:hasRightsResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="findForIdRequest">


        <wsdl:part element="impl:findForId" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="findRelationResponse">


        <wsdl:part element="impl:findRelationResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="findForIdResponse">


        <wsdl:part element="impl:findForIdResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowsWithNameRequest">


        <wsdl:part element="impl:getWorkflowsWithName" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowTokenResultRequest">


        <wsdl:part element="impl:getWorkflowTokenResult" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="hasRightsRequest">


        <wsdl:part element="impl:hasRights" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="echoWorkflowRequest">


        <wsdl:part element="impl:echoWorkflow" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="echoWorkflowResponse">


        <wsdl:part element="impl:echoWorkflowResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="sendCustomEventRequest">


        <wsdl:part element="impl:sendCustomEvent" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getAllPluginsRequest">


        <wsdl:part element="impl:getAllPlugins" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="simpleExecuteWorkflowResponse">


        <wsdl:part element="impl:simpleExecuteWorkflowResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowTokenResultResponse">


        <wsdl:part element="impl:getWorkflowTokenResultResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowsWithNameResponse">


        <wsdl:part element="impl:getWorkflowsWithNameResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="executeWorkflowRequest">


        <wsdl:part element="impl:executeWorkflow" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowTokenForIdResponse">


        <wsdl:part element="impl:getWorkflowTokenForIdResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="cancelWorkflowResponse">


        <wsdl:part element="impl:cancelWorkflowResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getWorkflowTokenStatusRequest">


        <wsdl:part element="impl:getWorkflowTokenStatus" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="cancelWorkflowRequest">


        <wsdl:part element="impl:cancelWorkflow" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="findRequest">


        <wsdl:part element="impl:find" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getAllPluginsResponse">


        <wsdl:part element="impl:getAllPluginsResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getAllWorkflowsResponse">


        <wsdl:part element="impl:getAllWorkflowsResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="answerWorkflowInputRequest">


        <wsdl:part element="impl:answerWorkflowInput" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="simpleExecuteWorkflowRequest">


        <wsdl:part element="impl:simpleExecuteWorkflow" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="echoResponse">


        <wsdl:part element="impl:echoResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getAllWorkflowsRequest">


        <wsdl:part element="impl:getAllWorkflows" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="findResponse">


        <wsdl:part element="impl:findResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="getAllPluginRequest">


        <wsdl:part element="impl:getAllPlugin" name="parameters"/>


    </wsdl:message>


    <wsdl:message name="hasChildrenInRelationResponse">


        <wsdl:part element="impl:hasChildrenInRelationResponse" name="parameters"/>


    </wsdl:message>


    <wsdl:portType name="VSOWebControl">


        <wsdl:operation name="find">


            <wsdl:input message="impl:findRequest" name="findRequest"/>


            <wsdl:output message="impl:findResponse" name="findResponse"/>


        </wsdl:operation>


        <wsdl:operation name="echo">


            <wsdl:input message="impl:echoRequest" name="echoRequest"/>


            <wsdl:output message="impl:echoResponse" name="echoResponse"/>


        </wsdl:operation>


        <wsdl:operation name="echoWorkflow">


            <wsdl:input message="impl:echoWorkflowRequest" name="echoWorkflowRequest"/>


            <wsdl:output message="impl:echoWorkflowResponse" name="echoWorkflowResponse"/>


        </wsdl:operation>


        <wsdl:operation name="sendCustomEvent">


            <wsdl:input message="impl:sendCustomEventRequest" name="sendCustomEventRequest"/>


            <wsdl:output message="impl:sendCustomEventResponse" name="sendCustomEventResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowForId">


            <wsdl:input message="impl:getWorkflowForIdRequest" name="getWorkflowForIdRequest"/>


            <wsdl:output message="impl:getWorkflowForIdResponse" name="getWorkflowForIdResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getAllWorkflows">


            <wsdl:input message="impl:getAllWorkflowsRequest" name="getAllWorkflowsRequest"/>


            <wsdl:output message="impl:getAllWorkflowsResponse" name="getAllWorkflowsResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowsWithName">


            <wsdl:input message="impl:getWorkflowsWithNameRequest" name="getWorkflowsWithNameRequest"/>


            <wsdl:output message="impl:getWorkflowsWithNameResponse" name="getWorkflowsWithNameResponse"/>


        </wsdl:operation>


        <wsdl:operation name="executeWorkflow">


            <wsdl:input message="impl:executeWorkflowRequest" name="executeWorkflowRequest"/>


            <wsdl:output message="impl:executeWorkflowResponse" name="executeWorkflowResponse"/>


        </wsdl:operation>


        <wsdl:operation name="simpleExecuteWorkflow">


            <wsdl:input message="impl:simpleExecuteWorkflowRequest" name="simpleExecuteWorkflowRequest"/>


            <wsdl:output message="impl:simpleExecuteWorkflowResponse" name="simpleExecuteWorkflowResponse"/>


        </wsdl:operation>


        <wsdl:operation name="cancelWorkflow">


            <wsdl:input message="impl:cancelWorkflowRequest" name="cancelWorkflowRequest"/>


            <wsdl:output message="impl:cancelWorkflowResponse" name="cancelWorkflowResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowTokenResult">


            <wsdl:input message="impl:getWorkflowTokenResultRequest" name="getWorkflowTokenResultRequest"/>


            <wsdl:output message="impl:getWorkflowTokenResultResponse" name="getWorkflowTokenResultResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowTokenForId">


            <wsdl:input message="impl:getWorkflowTokenForIdRequest" name="getWorkflowTokenForIdRequest"/>


            <wsdl:output message="impl:getWorkflowTokenForIdResponse" name="getWorkflowTokenForIdResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowTokenStatus">


            <wsdl:input message="impl:getWorkflowTokenStatusRequest" name="getWorkflowTokenStatusRequest"/>


            <wsdl:output message="impl:getWorkflowTokenStatusResponse" name="getWorkflowTokenStatusResponse"/>


        </wsdl:operation>


        <wsdl:operation name="answerWorkflowInput">


            <wsdl:input message="impl:answerWorkflowInputRequest" name="answerWorkflowInputRequest"/>


            <wsdl:output message="impl:answerWorkflowInputResponse" name="answerWorkflowInputResponse"/>


        </wsdl:operation>


        <wsdl:operation name="hasRights">


            <wsdl:input message="impl:hasRightsRequest" name="hasRightsRequest"/>


            <wsdl:output message="impl:hasRightsResponse" name="hasRightsResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getAllPlugin">


            <wsdl:input message="impl:getAllPluginRequest" name="getAllPluginRequest"/>


            <wsdl:output message="impl:getAllPluginResponse" name="getAllPluginResponse"/>


        </wsdl:operation>


        <wsdl:operation name="getAllPlugins">


            <wsdl:input message="impl:getAllPluginsRequest" name="getAllPluginsRequest"/>


            <wsdl:output message="impl:getAllPluginsResponse" name="getAllPluginsResponse"/>


        </wsdl:operation>


        <wsdl:operation name="findForId">


            <wsdl:input message="impl:findForIdRequest" name="findForIdRequest"/>


            <wsdl:output message="impl:findForIdResponse" name="findForIdResponse"/>


        </wsdl:operation>


        <wsdl:operation name="findRelation">


            <wsdl:input message="impl:findRelationRequest" name="findRelationRequest"/>


            <wsdl:output message="impl:findRelationResponse" name="findRelationResponse"/>


        </wsdl:operation>


        <wsdl:operation name="hasChildrenInRelation">


            <wsdl:input message="impl:hasChildrenInRelationRequest" name="hasChildrenInRelationRequest"/>


            <wsdl:output message="impl:hasChildrenInRelationResponse" name="hasChildrenInRelationResponse"/>


        </wsdl:operation>


    </wsdl:portType>


    <wsdl:binding name="WebService" type="impl:VSOWebControl">


        <wsdlsoap:binding style="document" transport="http://schemas.xmlsoap.org/soap/http"/>


        <wsdl:operation name="find">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="findRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="findResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="echo">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="echoRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="echoResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="echoWorkflow">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="echoWorkflowRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="echoWorkflowResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="sendCustomEvent">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="sendCustomEventRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="sendCustomEventResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowForId">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getWorkflowForIdRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getWorkflowForIdResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getAllWorkflows">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getAllWorkflowsRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getAllWorkflowsResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowsWithName">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getWorkflowsWithNameRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getWorkflowsWithNameResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="executeWorkflow">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="executeWorkflowRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="executeWorkflowResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="simpleExecuteWorkflow">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="simpleExecuteWorkflowRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="simpleExecuteWorkflowResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="cancelWorkflow">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="cancelWorkflowRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="cancelWorkflowResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowTokenResult">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getWorkflowTokenResultRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getWorkflowTokenResultResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowTokenForId">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getWorkflowTokenForIdRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getWorkflowTokenForIdResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getWorkflowTokenStatus">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getWorkflowTokenStatusRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getWorkflowTokenStatusResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="answerWorkflowInput">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="answerWorkflowInputRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="answerWorkflowInputResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="hasRights">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="hasRightsRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="hasRightsResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getAllPlugin">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getAllPluginRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getAllPluginResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="getAllPlugins">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="getAllPluginsRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="getAllPluginsResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="findForId">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="findForIdRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="findForIdResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="findRelation">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="findRelationRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="findRelationResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


        <wsdl:operation name="hasChildrenInRelation">


            <wsdlsoap:operation soapAction=""/>


            <wsdl:input name="hasChildrenInRelationRequest">


                <wsdlsoap:body use="literal"/>


            </wsdl:input>


            <wsdl:output name="hasChildrenInRelationResponse">


                <wsdlsoap:body use="literal"/>


            </wsdl:output>


        </wsdl:operation>


    </wsdl:binding>


    <wsdl:service name="VSOWebControlService">


        <wsdl:port binding="impl:WebService" name="webservice">


            <wsdlsoap:address location="http://{{ host }}:{{ port }}/vmware-vmo-webcontrol/webservice"/>


        </wsdl:port>


    </wsdl:service>


</wsdl:definitions>

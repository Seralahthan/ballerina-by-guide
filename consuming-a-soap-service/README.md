# SOAP Service
Web services are of two kinds: Simple Object Access Protocol (SOAP) and Representational State Transfer (REST). 
SOAP defines a standard communication protocol (set of rules) specification for XML-based message exchange. 
Its purpose is to induce extensibility, neutrality and independence. It uses XML Information Set for its message format, and relies on application layer protocols, most often Hypertext Transfer Protocol (HTTP) or Simple Mail Transfer Protocol (SMTP), for message negotiation and transmission.

> In this guide you will learn about deploying a custom SOAP Web service in the back-end and consuming that service using Ballerina SOAP Connectors.

The following are the sections available in this guide.

- [What you'll build](#what-youll-build)
- [Prerequisites](#prerequisites)
- [Implementation](#implementation)
- [Testing](#testing)
- [Deployment](#deployment)
- [Observability](#observability)

## What you’ll build 
To understand how to use Ballerina language's features to write a SOAP connector which communicates with a unsecure SOAP web service running in the back-end, Let's consider a real world use case of a banking service running online where users can view, update, delete and create accounts. You can model this banking service as a SOAP Web service which is not secure; 'unsecure_banking_service', which is deployed as an Axis2 services in the back-end and accepts different SOAP requests for banking tasks such as account creation, retrieval, updating and deletion.In order to communicate with this SOAP service we are going to exploit the power of the Ballerina SOAP connector.The following diagram illustrates all the required functionality of the Ballerina SOAP connector you are going to build and the Unsecure Banking Service you are going to deploy.

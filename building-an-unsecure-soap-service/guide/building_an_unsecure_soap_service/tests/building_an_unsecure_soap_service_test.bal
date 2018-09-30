import ballerina/io;
import ballerina/test;
import wso2/soap;
import ballerina/http;

// xmlns "http://services.samples" as ns;
// xmlns "http://services.samples/xsd" as axis;

endpoint http:Client clientEP {
    url:"http://localhost:9090"
};

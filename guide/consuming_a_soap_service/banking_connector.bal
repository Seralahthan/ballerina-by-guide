import ballerina/io;
import wso2/soap;

//This client is used to connect with secure and unsecure soap backends and exchange data
function main(string... args) {
   var unsecureSoapResp = unsecureBankingConnector();
   match unsecureSoapResp {
       soap:SoapResponse soapResponse => io:println(soapResponse);
       soap:SoapError soapError => io:println(soapError);
   }

//    var secureSoapResp = secureBankingConnector();
//    match secureSoapResp {
//       soap:SoapResponse soapResponse => io:println(soapResponse);
//       soap:SoapError soapError => io:println(soapError);
//    }
}

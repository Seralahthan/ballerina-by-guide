import wso2/soap;
import ballerina/io;

endpoint soap:Client soapClient {
    clientConfig: {
        url: "http://localhost:9000"
    }
};

public function unsecureBankingConnector() returns soap:SoapResponse|soap:SoapError {
   xml body = xml `<m0:getAccountDetails xmlns:m0="http://services.samples">
                       <m0:request>
                           <m0:accountNo>2417254</m0:accountNo>
                       </m0:request>
                   </m0:getAccountDetails>`;

    soap:SoapRequest soapRequest = {
        soapAction: "urn:getAccountDetails",
        payload: body
    };

    var soapResp = soapClient->sendReceive("/services/UnsecureBankingService", soapRequest);
    return soapResp;
}

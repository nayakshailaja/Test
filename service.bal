import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name.length() > 5 {
            return error("name is larger than expected!");
        }
        return "Hello," + name;
    }
     resource function post .(@http:Payload string textMsg) returns string {
        return textMsg;
    }
}

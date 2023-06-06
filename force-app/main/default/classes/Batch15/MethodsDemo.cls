public  class MethodsDemo {
    public void welcomeMessage() {
        system.debug('Hi there, welcome to the jungle ');

    }
    public void samplePrintMessage(string message){
        system.debug(message);
    }

    public void newMessage (string name){
        system.debug('Hi  ' + name + ', welcome to the world of apex!');
    }

    public string  returnMessage(string name){
        string str = 'Hey ' + name + ', nice to meet you';

        return str;

    }
}
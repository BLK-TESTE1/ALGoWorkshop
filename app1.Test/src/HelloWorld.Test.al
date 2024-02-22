codeunit 70000 "HelloWorld Test"
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('HelloWorldMessageHandler')]
    procedure TestHelloWorldMessage()
    var
        CustList: TestPage "Customer List";
        CustCard: TestPage "Customer Card";
    begin
        CustList.OpenView();
        CustList.Close();
        if (not MessageDisplayed) then
            ERROR('Message was not displayed!');

        CustCard.OpenView();
        CustCard.Close();
    end;

    [MessageHandler]
    procedure HelloWorldMessageHandler(Message: Text[1024])
    begin
        MessageDisplayed := MessageDisplayed or (Message <> '');
    end;

    var
        MessageDisplayed: Boolean;
}


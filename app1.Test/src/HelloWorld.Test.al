codeunit 70000 "HelloWorld Test"
{
    Subtype = Test;

    [Test]
    [HandlerFunctions('HelloWorldMessageHandler')]
    procedure TestHelloWorldMessage()
    var
        CustList: TestPage "Customer List";
    begin
        CustList.OpenView();
        CustList.Close();
        if (not MessageDisplayed) then
            ERROR('Message was not displayed!');
    end;

    [MessageHandler]
    procedure HelloWorldMessageHandler(Message: Text[1024])
    var
        YouAreHereLbl: Label 'You are here: %1!', Comment = 'PTG="Estás aqui: %1"';
    begin
        MessageDisplayed := MessageDisplayed or (Message = YouAreHereLbl);
    end;

    var
        MessageDisplayed: Boolean;
}


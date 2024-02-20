// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 55000 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    var
        Customer: Record Customer;
        YouAreHereLbl: Label 'You are here: %1!', Comment = 'PTG="Estás aqui: %1"';
    begin
        Message(YouAreHereLbl, CurrPage.Caption);

        Customer.Reset();
        if (Customer.FindFirst() = true) then
            Page.RunModal(Page::"Customer Card", Customer);
    end;
}


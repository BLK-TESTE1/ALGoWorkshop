// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 55000 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        Message('You are here: %1!', CurrPage.Caption);
        Rec.FindFirst();
        RunModal(0, Rec);
        Message('Done');
    end;
}


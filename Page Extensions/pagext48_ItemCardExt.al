pageextension 50148 "CSD Extend Item Card" extends "Item Card"
{
    actions
    {
        addfirst(Functions)
        {
            action(DownloadPicture)
            {
                Caption = 'Download Picture';
                Image = Picture;
                ApplicationArea=All;
                
                trigger OnAction()
                var
                    InStr: InStream;
                    Client: HttpClient;
                    Response: HttpResponseMessage;
                    Url: Label 'http://ba-consult.dk/downloads/bicycle.jpg';

                begin
                    Client.Get(Url, Response);
                    Response.Content.ReadAs(InStr);
                    rec.Picture.ImportStream(InStr, 'Default image');
                    CurrPage.Update(true);
                end;
            }
        }
    }
}
codeunit 80101 ProductVideosHandler
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::Video, 'OnRegisterVideo', '', false, false)]
    local procedure OnRegisterVideo(var Sender: Codeunit Video);
    var
        NewProductVideoLinks: Record NewProductVideoLink;
    begin
        NewProductVideoLinks.Reset();
        if NewProductVideoLinks.FindSet() then
            repeat
                Sender.Register(NewProductVideoLinks."App ID", NewProductVideoLinks.Title, NewProductVideoLinks."Video Url", NewProductVideoLinks.Category);
            until NewProductVideoLinks.Next() = 0;
    end;
}
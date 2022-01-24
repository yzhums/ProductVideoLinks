page 80101 NewProductVideoLinks
{
    Caption = 'New Product Video Links';
    PageType = List;
    UsageCategory = Lists;
    ApplicationArea = All;
    SourceTable = NewProductVideoLink;

    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.';
                    ApplicationArea = All;
                }
                field("Video Url"; Rec."Video Url")
                {
                    ToolTip = 'Specifies the value of the Video Url field.';
                    ApplicationArea = All;
                }
                field(Category; Rec.Category)
                {
                    ToolTip = 'Specifies the value of the Category field.';
                    ApplicationArea = All;
                }
                field("App ID"; Rec."App ID")
                {
                    ToolTip = 'Specifies the value of the App ID field.';
                    ApplicationArea = All;
                }
                field("Extension Name"; Rec."Extension Name")
                {
                    ToolTip = 'Specifies the value of the Extension Name field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
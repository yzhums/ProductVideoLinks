table 80101 NewProductVideoLink
{
    Caption = 'New Product Video Links';
    DataClassification = CustomerContent;

    fields
    {
        field(1; EntriesNo; Integer)
        {
            Caption = 'Entries No.';
            DataClassification = CustomerContent;
        }
        field(2; Title; Text[250])
        {
            Caption = 'Title';
            DataClassification = SystemMetadata;
        }
        field(3; "Video Url"; Text[2048])
        {
            Caption = 'Video Url';
            DataClassification = SystemMetadata;
        }
        field(4; Category; Enum "Video Category")
        {
            Caption = 'Category';
            DataClassification = SystemMetadata;
        }
        field(5; "App ID"; Guid)
        {
            Caption = 'App ID';
            DataClassification = SystemMetadata;
            Editable = false;
        }
        field(6; "Extension Name"; Text[250])
        {
            Caption = 'Extension Name';
            DataClassification = SystemMetadata;
            Editable = false;
        }
    }

    keys
    {
        key(PK; EntriesNo)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        NewProductVideoLinks: Record NewProductVideoLink;
        LastEntriesNumber: Integer;
        Info: ModuleInfo;
    begin
        LastEntriesNumber := 0;
        NewProductVideoLinks.Reset();
        if NewProductVideoLinks.FindLast() then
            LastEntriesNumber := NewProductVideoLinks.EntriesNo + 1
        else
            LastEntriesNumber := 1;
        NavApp.GetCurrentModuleInfo(Info);
        EntriesNo := LastEntriesNumber;
        "App ID" := Info.Id;
        "Extension Name" := Info.Name;
    end;
}
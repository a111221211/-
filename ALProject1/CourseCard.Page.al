page 50100 "CRONUS Course Card"
{
    PageType = Card;
    UsageCategory = None;
    SourceTable = "CRONUS Course";
    Caption = 'Course Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                caption = 'General';

                field(Code; rec.Code)
                {
                    ApplicationArea = all;
                }
                field(Name; rec.Name)
                {
                    ApplicationArea = all;
                }
                field(Description; rec.Description)
                {
                    ApplicationArea = all;
                }
            }
            group(Details)
            {
                caption = 'Details';
                field(Duration; rec.Duration)
                {
                    ApplicationArea = all;
                }
                field(Price; rec.Price)
                {
                    ApplicationArea = all;
                }
                field(Type; rec.Type)
                {
                    ApplicationArea = all;
                }
                field(Active; rec.Active)
                {
                    ApplicationArea = all;
                }
                field("Instructor Code"; rec."Instructor Code")
                {
                    ApplicationArea = all;
                }
                field("Instructor Name"; rec."Instructor Name")
                {
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Resource Card")
            {
                Caption = 'Resource';
                ToolTip = 'Open the Resource Card';
                RunObject = page "Resource Card";
                RunPageLink = "No." = field("Instructor Code");
                Image = Relationship;
                Promoted = true;
                PromotedCategory = Process;
                ApplicationArea = All;

            }
        }
    }
}
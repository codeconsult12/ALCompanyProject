page 50142 CompanyWiseProjects
{
    AutoSplitKey = true;
    DelayedInsert = true;
    PageType = Worksheet;
    PromotedActionCategories = 'New,Process,Report,Page,Post/Print,Line,Account';
    SaveValues = true;
    UsageCategory = Tasks;
    ApplicationArea = All;
    Caption = 'Company Project Account Mapping';
    SourceTable = CompanywiseProjectDetail;
    AdditionalSearchTerms = 'Company Project Account Mapping,Company, projects, companywiseproject, Company Wise Projects';

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(CompanyName;Rec.CompanyName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of company';
                }
                field(CompanyCode;Rec.CompanyCode)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code of company';
                }
                field("Account No.";Rec."Account No.")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the account number that the entry on the journal line will be posted to.';
                }
                field(ProjectName;Rec.ProjectName)
                {
                    ApplicationArea = All;
                    ToolTip = 'Please specify project name';
                }
            }
        }
    }
}

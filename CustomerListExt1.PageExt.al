pageextension 50109 CustomerListExt1 extends "General Ledger Entries"
{
    actions
    {
        addafter(ReverseTransaction)
        {
            action("Move & Reverse Test")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Monthly Intercompany';
                Image = MoveToNextPeriod;
                Promoted = true;
                PromotedCategory = Process;
                PromotedOnly = true;
                Scope = Repeater;
                ToolTip = 'Move ledger entries to respective companies and reverse original entries';

                trigger OnAction()
                var
                    GLEntries: Record "G/L Entry";
                begin
                    CurrPage.SetSelectionFilter(GLEntries);
                    REPORT.RunModal(REPORT::"Move Reverse Entries", true, true, GLEntries);
                end;
            }
        }
    }
}

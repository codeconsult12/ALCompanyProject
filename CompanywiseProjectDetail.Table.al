table 50141 CompanywiseProjectDetail
{
    Caption = 'Company Project Account Mapping';
    DataClassification = ToBeClassified;

    fields
    {
        field(1;ID;Integer)
        {
            Caption = 'ID';
            AutoIncrement = true;
        }
        field(3;CompanyName;Text[150])
        {
            Caption = 'Company Name';
            // FieldClass = FlowField;
            TableRelation = Company.Name;
        //  CalcFormula = lookup("Company Information".Name where("Primary Key" = field(CompanyId)));
        }
        field(4;"Account No.";Code[20])
        {
            Caption = 'Account No.';
            TableRelation = "G/L Account"."No.";
        }
        field(6;ProjectName;Text[100])
        {
            Caption = 'ProjectName';
            //  FieldClass = FlowField;
            TableRelation = "Dimension Value".Code WHERE("Dimension Code"=filter('PROJECT'));
            // CalcFormula = lookup( "Dimension Value".Name WHERE ("Dimension Code"=filter('VENDOR')));
            ValidateTableRelation = false;
        }
        field(7;CompanyCode;Text[100])
        {
            Caption = 'Company Code';
            TableRelation = "Dimension Value".Code WHERE("Dimension Code"=filter('COMPANY'));
        }
    }
    keys
    {
        key(PK;ID)
        {
            Clustered = false;
        }
    // key(Key1; CompanyId, ProjectId) //secondary key
    // {
    // }
    }
}

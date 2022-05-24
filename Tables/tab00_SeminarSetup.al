table 50100 "CSD Seminar Setup"
{
    Caption = 'Seminar Setup';
    DataClassification = SystemMetadata;

    fields
    {
        field(10; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = SystemMetadata;
        }
        field(20; "Seminar Nos."; Code[10])
        {
            DataClassification = SystemMetadata;
            Caption = 'Seminar Nos.';
            TableRelation = "No. Series";
        }
        field(30; "Seminar Registration Nos."; Code[10])
        {
            DataClassification = SystemMetadata;
            Caption = 'Seminar Registration Nos.';
            TableRelation="No. Series";
        }
        field(40; "Posted Seminar Reg. Nos."; Code[10])
        {
            DataClassification = SystemMetadata;
            Caption = 'Posted Seminar Reg. Nos.';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        key(Key1; "Primary Key")
        {
            Clustered = true;
        }
    }
}
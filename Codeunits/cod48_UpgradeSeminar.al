codeunit 50148 "CSD Upgrade Seminar"
{
    Subtype = Upgrade;

    trigger OnCheckPreconditionsPerCompany()
    var
        ModuleInfo: ModuleInfo;
    begin
        NavApp.GetModuleInfo('3521baae-aee7-4c25-8639-5794afe70bef', ModuleInfo);
        case format(ModuleInfo.AppVersion) of
            '14.0.0.12':
                begin

                end;

        end;
    end;

    trigger OnUpgradePerCompany()
    var
        myInt: Integer;
    begin

    end;

    trigger OnValidateUpgradePerCompany()
    var
        myInt: Integer;
    begin

    end;

    var
        myInt: Integer;
}
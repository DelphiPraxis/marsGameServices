﻿(*
  Copyright 2016, MARS-Curiosity library

  Home: https://github.com/andrea-magni/MARS
*)
program GameServicesServerApplication;

uses
  Forms,
  Server.Forms.Main in 'Server.Forms.Main.pas' {MainForm},
  Server.Resources in 'Server.Resources.pas',
  Server.Ignition in 'Server.Ignition.pas',
  Data.ORM.Scores in 'Data\Data.ORM.Scores.pas',
  Data.Module in 'Data\Data.Module.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  ReportMemoryLeaksOnShutdown := True;

  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.

program Calculadora;

uses
  Vcl.Forms,
  Unit31 in '..\Embarcadero\Studio\Projects\Unit31.pas' {UCalculadora},
  Unit32 in '..\Embarcadero\Studio\Projects\Unit32.pas' {FCalculoSalvo},
  System.SysUtils,
  Winapi.Messages,
  Vcl.Dialogs;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TUCalculadora, UCalculadora);
  try
  UCalculadora.Conn.connected := true;
  except
   if UCalculadora.Conn.connected = false then

    begin
      application.MessageBox('O banco de dados não foi encontrado em "C:\SGBR\BancoCalculadora.FDB" e as funções de Salvar e Histórico ficarão desabilitadas!','Calculadora');

      UCalculadora.Conn.connected := false;

      Ucalculadora.EdtSalvar.Enabled := false;
      Ucalculadora.Label1.Enabled := false;


   end;

end;
  Application.Run;
end.

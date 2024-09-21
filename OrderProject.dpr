program OrderProject;

uses
  Vcl.Forms,
  Main.View in 'Main.View.pas' {frmMain},
  Product.ViewModel in 'Product.ViewModel.pas',
  Product.Model in 'Product.Model.pas',
  Order.Model in 'Order.Model.pas',
  Order.ViewModel in 'Order.ViewModel.pas',
  Auxiliary.Form in 'Auxiliary.Form.pas' {frmAuxiliary};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TfrmAuxiliary, frmAuxiliary);
  Application.Run;
end.

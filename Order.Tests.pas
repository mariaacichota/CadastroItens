unit Order.Tests;

interface

uses
  DUnitX.TestFramework, FireDAC.Comp.Client, FireDAC.Stan.Def, FireDAC.Stan.Async, FireDAC.DApt, Main.View,
  System.SysUtils, Vcl.Dialogs;

type
  [TestFixture]
  TOrderTests = class
  private
    FConnection: TFDConnection;
    procedure SetupDatabaseConnection;
  public
    [Setup]
    procedure Setup;

    [TearDown]
    procedure TearDown;

    [Test]
    procedure TestCalculateTotal_ValidOrder;

    [Test]
    procedure TestCalculateTotal_OrderWithoutItems;

    [Test]
    procedure TestCalculateTotal_InvalidOrderID;
  end;

implementation

procedure TOrderTests.Setup;
begin
  SetupDatabaseConnection;
end;

procedure TOrderTests.TearDown;
begin
  FConnection.Close;
  FConnection.Free;
end;

procedure TOrderTests.SetupDatabaseConnection;
begin
  FConnection := TFDConnection.Create(nil);
  try
    FConnection.DriverName := 'MSSQL';

    FConnection.Params.Add('Pooled=False');
    FConnection.Params.Add('Database=CRUD_MinervaFoods');
    FConnection.Params.Add('Server=DESKTOP-LQTA0BU\SQLEXPRESS');
    FConnection.Params.Add('OSAuthent=Yes');
    FConnection.Params.Add('MARS=Yes');

    FConnection.Connected := True;
  except
    on E: Exception do
      ShowMessage('Error initializing FDConnection: ' + E.Message);
  end;
end;

procedure TOrderTests.TestCalculateTotal_ValidOrder;
var
  FDQuery: TFDQuery;
  Total,ExpectedTotal,Tolerance: Currency;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'DECLARE @total DECIMAL(19, 6); EXEC @total = CalculateOrderTotal @order_id = :OrderID, @total_value = @total; SELECT @Total AS Total;';
    FDQuery.ParamByName('OrderID').AsInteger := 1;
    FDQuery.Open;

    Total := FDQuery.FieldByName('Total').AsCurrency;

    ExpectedTotal := 100.50;
    Tolerance := 0.01;

    if Abs(Total - ExpectedTotal) <= Tolerance then
      Writeln('Test passed: Total is correct.')
    else
      Writeln(Format('Test failed: Expected %.2f but got %.2f', [ExpectedTotal, Total]));
  finally
    FDQuery.Free;
  end;
end;

procedure TOrderTests.TestCalculateTotal_OrderWithoutItems;
var
  FDQuery: TFDQuery;
  ExpectedTotal, Total, Tolerance: Currency;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'DECLARE @total DECIMAL(19, 6); EXEC @total = CalculateOrderTotal @order_id = :OrderID, @total_value = @total; SELECT @Total AS Total;';
    FDQuery.ParamByName('OrderID').AsInteger := 999;

    FDQuery.Open;

    Total := FDQuery.FieldByName('Total').AsCurrency;

    ExpectedTotal := 100.50;
    Tolerance := 0.01;

    if Abs(Total - ExpectedTotal) <= Tolerance then
      Writeln('Test passed: Total is correct.')
    else
      Writeln(Format('Test failed: Expected %.2f but got %.2f', [ExpectedTotal, Total]));
  finally
    FDQuery.Free;
  end;
end;

procedure TOrderTests.TestCalculateTotal_InvalidOrderID;
var
  FDQuery: TFDQuery;
begin
  FDQuery := TFDQuery.Create(nil);
  try
    FDQuery.Connection := FConnection;
    FDQuery.SQL.Text := 'DECLARE @total DECIMAL(19, 6); EXEC @total = CalculateOrderTotal @order_id = :OrderID, @total_value = @total; SELECT @Total AS Total;';
    FDQuery.ParamByName('OrderID').AsInteger := -1;

    try
      FDQuery.Open;
      Assert.Fail('An error should have occurred for an invalid OrderID.');
    except
      on E: Exception do
      begin
        Assert.IsTrue(Pos('invalid', LowerCase(E.Message)) > 0, 'Error message did not contain "invalid"');
      end;
    end;
  finally
    FDQuery.Free;
  end;
end;

initialization
  TDUnitX.RegisterTestFixture(TOrderTests);
end.

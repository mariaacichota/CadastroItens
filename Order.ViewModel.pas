unit Order.ViewModel;

interface

uses
  Order.Model, System.Classes, System.SysUtils, Data.DB, FireDAC.Comp.Client;

type
  TOrderViewModel = class
  private
    FOrder: TOrder;
    FOrderModel: TOrderModel;
    FDataSource: TDataSource;
    FConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    destructor Destroy; override;

    procedure NewOrder;
    procedure LoadOrder(OrderId: Integer);
    procedure SaveOrder(ClientId: Integer; ClientName: string; OrderDate: TDate);
    procedure DeleteOrder(OrderId: Integer);

    procedure AddOrderItem(ProductId, Quantity: Integer; UnitPrice: Double);
    procedure RemoveOrderItem(ItemId: Integer);

    function GetDataSource: TDataSource;
    function GetOrderItemsDataSource: TDataSource;
    property Order: TOrder read FOrder write FOrder;
    property OrderModel: TOrderModel read FOrderModel write FOrderModel;
  end;

implementation

constructor TOrderViewModel.Create(AConnection: TFDConnection);
begin
  FOrderModel := TOrderModel.Create(AConnection);
  FDataSource := TDataSource.Create(nil);
  FConnection := AConnection;
  FDataSource.DataSet := FOrderModel.GetOrderItemsQuery;
end;

destructor TOrderViewModel.Destroy;
begin
  FOrderModel.Free;
  FDataSource.Free;
  inherited;
end;

procedure TOrderViewModel.NewOrder;
begin
  FOrder := TOrder.Create;
end;

procedure TOrderViewModel.LoadOrder(OrderId: Integer);
begin
  FOrder := FOrderModel.LoadOrder(OrderId, FConnection);
  FDataSource.DataSet := FOrderModel.GetOrderItemsQuery;
end;

procedure TOrderViewModel.SaveOrder(ClientId: Integer; ClientName: string; OrderDate: TDate);
begin
  if Assigned(FOrder) then
  begin
    FOrder.ClientID := ClientId;
    FOrder.ClientName := ClientName;
    FOrder.OrderDate := OrderDate;
    FOrderModel.SaveOrder(FOrder, FConnection);
  end;
end;

procedure TOrderViewModel.DeleteOrder(OrderId: Integer);
begin
  FOrderModel.DeleteOrder(OrderId, FConnection);
end;

procedure TOrderViewModel.AddOrderItem(ProductId, Quantity: Integer; UnitPrice: Double);
begin
  if Assigned(FOrder) then
    FOrderModel.AddOrderItem(FOrder.OrderID, ProductId, Quantity, UnitPrice);
end;

procedure TOrderViewModel.RemoveOrderItem(ItemId: Integer);
begin
  FOrderModel.RemoveOrderItem(ItemId, FConnection);
end;

function TOrderViewModel.GetDataSource: TDataSource;
begin
  Result := FDataSource;
end;

function TOrderViewModel.GetOrderItemsDataSource: TDataSource;
begin
  Result := FDataSource;
end;

end.


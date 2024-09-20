unit Product.ViewModel;

interface

uses
  System.SysUtils, FireDAC.Comp.Client, Product.Model;

type
  TProductViewModel = class
  private
    FProduct: TProduct;
    FConnection: TFDConnection;
  public
    constructor Create(AConnection: TFDConnection);
    destructor Destroy; override;

    procedure LoadProduct(AID: Integer);
    procedure SaveProduct(const AName, ADescription: string; APrice: Double; AID: Integer);
    procedure DeleteProduct(AID: Integer);
    property Product: TProduct read FProduct;
  end;

implementation

{ TProductViewModel }

constructor TProductViewModel.Create(AConnection: TFDConnection);
begin
  FConnection := AConnection;
  FProduct := TProduct.Create;
end;

destructor TProductViewModel.Destroy;
begin
  FProduct.Free;
  inherited;
end;

procedure TProductViewModel.LoadProduct(AID: Integer);
begin
  FProduct := TProduct.LoadFromDatabase(FConnection, AID);
end;

procedure TProductViewModel.SaveProduct(const AName, ADescription: string; APrice: Double; AID: Integer);
begin
  FProduct.ID := AID;
  FProduct.Name := AName;
  FProduct.Description := ADescription;
  FProduct.Price := APrice;
  FProduct.SaveToDatabase(FConnection);
end;

procedure TProductViewModel.DeleteProduct(AID: Integer);
begin
  if Assigned(FProduct) then
    FProduct.DeleteFromDatabase(FConnection, AID);
end;

end.

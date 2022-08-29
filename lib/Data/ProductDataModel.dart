class ProductDataModel {
  int? id;
  String? deviceSeries;
  String? deviceName;
  String? purchaseDate;
  int? orderNumber;
  String? contactSeller;
  String? durationWarranty;
  int? remainDays;

  ProductDataModel(
      {this.id,
      this.deviceSeries,
      this.deviceName,
      this.purchaseDate,
      this.orderNumber,
      this.contactSeller,
      this.durationWarranty,
      this.remainDays});

  ProductDataModel.fromJSON(Map<String, dynamic> json) {
    id = json['id'];
    deviceSeries = json['serries'];
    deviceName = json['product'];
    purchaseDate = json['dateCreated'];
    orderNumber = json['userTel'];
    contactSeller = json['receiveName'];
    durationWarranty = json['errorStatus'];
    remainDays = json['status'];
  }
}

using { Currency, managed, sap } from '@sap/cds/common';
namespace basf;

entity Products {
    key productid : Integer;
        productname : localized String;
        productdesc : localized String;
        categoryid  : Association to ProductCategory ;
        price  : Decimal;
        currency : Currency;
        url      : localized String;
};

entity ProductCategory {
    key categoryid : Integer;
        name        : localized String;        
}
entity Crops {
    key cropid : Integer;
        cropname        : localized String;        
}
entity PestType {
    key pesttypeid : Integer;
        pesttypename        : localized String;        
}
entity Pests {
    key pestid : Integer;
        pestname        : localized String;        
        pesttypeid : Association to PestType;
}

entity Solution {
    key solid : Integer;
        cropid : Association to Crops;
        pestid : Association to Pests;
        productid : Association to  Products;
        dosage : localized String;
        how_to_apply : localized String;
}

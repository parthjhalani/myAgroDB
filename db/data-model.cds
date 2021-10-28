using { Currency, managed, sap } from '@sap/cds/common';
namespace basf;

type  indexing {
    indexid    : Integer;
    displayPriority : Integer;
};
entity Products : indexing {
    key productid : Integer;
        productname : localized String;
        productdesc : localized String;
        categoryid  : Association to ProductCategory ;
        price  : Decimal;
        currency : Currency;
        url      : localized String;
};

entity ProductCategory : indexing{
    key categoryid : Integer;
        name        : localized String;        
}
entity Crops : indexing{
    key cropid : Integer;
        cropname        : localized String;        
}
entity PestType : indexing{
    key pesttypeid : Integer;
        pesttypename        : localized String;        
}
entity Pests : indexing{
    key pestid : Integer;
        pestname        : localized String;        
        pesttypeid : Association to PestType;
}

entity Solution : indexing{
    key solid : Integer;
        cropid : Association to Crops;
        pestid : Association to Pests;
        productid : Association to  Products;
        dosage : localized String;
        how_to_apply : localized String;
}


entity ProductInfo as select from Solution {
        key cropid.cropid,
        key productid.productid,                
            cropid.cropname,
            productid.productname,
            productid.productdesc,
            productid.url,
            indexid
}group by cropid.cropid, productid.productid,cropid.cropname,productid.productname,indexid ;

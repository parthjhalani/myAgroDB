using basf as basf from '../db/data-model';

service DataService {
    @readonly entity Products as projection on basf.Products;
    @readonly entity ProductsCategory as projection on basf.ProductCategory;
    @readonly entity PestType as projection on basf.PestType;
    @readonly entity Pests as projection on basf.Pests;
    @readonly entity Crops as projection on basf.Crops;
    @readonly entity Solution as projection on basf.Solution;
}
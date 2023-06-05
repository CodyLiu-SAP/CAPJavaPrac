// Initial simple Service definition: define entity within the service

// service AdminService {
//     entity Products {
//         key ID : Integer;
//         title  : String(111);
//         descr  : String(1111);
//     }
// }


// Service definition: expose domain model
using { sap.capire.products as db } from '../db/schema';

service AdminService {
    entity Products   as projection on db.Products;
    entity Categories as projection on db.Categories;
}

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


//Retrieve from https://www.youtube.com/watch?v=BKujvivVFKI
//Retrieve from https://www.youtube.com/watch?v=hkiYuPBwnkQ


namespace _1430757_CO5027.Models
{
    public class LPModel
    {
        public string InsertLaptop(tblProduct product)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
                db.tblProducts.Add(product);
                db.SaveChanges();

                return product.LP_name + "-Succesfully Add";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateLaptop(int id, tblProduct product)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();

                //get the table from db
                tblProduct pro = db.tblProducts.Find(id);

                pro.Type_ID = product.Type_ID;
                pro.LP_name = product.LP_name;
                pro.LP_price = product.LP_price;
                pro.LP_desc = product.LP_desc;
                pro.LP_image = product.LP_image;

                db.SaveChanges();
                return product.LP_name + "-Succesfully updated";

            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteLaptop(int id)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
                tblProduct product = db.tblProducts.Find(id);

                db.tblProducts.Attach(product);
                db.tblProducts.Remove(product);
                db.SaveChanges();

                return product.LP_name + "-Succesfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
        public tblProduct GetProduct(int ID)
        {
            try
            {
                using (db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities())
                {
                    tblProduct product = db.tblProducts.Find(ID);
                    return product;
                }
            }
            catch (Exception)
            {
                return null;
            }
        }

        public List<tblProduct> GetAllProducts()
        {
            try
            {
                using (db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities())
                {
                    List<tblProduct> products = (from x in db.tblProducts
                                              select x).ToList();
                    return products;
                }
            }
            catch (Exception)
            {

                return null;
            }
        }

        public List<tblProduct> GetProductsByType(int type_ID)
        {
            try
            {
                using (db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities())
                {
                    List<tblProduct> products = (from x in db.tblProducts
                                              where x.Type_ID == type_ID
                                              select x).ToList();
                    return products;
                }
            }
            catch (Exception)
            {

                return null;
            }
        }
    }
}
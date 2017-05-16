using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

//Retrieve from https://www.youtube.com/watch?v=BKujvivVFKI

namespace _1430757_CO5027.Models
{
    public class LPTypeModel
    {
        public string InsertLaptopType(tblLaptop product)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
                db.tblLaptops.Add(product);
                db.SaveChanges();

                return product.LP_name + "-Succesfully Add";    
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdateLaptopType(int id, tblLaptop product)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();

                //get the table from db
                tblLaptop pro = db.tblLaptops.Find(id);
                pro.LP_name = product.LP_name;

                db.SaveChanges();
                return product.LP_name + "-Succesfully updated";

            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeleteLaptopType(int id)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
                tblLaptop product = db.tblLaptops.Find(id);

                db.tblLaptops.Attach(product);
                db.tblLaptops.Remove(product);
                db.SaveChanges();

                return product.LP_name + "-Succesfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
    }

}
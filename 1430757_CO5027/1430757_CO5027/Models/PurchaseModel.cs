using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace _1430757_CO5027.Models
{
    public class PurchaseModel
    {
        public string InsertPurchase(tblPurchase product)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
                db.tblPurchases.Add(product);
                db.SaveChanges();

                return product.LP_date + "-Succesfully Add";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string UpdatePurchase(int id, tblPurchase product)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();

                //Fetch object from db
                tblPurchase pro = db.tblPurchases.Find(id);

                pro.cust_ID = product.cust_ID;
                pro.LP_ID = product.LP_ID;
                pro.LP_price = product.LP_price;
                pro.LP_date = product.LP_date;
                pro.in_Cart = product.in_Cart;

                db.SaveChanges();
                return product.LP_date + "-Succesfully updated";

            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }

        public string DeletePurchase(int id)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
                tblPurchase product = db.tblPurchases.Find(id);

                db.tblPurchases.Attach(product);
                db.tblPurchases.Remove(product);
                db.SaveChanges();

                return product.LP_date + "-Succesfully deleted";
            }
            catch (Exception e)
            {
                return "Error:" + e;
            }
        }
        public List<tblPurchase> GetOrdersInCart(string custID)
        {
            db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
            List<tblPurchase> orders = (from x in db.tblPurchases
                                 where x.cust_ID == custID
                                 && x.in_Cart
                                 orderby x.LP_date descending
                                 select x).ToList();
            return orders;
        }

        public int GAOrder(string custID)
        {
            try
            {
                db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
                int amount = (from x in db.tblPurchases
                              where x.cust_ID == custID
                              && x.in_Cart
                              select x.LP_price).Sum();

                return amount;
            }
            catch
            {
                return 0;
            }
        }

        public void UpdateQ(int id, int quantity)
        {
            db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();
            tblPurchase p = db.tblPurchases.Find(id);
            p.LP_price = quantity;

            db.SaveChanges();
        }

        public void MOAPaid(List<tblPurchase> carts)
        {
            db_1430757_co5027_naftechEntities db = new db_1430757_co5027_naftechEntities();

            if (carts != null)
            {
                foreach (tblPurchase cart in carts)
                {
                    tblPurchase oldCart = db.tblPurchases.Find(cart.ID);
                    oldCart.LP_date = DateTime.Now;
                    oldCart.in_Cart = false;
                }
                db.SaveChanges();
            }
        }
    }

}

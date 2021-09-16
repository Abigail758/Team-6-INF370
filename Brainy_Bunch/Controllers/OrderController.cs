using Brainy_Bunch.Models;
using System;
using System.Collections.Generic;
using System.Dynamic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace Brainy_Bunch.Controllers
{
    [RoutePrefix("api/Order")]
    public class OrderController : ApiController
    {

        Gabriq_System_DatabaseEntities db = new Gabriq_System_DatabaseEntities();


        //Category list
        [HttpGet]
        [Route("getInventory")]
        public IQueryable<Inventory> getInventory()
        {
            db.Configuration.ProxyCreationEnabled = false;
            try
            {
                return db.Inventories;
            }
            catch (Exception)
            {
                dynamic error = new ExpandoObject();
                error.Message = "Something went wrong !";
                return error;
            }

        }

        //Add Category
        [HttpPost]
        [Route("insertOrderDetails")]
        public dynamic insertOrderDetails(Supplier_Order data)
        {

            db.Configuration.ProxyCreationEnabled = false;

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            try
            {
                data.Date = DateTime.Now;
                db.Supplier_Order.Add(data);
                db.SaveChanges();
                return Ok();
            }
            catch (Exception e)
            {
                dynamic error = new ExpandoObject();
                error.Message = "Something went wrong !";
                return error;
            }


        }
        //Update Category
        [HttpPut]
        [Route("updateOrderDetails")]
        public IHttpActionResult updateOrderDetails(Supplier_Order data)
        {

            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {


                Supplier_Order inventory = new Supplier_Order();
                inventory = db.Supplier_Order.Find(data.Supplier_Order_ID);
                if (inventory != null)
                {
 
                }
                db.SaveChanges();

            }
            catch (Exception)
            {
                dynamic User = new ExpandoObject();
                User.Message = "Something went wrong !";
                return User;
            }
            return Ok();
        }
    }


    }

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

    [RoutePrefix("api/Inventory")]
    public class InventoryController : ApiController
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

        //Category details
        [HttpGet]
        [Route("getInventoryDetailsById/{ID}")]
        public IHttpActionResult getInventoryDetailsById(string ID)
        {

            db.Configuration.ProxyCreationEnabled = false;

            Inventory inventory = new Inventory();
            int inventoryID = Convert.ToInt32(ID);
            try
            {
                inventory = db.Inventories.Find(inventoryID);
                if (inventory == null)
                {
                    return NotFound();
                }

            }
            catch (Exception)
            {
                dynamic error = new ExpandoObject();
                error.Message = "Something went wrong !";
                return error;
            }

            return Ok(inventory);
        }

        //Add Category
        [HttpPost]
        [Route("insertInventoryDetails")]
        public dynamic insertInventoryDetails(Inventory data)
        {

            db.Configuration.ProxyCreationEnabled = false;

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            try
            {
               if(data.Inventory_Description == null)
                {
                    data.Inventory_Description = "";
                  
                }
                db.Inventories.Add(data);
                db.SaveChanges();
            }
            catch (Exception e)
            {
                dynamic error = new ExpandoObject();
                error.Message = "Something went wrong !";
                return error;
            }



            return Ok();
        }

        //Update Category
        [HttpPut]
        [Route("updateInventoryDetails")]
        public IHttpActionResult updateInventoryDetails(Inventory data)
        {

            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {

                if(data.Inventory_Description == null)
                {
                    data.Inventory_Description = "";
                }

                Inventory inventory = new Inventory();
                inventory = db.Inventories.Find(data.Inventory_ID);
                if (inventory != null)
                {
                    inventory.Inventory_Name = data.Inventory_Name;
                    inventory.Inventory_Description = data.Inventory_Description;
                    inventory.Category_ID = data.Category_ID;
                }
                this.db.SaveChanges();

            }
            catch (Exception)
            {
                dynamic User = new ExpandoObject();
                User.Message = "Something went wrong !";
                return User;
            }
            return Ok();
        }

        //Update Category
        [HttpPut]
        [Route("updateStock")]
        public IHttpActionResult updateStock(Inventory_On_Hand data)
        {

            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {

                Inventory_On_Hand inventory = new Inventory_On_Hand();
                inventory = db.Inventory_On_Hand.Find(data.Inventory_ID);
                if (inventory != null)
                {
                    inventory.Quantity = data.Quantity;
                    db.SaveChanges();

                }
                else
                {
                    db.Inventory_On_Hand.Add(data);
                   db.SaveChanges();
                }
               

            }
            catch (Exception e)
            {
                dynamic User = new ExpandoObject();
                User.Message = "Something went wrong !";
            }
            return Ok();
        }


        //Delete Category
        [HttpDelete]
        [Route("deleteInventoryDetails")]
        public IHttpActionResult deleteInventoryDetails(int id)
        {
            db.Configuration.ProxyCreationEnabled = false;

            Inventory inventory = db.Inventories.Find(id);
            if (inventory == null)
            {
                return NotFound();
            }

            db.Inventories.Remove(inventory);
            db.SaveChanges();

            return Ok();
        }


    }
}

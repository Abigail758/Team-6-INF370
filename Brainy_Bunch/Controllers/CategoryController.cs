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

    [RoutePrefix("api/Category")]

    public class CategoryController : ApiController
    {
        Gabriq_System_DatabaseEntities db = new Gabriq_System_DatabaseEntities();

        //Category list
        [HttpGet]
        [Route("getCategories")]
        public IQueryable<Category> getCategories()
        {
            db.Configuration.ProxyCreationEnabled = false;
            try
            {
                return db.Categories;
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
        [Route("getCategoryDetailsById/{ID}")]
        public IHttpActionResult getCategoryDetailsById(string ID)
        {

            db.Configuration.ProxyCreationEnabled = false;

            Category category = new Category();
            int categoryID = Convert.ToInt32(ID);
            try
            {
                category = db.Categories.Find(categoryID);
                if (category == null)
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

            return Ok(category);
        }

        //Add Category
        [HttpPost]
        [Route("insertCategoryDetails")]
        public dynamic insertCategoryDetails(Category data)
        {

            db.Configuration.ProxyCreationEnabled = false;

            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }
            try
            {
                db.Categories.Add(data);
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
        [Route("updateCategoryDetails")]
        public IHttpActionResult updateCategoryDetails(Category data)
        {

            db.Configuration.ProxyCreationEnabled = false;
            if (!ModelState.IsValid)
            {
                return BadRequest(ModelState);
            }

            try
            {
                Category category = new Category();
                category = db.Categories.Find(data.Category_ID);
                if (category != null)
                {
                    category.Category_Name = data.Category_Name;
                    category.Category_Description = data.Category_Description;
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


        //Delete Category
        [HttpDelete]
        [Route("deleteCategoryDetails")]
        public IHttpActionResult deleteCategoryDetails(int id)
        {
            db.Configuration.ProxyCreationEnabled = false;

            Category category = db.Categories.Find(id);
            if (category == null)
            {
                return NotFound();
            }

            db.Categories.Remove(category);
            db.SaveChanges();

            return Ok();
        }


    }
}

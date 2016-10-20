using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using COMP229_F2016_MidTerm_300883146.Models;
using System.Web.ModelBinding;

namespace COMP229_F2016_MidTerm_300883146
{
    public partial class TodoList : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                getList();

            }
        }
        //Get the list from table
        protected void getList() {

            using (TodoContext db = new TodoContext())
            {
                var item = (from s in db.Todos
                            select s).ToList();
                TodoGridView.DataSource = item;
                TodoGridView.DataBind();
            }
        }
        //Delete the relative data
        protected void TodoGridView_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int selectedRow = e.RowIndex;
            int Todoid = Convert.ToInt32(TodoGridView.DataKeys[selectedRow].Values["TodoID"]);
            using (TodoContext db = new TodoContext())
            {
                Todo newObject = (from s in db.Todos
                                  where s.TodoID == Todoid
                                  select s).FirstOrDefault();
                db.Todos.Remove(newObject);
                db.SaveChanges();
                Response.Redirect("TodoList.aspx");
            }
        }

        protected void AdddataButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TodoDetails.aspx");
        }
    }
}
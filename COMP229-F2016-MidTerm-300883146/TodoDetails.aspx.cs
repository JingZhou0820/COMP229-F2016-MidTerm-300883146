using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.ModelBinding;
using COMP229_F2016_MidTerm_300883146.Models;
namespace COMP229_F2016_MidTerm_300883146
{
    public partial class TodoDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack&&(Request.QueryString.Count>0))
            {
                this.getList();
            }
        }
        //output list
        protected void getList() {
            int todoid = Convert.ToInt32(Request.QueryString["TodoID"]);
            using (TodoContext db = new TodoContext())
            {
                Todo updateTodo = (from s in db.Todos
                                   where s.TodoID == todoid
                                   select s).FirstOrDefault();
                if (updateTodo!=null)
                {
                    DescriptionTextBox.Text = updateTodo.TodoDescription;
                    TodoNodeTextBox.Text = updateTodo.TodoNotes;
                }
            }

        }
        // Return back to previous page
        protected void CancelButton_Click(object sender, EventArgs e)
        {
            Response.Redirect("TodoList.aspx");
        }
        //connect entityframwork and update data
        protected void SaveButton_Click(object sender, EventArgs e)
        {
            using (TodoContext db = new TodoContext())
            {
                Todo newTodo = new Todo();
                //put flag to see if have id
                int todoId = 0;
                if (Request.QueryString.Count>0)
                {
                   todoId = Convert.ToInt32(Request.QueryString["TodoID"]);
                    newTodo = (from s in db.Todos
                               where s.TodoID ==todoId
                               select s).FirstOrDefault();
                }
                //assign data to object
                newTodo.TodoDescription = DescriptionTextBox.Text;
                newTodo.TodoNotes = TodoNodeTextBox.Text;
                if (todoId==0)
                {
                    db.Todos.Add(newTodo);
                }
                db.SaveChanges();
                Response.Redirect("TodoList.aspx");
            }
        }
    }
}
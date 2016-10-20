using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;
using Microsoft.Owin.Security;

namespace COMP229_F2016_MidTerm_300883146
{
    public partial class Registor : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegistorButton_Click(object sender, EventArgs e)
        {//add userstor and user manager
            var userStore = new UserStore<IdentityUser>();
            var userManager = new UserManager<IdentityUser>(userStore);
            // create new user object
            var user = new IdentityUser() {
                UserName = userNameTextBox.Text,
                Email = emailTextBox.Text
            };
            //user store in the database
            IdentityResult result = userManager.Create(user, passwordTextBox.Text);
            if (result.Succeeded)
            {
                var authenticationManager = HttpContext.Current.GetOwinContext().Authentication;
                var userIdentity = userManager.CreateIdentity(user, DefaultAuthenticationTypes.ApplicationCookie);
                authenticationManager.SignIn(new AuthenticationProperties() { }, userIdentity);
                Response.Redirect("TodoList.aspx");
            }
            else
            {
                //output erro message
                erroLabel.Text = result.Errors.FirstOrDefault();
            }
        }
    }
}
﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace COMP229_F2016_MidTerm_300883146
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SetActivePage();
            //change the look for the people who are not login
            if (!IsPostBack)
            {
                if (HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    publicPlaceHolder.Visible = false;
                    LoginPlaceHolder.Visible = true;

                }
                else
                {
                    publicPlaceHolder.Visible = true;
                    LoginPlaceHolder.Visible = false;
                }

            }
        }

        /**
        * This method adds a css class of "active" to list items
        * relating to the current page
        * 
        * @private
        * @method SetActivePage
        * @return {void}
        */
        private void SetActivePage()
        {
            switch (Page.Title)
            {
                case "Home Page":
                    home.Attributes.Add("class", "active");
                    break;
                case "Todo List":
                    todo.Attributes.Add("class", "active");
                    break;
            }
        }
    }
}
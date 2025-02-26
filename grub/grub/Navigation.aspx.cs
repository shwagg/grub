﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRUB._1
{
    public partial class GRUB_1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnLeft_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Swiped Left!');</script>");
        }

        protected void btnRight_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Swiped Right!');</script>");
        }
        protected void btnBookmark_Click(object sender, EventArgs e)
        {
            Response.Redirect("Bookmark.aspx");
        }

        protected void btnCart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }
    }
}
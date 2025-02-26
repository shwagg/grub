using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GRUB._1
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
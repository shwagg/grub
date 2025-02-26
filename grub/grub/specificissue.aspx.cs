using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grub
{
	public partial class specificissue : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void SkipToConfirmation(object sender, EventArgs e)
		{
            Response.Redirect("confirmissue.aspx");
        }

		protected void ContinueToConfirmation(object sender, EventArgs e)
		{
            Response.Redirect("confirmissue.aspx");
        }

		protected void CancelProcess(object sender, EventArgs e)
		{
            //Response.Redirect(""); --> homepage address
        }
	}
}
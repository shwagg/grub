using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grub
{
	public partial class customersupport : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{
			if (!IsPostBack)
			{
				ticketNumber.Text = "Your Ticket Number: " + GenerateTicketNumber();
			}
		}

		protected void ContinueToDetails(object sender, EventArgs e)
		{
			Session["Selected Issue"] = issueDropdown.SelectedValue;
			Response.Redirect("specificissue.aspx");

		}

		protected void CancelProcess(object sender, EventArgs e)
		{
			//Response.Redirect(""); --> address ng homepage

        }

		private string GenerateTicketNumber()
		{
			return "Report-" + new Random().Next(1000, 9999);
		}
	}
}
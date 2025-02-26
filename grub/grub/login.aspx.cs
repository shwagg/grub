using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grub
{
	public partial class login : Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}

		protected void loginValidation(object sender, EventArgs e)
		{
			string usernameInput = usernametxt.Text;
			string passwordInput = passwordtxt.Text;

			if(AccountValidation(usernameInput, passwordInput))
			{
				//Response.Redirect(""); ******** send address ng homepage
			}
			else
			{
				Response.Write("<script>alert('Invalid username or password!');</script>");
			}
		}

		private bool AccountValidation(string usernameInput, string passwordInput)
		{
			if (usernameInput == "" && passwordInput == "")
			{
                return false;
            }
			return true;
		}
	}
}
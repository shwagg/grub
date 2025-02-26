using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace grub
{
	public partial class createaccount : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

		}
        protected void signupValidation(object sender, EventArgs e)
        {
            string nameInput = fullnametxt.Text;
            string usernameInput = usernametxt.Text;
            string passwordInput = passwordtxt.Text;


            if (AccountValidation(nameInput, usernameInput, passwordInput))
            {
                //Response.Redirect(""); ******** send address ng homepage
            }
            else
            {
                Response.Write("<script>alert('Invalid username or password!');</script>");
            }
        }

        private bool AccountValidation(string nameInput, string usernameInput, string passwordInput)
        {
            if (nameInput == "" && usernameInput == "" && passwordInput == "")
            {
                return false;
            }
            return true;
        }
    }
}
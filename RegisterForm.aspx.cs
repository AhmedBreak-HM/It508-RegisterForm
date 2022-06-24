using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using WebFormApp.Models;

namespace WebFormApp
{
    public partial class RegisterForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Page_Init(object sender, EventArgs e)
        {
            // first trigger in page

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            try
            {
                User user = new User()
                {
                    FirstName = txtFirstName.Text,
                    LastName = txtLastName.Text,
                    UserName = txtUserName.Text,
                    Password = txtPassword.Text,
                    ConfirmPassword = txtConfirmPassword.Text,
                    Gender = RadioButtonListGender.Text,
                    Address = TextAddress.InnerText,
                    Email = txtEmail.Text
                };
                lbResult.InnerText = "Successfully Created";

            }
            catch (Exception ex)
            {
                lbResult.InnerText = "Error" + ex.Message;
            }
        }
    }
}
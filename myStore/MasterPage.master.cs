using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {

        //Login Login1 = (Login)LoginView1.FindControl("Login1");
       // Login1.LoginError += Login1_LoginError;
    }

    private void Login1_LoginError(object sender, EventArgs e)
    {
       Login Login1 = (Login)LoginView1.FindControl("Login1");
        //HtmlGenericControl lo = (HtmlGenericControl)LoginView1.FindControl("loginDivHolder");

       // HtmlGenericControl div = (HtmlGenericControl)Login1.Parent;
       //lo.Attributes.Add("style", "display:block");
        //Control div = LoginView1.FindControl("loginDiv");
        //div.Visible = true;



    }


    /*  protected void CreateUserWizard1_CreatedUser(object sender, EventArgs e)
      {
          CreateUserWizard CreateUserWizard1 = (CreateUserWizard) LoginView1.FindControl("CreateUserWizard1");
          Membership.CreateUser(CreateUserWizard1.UserName, CreateUserWizard1.Password, CreateUserWizard1.Email);
          //MembershipUser user = Membership.GetUser(CreateUserWizard1.UserName);

          SqlDataSource createUserDataSource = (SqlDataSource) LoginView1.FindControl("createUserDataSource");
          createUserDataSource.InsertParameters.Add("username", CreateUserWizard1.UserName);
          createUserDataSource.InsertParameters.Add("password", CreateUserWizard1.Password);
          createUserDataSource.InsertParameters.Add("email", CreateUserWizard1.Email);
          //createUserDataSource.Insert();
      }
  */
}

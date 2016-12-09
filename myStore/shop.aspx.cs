using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class shop : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
    }

    protected void linkBtn_Click(object sender, EventArgs e)
    {
        LinkButton btn = (LinkButton)sender;
        Response.Redirect("product.aspx?xax=" + btn.CommandArgument);
    }

    protected void detailsBtn_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        


        //popupDataSource.SelectParameters.Add("Id", DbType.Int32, btn.CommandArgument);
    //popupDataSource.SelectParameters["id"].DefaultValue = btn.CommandArgument;
        Response.Redirect("product.aspx?xax=" + btn.CommandArgument);
        //DataView view = 
        //SqlDataSource d = (SqlDataSource)

  // popupDataSource.Select(new DataSourceSelectArguments());
        //popupDataSource = d;
       // popupDataSource.DataBind();
        //popupDataList.DataSource = d;
        //System.Diagnostics.Debug.WriteLine(d.SelectCommand);
     //popupDataList.DataBind();   
    // popupDataList.Visible = true;
    }

    protected void closePopup()
    {
       
    }
}
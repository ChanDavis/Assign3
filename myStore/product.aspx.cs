using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class product : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.UnobtrusiveValidationMode = System.Web.UI.UnobtrusiveValidationMode.None;
        string id = Request.QueryString["xax"];
        popupDataSource.SelectParameters["id"].DefaultValue = id;
        popupDataSource.Select(new DataSourceSelectArguments());
       // DataList popupDataList = (DataList)LoginView1.FindControl("popupDataList");
       
        popupDataList.DataBind();
    }
}
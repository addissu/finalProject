using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class generalInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DonateButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("DonationPage.aspx");
    }

    protected void GrantButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("ApplyForGrant.aspx");
    }
}
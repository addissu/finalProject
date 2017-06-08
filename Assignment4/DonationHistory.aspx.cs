using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonationHistory : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Community_AssistEntities db = new Community_AssistEntities();
        var donat=(from a in db.Donations
                  select a).ToList();
        GridView1.DataSource = donat;
        GridView1.DataBind();
    }
}
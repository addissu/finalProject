using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DonationPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] != null)
        {
            Community_AssistEntities db = new Community_AssistEntities();
            int key = (int)Session["userKey"];
            var don = (from d in db.Donations
                       where d.PersonKey == key
                       select d).ToList();
            GridView1.DataSource = don;
            GridView1.DataBind();
        }
        else
        {
            Response.Redirect("Default2.aspx");
        }
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
        Community_AssistEntities db = new Community_AssistEntities();
        Donation d = new Donation();
        d.DonationAmount = decimal.Parse(DonationTextBox.Text);
        d.DonationDate = DateTime.Now;
        d.PersonKey=(int)Session["userKey"];
        db.Donations.Add(d);
        db.SaveChanges();
    }
}
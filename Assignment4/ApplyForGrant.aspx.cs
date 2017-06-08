using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ApplyForGrant : System.Web.UI.Page
{
    //Community_AssistEntities ca = new Community_AssistEntities()
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userKey"] == null)
        {
            Response.Redirect("Default2.aspx");
        }
    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {

        string date = DateTextBox.Text;
        string Amount = AmountTextBox.Text;
        string explains = ExplainTextBox.Text;

        Community_AssistEntities apply = new Community_AssistEntities();
        GrantRequest grant = new GrantRequest();
        

        //CommunityAssistReference.CommunityServiceClient ca = new CommunityAssistReference.CommunityServiceClient();

       // CommunityAssistReference.GrantRequest apply = new CommunityAssistReference.GrantRequest();

        grant.GrantRequestDate = DateTime.Parse(date);
        grant.GrantRequestAmount = decimal.Parse(Amount);
        grant.GrantRequestExplanation = explains;

        grant.PersonKey = (int)Session["userKey"];

        apply.GrantRequests.Add(grant);
        apply.SaveChanges();

       // if (Session["userkey"] == null)
      //  Response.Redirect("grantHistory.aspx");

       
        
          Response.Redirect("grantHistory.aspx");

      
        

       
    }
   
}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class grantHistory : System.Web.UI.Page
{
    Community_AssistEntities melat = new Community_AssistEntities();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["userkey"] == null)
            Response.Redirect("Default2.aspx");
        FillGrid();
        //GetGrants();

    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        //int key = (int)Session["userkey"];
        //var del = from g in melat.GrantRequests where g.PersonKey == key select g;

        //List<GrantRequest> ss = new List<GrantRequest>();

        //foreach(var gr in del)
        //{
        //    GrantRequest gs = new GrantRequest();
        //    gs.GrantRequestAmount = gr.GrantRequestAmount;
        //    gs.GrantRequestDate = gr.GrantRequestDate;
        //    gs.GrantRequestExplanation = gr.GrantRequestExplanation;
        //    gs.GrantRequestKey = gr.GrantRequestKey;
        //    gs.GrantReviews = gr.GrantReviews;
        //    gs.GrantType = gr.GrantType;
        //    gs.GrantTypeKey = gr.GrantTypeKey;
            
        //    ss.Add(gs); 
        //}


        //GridView1.DataSource = ss;
        //GridView1.DataBind();
        

    }
    protected void FillGrid()
    {
        int key = (int)Session["userkey"];
        var del = from g in melat.GrantRequests where g.PersonKey == key select g;

        List<GrantRequest> ss = new List<GrantRequest>();

        foreach (var gr in del)
        {
            GrantRequest gs = new GrantRequest();
            gs.GrantRequestAmount = gr.GrantRequestAmount;
            gs.GrantRequestDate = gr.GrantRequestDate;
            gs.GrantRequestExplanation = gr.GrantRequestExplanation;
            gs.GrantRequestKey = gr.GrantRequestKey;
            gs.GrantReviews = gr.GrantReviews;
            gs.GrantType = gr.GrantType;
            gs.GrantTypeKey = gr.GrantTypeKey;

            ss.Add(gs);
        }


        GridView1.DataSource = ss;
        GridView1.DataBind();

    }
}
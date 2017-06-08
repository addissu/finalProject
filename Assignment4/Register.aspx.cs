using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SubmitButton_Click(object sender, EventArgs e)
    {
       
        string first = FirstNameTextBox.Text;
        string last = LastNameTextBox.Text;
        string email = EmailTextBox.Text;
        string password = ConfirmPasswordTextBox.Text;
        string apartment = ApartmentNumberTextBox.Text;
        string street = StreetNameTextBox.Text;
        string city = CityTextBox.Text;
        string state = StateTextBox.Text;
        string zip = ZipcodeTextBox.Text;
        string home = HomePhoneTextBox.Text;
        string work = WorkPhoneTextBox.Text;

        Community_AssistEntities db = new Community_AssistEntities();
        int result = db.usp_Register( first, last, email, password, apartment, street, city, state, zip, home, work);
        if (result != -1)
        {
            Response.Redirect("Default2.aspx");
        }
        else
        {
            ErrorLabel.Text = "Try again";
        }
    }
}
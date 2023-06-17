using BlasterifyAdmin.SubscriptionServices;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlasterifyAdmin
{
    public partial class CreateSubscription : System.Web.UI.Page
    {
        SubscriptionServicesSoapClient conecction = new SubscriptionServicesSoapClient("SubscriptionServicesSoap");
        protected void Page_Load(object sender, EventArgs e)
        {
            ResultLabel.Visible = ResultLabel2.Visible = false;
        }

        protected void CreateBtn_Click(object sender, EventArgs e)
        {
            //CResult.Text = "Result: ";
            bool result = false;
            
            try
            {
                result = conecction.Create(NameTextBox.Text, double.Parse(PriceTextBox.Text), FeaturesTextBox.Text);
                NameTextBox.Text = PriceTextBox.Text = FeaturesTextBox.Text = string.Empty;
                ResultLabel.Visible = true;

                //Response.Redirect("~/Subscriptions.aspx");
            }
            catch (Exception ex) {
                ResultLabel2.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }
        }
    }
}
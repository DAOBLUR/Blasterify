using BlasterifyAdmin.SubscriptionServices;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlasterifyAdmin.Forms.Subscription {
    public partial class UpdateSubscription : System.Web.UI.Page {
        Subscription_ServicesSoapClient conecction = new Subscription_ServicesSoapClient();
        private static int Id { get; set; } = 0;

        private Models.Subscription Get(int id)
        {
            var result = string.Empty;
            try
            {
                result = conecction.Get(id);
            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }

            if (!string.IsNullOrEmpty(result)) {
                return JsonConvert.DeserializeObject<Models.Subscription>(result);
            }
            else
            {
                return null;
            }
        }

        protected void Page_Load(object sender, EventArgs e) {
            ResultLabel.Visible = ResultLabel2.Visible = false;
            if (!Page.IsPostBack) {
                if (Request.QueryString["Id"] != null) {
                    Id = int.Parse(Request.QueryString["Id"]);
                    var subscription = Get(Id);                 
                    NameTextBox.Text = subscription.Name;
                    PriceTextBox.Text = $"{subscription.Price}";
                    FeaturesTextBox.Text = subscription.Features;
                }
            }
            
        }

        protected void UpdateBtn_Click(object sender, EventArgs e) {
            bool result = false;

            try {
                conecction.Update(Id, NameTextBox.Text, double.Parse(PriceTextBox.Text), FeaturesTextBox.Text);
                NameTextBox.Text = PriceTextBox.Text = FeaturesTextBox.Text = string.Empty;
                ResultLabel.Visible = true;
            }
            catch (Exception ex) {
                ResultLabel2.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }
        }
    }
}
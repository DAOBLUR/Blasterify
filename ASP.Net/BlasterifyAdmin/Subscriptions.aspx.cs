using System;
using System.Collections.Generic;
using BlasterifyAdmin.SubscriptionServices;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BlasterifyAdmin.Models;
using Microsoft.Ajax.Utilities;
using Newtonsoft.Json;

namespace BlasterifyAdmin {
    public partial class Subscriptions : System.Web.UI.Page {
        Subscription_ServicesSoapClient conecction = new Subscription_ServicesSoapClient();

        private List<Subscription> GetAll() {
            var result = string.Empty;
            try {
                result = conecction.GetAll();
            }
            catch (Exception ex){
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }

            if (!string.IsNullOrEmpty(result)) {
                var subscriptions = JsonConvert.DeserializeObject<SubscriptionsTable>(result);
                return subscriptions.Table;
                
            }
            else {
                return null;
            }
        }

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsPostBack) {
                SubscriptionsGridView.DataSource = GetAll();
                SubscriptionsGridView.DataBind();
            }
        }

        protected void GridView_RowCommand(object sender, GridViewCommandEventArgs e) {
            if (e.CommandName == "Select") {
                int index = Convert.ToInt32(e.CommandArgument);
                //GridViewRow deletedRow = SubscriptionsGridView.Rows[index];
            }
            else if (e.CommandName == "Update") {
                int index = Convert.ToInt32(e.CommandArgument);
            }
            else if (e.CommandName == "Delete") {
                int index = Convert.ToInt32(e.CommandArgument);
                
            }
        }

        protected void CreateBtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CreateSubscription.aspx");
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
        }

        private bool Delete(int id) {
            var result = false;
            try {
                result = conecction.Delete(id);
            }
            catch (Exception ex) {
                result = false;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }

            return result;
        }
    }
}
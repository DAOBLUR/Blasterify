using System;
using System.Collections.Generic;
using BlasterifyAdmin.SubscriptionServices;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BlasterifyAdmin {
    public partial class Subscriptions : System.Web.UI.Page {
        Subscription_ServicesSoapClient conecction = new Subscription_ServicesSoapClient();

        protected void Page_Load(object sender, EventArgs e) {  }

        protected void CreateBtn_Click(object sender, EventArgs e) {
            CResult.Text = "Result: ";
            try {
                conecction.Create(CNameTextBox.Text,double.Parse(CPriceTextBox.Text),CFeaturesTextBox.Text);
                CNameTextBox.Text = CPriceTextBox.Text = CFeaturesTextBox.Text = string.Empty;
                CResult.Text += "Create!";
                CResult.ForeColor = Color.Green;
                CResult.Visible = true;
            }
            catch (Exception ex) {
                CResult.Text += "Error!";
                CResult.ForeColor = Color.Red;
                CResult.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }
        }

        protected void UpdateBtn_Click(object sender, EventArgs e) {
            UResult.Text = "Result: ";
            try {
                conecction.Update(int.Parse(UIdTextBox.Text),UNameTextBox.Text,double.Parse(UPriceTextBox.Text),UFeaturesTextBox.Text);
                UIdTextBox.Text = UNameTextBox.Text = UPriceTextBox.Text = UFeaturesTextBox.Text = string.Empty;
                UResult.Text += "Update!";
                UResult.ForeColor = Color.Green;
                UResult.Visible = true;
            }
            catch (Exception ex) {
                UResult.Text += "Error!";
                UResult.ForeColor = Color.Red;
                UResult.Visible = true;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }
        }

        protected void DeleteBtn_Click(object sender, EventArgs e) {
            DResult.Text = "Result: ";
            var result = false;
            try {
                result = conecction.Delete(int.Parse(DIdTextBox.Text));
            }
            catch (Exception ex) {
                result = false;
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }

            if (result) {
                DResult.Text = DIdTextBox.Text = string.Empty;
                DResult.Text += "Delete!";
                DResult.ForeColor = Color.Green;
                DResult.Visible = true;
            }
            else {
                DResult.Text += "Error!";
                DResult.ForeColor = Color.Red;
                DResult.Visible = true;
            }
        }

        protected void GetBtn_Click(object sender, EventArgs e) {
            GResult.Text = "Result: ";
            var result = string.Empty;
            try {
                result = conecction.Get(int.Parse(GIdTextBox.Text));
            }
            catch (Exception ex) {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }

            if (!string.IsNullOrEmpty(result)) {
                GIdTextBox.Text = string.Empty;
                GResult.Text += result;
                GResult.ForeColor = Color.Green;
                GResult.Visible = true;
            }
            else {
                GResult.Text += "No data found";
                GResult.ForeColor = Color.Red;
                GResult.Visible = true;
            }
        }

        protected void GetAllBtn_Click(object sender, EventArgs e) {
            GAResult.Text = "Result: ";
            var result = string.Empty;
            try {
                result = conecction.GetAll();
            }
            catch (Exception ex) {
                ClientScript.RegisterStartupScript(this.GetType(), "myalert", $"alert ({ex.Message});", true);
            }

            if (!string.IsNullOrEmpty(result)) {
                GAResult.Text += result;
                GAResult.ForeColor = Color.Green;
                GAResult.Visible = true;
            }
            else {
                GAResult.Text += "No data found";
                GAResult.ForeColor = Color.Red;
                GAResult.Visible = true;
            }
        }
    }
}
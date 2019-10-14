using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Prog2
{
   public partial class OrderingProduct : System.Web.UI.Page
   {
      private const double TAX = 0.055;
      protected void Page_Load(object sender, EventArgs e)
      {
         ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
      }

      protected void btnCompute_Click(object sender, EventArgs e)
      {
         txtID.ReadOnly = true;
         txtPrice.ReadOnly = true;
         txtQuantity.ReadOnly = true;
         double price = Double.Parse(txtPrice.Text.Trim());
         int quantity = int.Parse(txtQuantity.Text.Trim());
         double subtotal = price * quantity;
         double tax = subtotal * TAX;
         double grand = subtotal + tax;
         txtSubTotal.Text = subtotal.ToString("C2");
         txtTax.Text = tax.ToString("C2");
         txtGrandTotal.Text = grand.ToString("C2");
         btnCompute.Enabled = false;
         btnReset.Focus();
      }

      protected void btnReset_Click(object sender, EventArgs e)
      {
         txtID.Text = "";
         txtID.ReadOnly = false;
         txtPrice.Text = "";
         txtPrice.ReadOnly = false;
         txtQuantity.Text = "";
         txtQuantity.ReadOnly = false;
         txtGrandTotal.Text = "";
         txtSubTotal.Text = "";
         txtTax.Text = "";
         btnCompute.Enabled = true;
      }

      protected void btnReset_Unload(object sender, EventArgs e)
      {
         txtID.Text = "";
         txtID.ReadOnly = false;
         txtPrice.Text = "";
         txtPrice.ReadOnly = false;
         txtQuantity.Text = "";
         txtQuantity.ReadOnly = false;
         txtGrandTotal.Text = "";
         txtSubTotal.Text = "";
         txtTax.Text = "";
         btnCompute.Enabled = true;
      }
   }
}
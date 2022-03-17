using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Claims;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebFormsApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                if(User.Identity.IsAuthenticated)
                {
                    var claimsIdentity = User.Identity as ClaimsIdentity;
                    Repeater1.DataSource = claimsIdentity.Claims;
                    Repeater1.DataBind();
                }
            }
        }
    }
}
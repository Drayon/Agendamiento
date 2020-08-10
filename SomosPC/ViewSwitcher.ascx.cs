using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.FriendlyUrls.Resolvers;

namespace SomosPC
{
    public partial class ViewSwitcher : System.Web.UI.UserControl
    {
        protected string CurrentView { get; private set; }

        protected string AlternateView { get; private set; }

        protected string SwitchUrl { get; private set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            // Determine current view
            var AlternateView = "Desktop";
            var switchViewRouteName = "AspNet.FriendlyUrls.SwitchView";
            var url = GetRouteUrl(switchViewRouteName, new { view = AlternateView, __FriendlyUrls_SwitchViews = true });
            url += "?ReturnUrl=" + HttpUtility.UrlEncode(Request.RawUrl);
            Response.Redirect(url);
        }
    }
}
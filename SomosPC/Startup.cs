using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(SomosPC.Startup))]
namespace SomosPC
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

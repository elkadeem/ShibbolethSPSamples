using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(MvcAppIdentity.Startup))]
namespace MvcAppIdentity
{
    public partial class Startup
    {
        public void Configuration(IAppBuilder app)
        {
            ConfigureAuth(app);
        }
    }
}

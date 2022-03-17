using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(WebFormsWithAuth.Startup))]
namespace WebFormsWithAuth
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

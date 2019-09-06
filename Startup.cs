using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(Elearning.Startup))]
namespace Elearning
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}

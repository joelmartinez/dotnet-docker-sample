using System.IO;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Builder;

namespace HelloMvc
{
    public class Program
    {
        public static void Main(string[] args)
        {
            var url = args[0];
            var env = args[1];
            
            var host = new WebHostBuilder()
                        .UseKestrel()
                        .UseUrls(url)
                        .UseEnvironment(env)
                        .UseContentRoot(Directory.GetCurrentDirectory())
                        .UseStartup<Startup>()
                        .Build();
            host.Run();
        }
    }
}
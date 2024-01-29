using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MauiApp1.MVVM.Models
{
    public class st_ClientList
    {
        [JsonProperty("CLIENTE")]
        public int i_Cliente { get; set; }

        [JsonProperty("DENOMINACION_SOCIAL")]
        public string s_DenominacionSocial { get; set; }
    }
}

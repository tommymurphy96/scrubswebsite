using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;
using System.Data;

namespace Buncha_Scrubs
{
    public partial class SpringSummerPrints : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            xmlMaker xmlmss = new xmlMaker(Server.MapPath("SpringSummerLookBook.xml"));

            rptGallery.DataSource = xmlmss.getXmlList();
            rptGallery.DataBind();
        }
    }
}
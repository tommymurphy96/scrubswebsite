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
    public partial class AutumnWinterPrints : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            xmlMaker xmlmaw = new xmlMaker(Server.MapPath("AutomnWinterLookBook.xml"));

            rptGallery.DataSource = xmlmaw.getXmlList();
            rptGallery.DataBind();
        }
    }
}
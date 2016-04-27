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
            XmlNodeList path = null;
            XmlNodeList link = null;
            XmlNodeList name = null;
            string configFile = "C:\\Users\\murphy2079\\Documents\\GitHub\\scrubswebsite\\Buncha_Scrubs\\Buncha_Scrubs\\imagegallery.xml";
            //string currentDir = Directory.GetCurrentDirectory();
            //string configFile = currentDir + "\\imagegallery.xml";
            int reports = 0;
            List<GalleryObject> galleryImages = new List<GalleryObject>();

            try
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(configFile);

                //get report information
                XmlNodeList imagecheck = doc.GetElementsByTagName("image");
                reports = imagecheck.Count;
                path = doc.GetElementsByTagName("path");
                link = doc.GetElementsByTagName("shoplink");
                name = doc.GetElementsByTagName("name");
            }
            catch (Exception ee)
            {
                Response.Write("<!--"+ee+")-->");
            }

            for (int i = 0; i < reports; i++ )
            {
                galleryImages.Add(new GalleryObject(path[i].InnerText, link[i].InnerText, name[i].InnerText));
            }

            rptGallery.DataSource = galleryImages;
            rptGallery.DataBind();
        }
    }

    class GalleryObject
    {
        public string Path { get; set; }
        public string Link { get; set; }
        public string Name { get; set; }

        public GalleryObject() { }
        public GalleryObject(string path, string link, string name) 
        {
            Path = path;
            Link = link;
            Name = name;
        }
    }
}
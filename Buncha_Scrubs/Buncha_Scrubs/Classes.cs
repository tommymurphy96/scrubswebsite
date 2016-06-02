using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;

namespace Buncha_Scrubs
{
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

    class xmlMaker
    {
        public string ConfigFile { get; set; }
        public XmlNodeList Path { get; set; }
        public XmlNodeList Link { get; set; }
        public XmlNodeList Name { get; set; }
        public int Reports { get; set; }
        public List<GalleryObject> GalleryImages { get; set; }

        public xmlMaker() {
            Path = null;
            Link = null;
            Name = null;
            ConfigFile = null;
            Reports = 0;
            GalleryImages = new List<GalleryObject>();
        }

        public xmlMaker(string configFile)
        {
            Path = null;
            Link = null;
            Name = null;
            ConfigFile = configFile;
            Reports = 0;
            GalleryImages = new List<GalleryObject>();
        }

        public List<GalleryObject> getXmlList()
        {
            try
            {
                XmlDocument doc = new XmlDocument();
                doc.Load(ConfigFile);

                //get report information
                XmlNodeList imagecheck = doc.GetElementsByTagName("image");
                Reports = imagecheck.Count;
                Path = doc.GetElementsByTagName("path");
                Link = doc.GetElementsByTagName("shoplink");
                Name = doc.GetElementsByTagName("name");
            }
            catch (Exception ee)
            {
                Reports = -1;
                Name = null;
                Link = null;
                Path = null;
                GalleryImages.Add(new GalleryObject("", "", ee.ToString()));
            }

            for (int i = 0; i < Reports; i++)
            {
                GalleryImages.Add(new GalleryObject(Path[i].InnerText, Link[i].InnerText, Name[i].InnerText));
            }

            return GalleryImages;
        }
    }
}
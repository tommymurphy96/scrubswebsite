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
        //public string Link { get; set; }
        public string Name { get; set; }

        public GalleryObject() { }
        public GalleryObject(string path, /*string link,*/ string name)
        {
            Path = path;
            //Link = link;
            Name = name;
        }
    }

    class xmlMaker
    {
        public string ConfigFile { get; set; }
        public XmlNodeList Path { get; set; }
        //public XmlNodeList Link { get; set; }
        public XmlNodeList Name { get; set; }
        public int Reports { get; set; }
        public List<GalleryObject> GalleryImages { get; set; }

        public xmlMaker()
        {
            Path = null;
            //Link = null;
            Name = null;
            ConfigFile = null;
            Reports = 0;
            GalleryImages = new List<GalleryObject>();
        }

        public xmlMaker(string configFile)
        {
            Path = null;
            //Link = null;
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
                //Link = doc.GetElementsByTagName("shoplink");
                Name = doc.GetElementsByTagName("name");
            }
            catch (Exception ee)
            {
                Reports = -1;
                Name = null;
                //Link = null;
                Path = null;
                GalleryImages.Add(new GalleryObject("", /*"",*/ ee.ToString()));
            }

            for (int i = 0; i < Reports; i++)
            {
                GalleryImages.Add(new GalleryObject(Path[i].InnerText, /*Link[i].InnerText,*/ Name[i].InnerText));
            }

            return GalleryImages;
        }

        public void addNode(string name, string path/*, string url*/)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(ConfigFile);

            //create node and add value
            XmlNode node = doc.CreateNode(XmlNodeType.Element, "image", null);
            //node.InnerText = "this is new node";

            //create Name node
            XmlNode nodeName = doc.CreateElement("name");
            //add value for it
            nodeName.InnerText = name;

            //create path node
            XmlNode nodePath = doc.CreateElement("path");
            nodePath.InnerText = path;

            /*create link node, not currently in scope
            XmlNode nodeUrl = doc.CreateElement("shoplink");
            nodeUrl.InnerText = path;*/

            //add to parent node
            node.AppendChild(nodePath);
            // node.AppendChild(nodeUrl);
            node.AppendChild(nodeName);


            //add to elements collection
            doc.DocumentElement.AppendChild(node);

            //save back
            doc.Save(ConfigFile);
        }

        public void deleteNode(string name)
        {
            XmlDocument doc = new XmlDocument();
            doc.Load(ConfigFile);

            XmlNodeList imagecheck = doc.GetElementsByTagName("name");

            for (int i = imagecheck.Count - 1; i >= 0; i--)
            {
                if (string.Compare(imagecheck[i].InnerText, name, true) == 0)
                {
                    imagecheck[i].ParentNode.ParentNode.RemoveChild(imagecheck[i].ParentNode);
                    break;
                }
            }
            doc.Save(ConfigFile);
        }
    }
}
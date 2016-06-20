using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

namespace Buncha_Scrubs
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {
            if (Session["valid"] == null || !(bool)Session["valid"])
            {
                Response.Redirect("~/Default.aspx");
            }

            if (!IsPostBack)
            {
                xmlMaker xmlmaw = new xmlMaker(Server.MapPath("AutomnWinterLookBook.xml"));

                ddlAW.DataSource = xmlmaw.getXmlList();
                ddlAW.DataValueField = "Path";
                ddlAW.DataTextField = "Name";
                ddlAW.DataBind();

                xmlMaker xmlmss = new xmlMaker(Server.MapPath("SpringSummerLookBook.xml"));

                ddlSS.DataSource = xmlmss.getXmlList();
                ddlSS.DataValueField = "Path";
                ddlSS.DataTextField = "Name";
                ddlSS.DataBind();
            }

            SSImage.ImageUrl = ddlSS.SelectedValue;
            AWImage.ImageUrl = ddlAW.SelectedValue;
            carouselImg.ImageUrl = RadioButtonList1.SelectedValue;

            //DirectoryInfo dir = new DirectoryInfo(MapPath("~/Images/"));
            //dlstImage.DataSource = dir.GetFiles();
            //dlstImage.DataBind();

            //String fileName = Request.QueryString["fileToDelete"];
            //if (fileName != null)
            //{
            //    File.Delete(dir + fileName);
            //    Response.Redirect("Admin.aspx");
            //}


        }

        private bool CheckFileType(string fileName)
        {
            string ext = Path.GetExtension(fileName);
            switch (ext.ToLower())
            {
                case ".png":
                    return true;
                default:
                    return false;
            }

        }

        //protected void btnSave_Click(object sender, EventArgs e)
        //{
        //    string filePath = "~/Images/" + fupUpload.FileName;

        //    if (CheckFileType(filePath))
        //    {
        //        fupUpload.SaveAs(MapPath(filePath));
        //    }

        //}

        protected void btnSaveBanner_Click(object sender, EventArgs e)
        {
            string filePath = "~/Images/BannerBanner" + bannerUpload.FileName.Substring(bannerUpload.FileName.LastIndexOf("."));

            if (CheckFileType(filePath))
            {
                bannerUpload.SaveAs(MapPath(filePath));
            }
        }

        protected void btnSaveShop_Click(object sender, EventArgs e)
        {
            string filePath = "~/Images/ShopThisBanner" + shopThisUpload.FileName.Substring(shopThisUpload.FileName.LastIndexOf("."));

            if (CheckFileType(filePath))
            {
                shopThisUpload.SaveAs(MapPath(filePath));
            }
        }

        protected void btnSaveCollection_Click(object sender, EventArgs e)
        {
            string filePath = "~/Images/ColletionBanner" + collectionUpload.FileName.Substring(collectionUpload.FileName.LastIndexOf("."));

            if (CheckFileType(filePath))
            {
                collectionUpload.SaveAs(MapPath(filePath));
            }
        }

        protected void btnAWLookBookAdd_Click(object sender, EventArgs e)
        {   
            //check if any node already matches current name, and if so do nothing
            xmlMaker awXml = new xmlMaker(Server.MapPath("AutomnWinterLookBook.xml"));
            List<GalleryObject> glist = awXml.getXmlList();
            int nodecheck = -1;
            for (int i = 0; i < glist.Count();i++ )
            {
                if (String.Compare(glist[i].Name, AWLookBookUpload.FileName.ToString(), true) == 0)
                {
                    nodecheck = i;
                }
            }
            //if no match, append information to xml?
            if (nodecheck == -1)
            {
                awXml.addNode(AWLookBookUpload.FileName.ToString(), Server.MapPath(AWLookBookUpload.FileName.ToString())/*, txtAWLookbook.Text*/);
            }

            string filePath = "~/Images/" + AWLookBookUpload.FileName;

            if (CheckFileType(filePath))
            {
                AWLookBookUpload.SaveAs(MapPath(filePath));
            }
        }

        protected void btnSSLookBookAdd_Click(object sender, EventArgs e)
        {
            //check if any node already matches current name, and if so do nothing
            xmlMaker ssXml = new xmlMaker(Server.MapPath("SpringSummerLookBook.xml"));
            List<GalleryObject> glist = ssXml.getXmlList();
            int nodecheck = -1;
            for (int i = 0; i < glist.Count();i++ )
            {
                if (String.Compare(glist[i].Name, SSLookBookUpload.FileName.ToString(), true) == 0)
                {
                    nodecheck = i;
                }
            }
            //if no match, append information to xml?

            string filePath = "/Images/" + SSLookBookUpload.FileName;

            if (CheckFileType(filePath))
            {
                SSLookBookUpload.SaveAs(MapPath(filePath));


                if (nodecheck == -1)
                {
                    ssXml.addNode(SSLookBookUpload.FileName, filePath/*, txtSSLookbook.Text*/);
                }
            }
           
        }
        

        protected void btnAWLookBookDelete_Click(object sender, EventArgs e)
        {
            xmlMaker awXml = new xmlMaker(Server.MapPath("AutomnWinterLookBook.xml"));
            awXml.deleteNode(ddlAW.Text);
            FileInfo file = new FileInfo(Server.MapPath(ddlAW.SelectedValue));
            file.Delete();
        }

        protected void btnSSLookBookDelete_Click(object sender, EventArgs e)
        {
            xmlMaker ssXml = new xmlMaker(Server.MapPath("SpringSummerLookBook.xml"));
            ssXml.deleteNode(ddlSS.Text);
            FileInfo file = new FileInfo(Server.MapPath(ddlSS.SelectedValue));
            file.Delete();
        }

        protected void btnCarouselAdd_Click(object sender, EventArgs e)
        {
            
                string filePath =  CarouselUpload.FileName;

                if (CheckFileType(filePath))
                {
                    CarouselUpload.SaveAs(MapPath(RadioButtonList1.SelectedValue));
                }
            
        }
    }
}
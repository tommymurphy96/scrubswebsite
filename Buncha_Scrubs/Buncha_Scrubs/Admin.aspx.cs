using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Buncha_Scrubs
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_PreRender(object sender, EventArgs e)
        {

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
            string filePath = "~/Images/ShopThisBanner" + bannerUpload.FileName.Substring(bannerUpload.FileName.LastIndexOf("."));

            if (CheckFileType(filePath))
            {
                shopThisUpload.SaveAs(MapPath(filePath));
            }
        }

        protected void btnSaveCollection_Click(object sender, EventArgs e)
        {
            string filePath = "~/Images/ColletionBanner" + bannerUpload.FileName.Substring(bannerUpload.FileName.LastIndexOf("."));

            if (CheckFileType(filePath))
            {
                collectionUpload.SaveAs(MapPath(filePath));
            }
        }

        protected void btnAWLookBookAdd_Click(object sender, EventArgs e)
        {
            //check if any node already matches current name, and if so do nothing
            //if no match, append information to xml... probably with a writeline?
        }

        protected void btnSSLookBookAdd_Click(object sender, EventArgs e)
        {
            //above
        }

        protected void btnAWLookBookDelete_Click(object sender, EventArgs e)
        {
            //go through xml, find node by name, delete node from text document(find index of parent node, delete x lines down?)
            //also find and delete picture from server by name (is this a thing?)
        }

        protected void btnSSLookBookDelete_Click(object sender, EventArgs e)
        {
            //above
        }
    }
}
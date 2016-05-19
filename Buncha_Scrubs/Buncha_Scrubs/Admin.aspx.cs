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
                case ".gif":
                    return true;
                case ".png":
                    return true;
                case ".jpg":
                    return true;
                case ".jpeg":
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
            string filePath = "~/Images/" + bannerUpload.FileName;

            if (CheckFileType(filePath))
            {
                bannerUpload.SaveAs(MapPath(filePath));
            }

        }
    }
}
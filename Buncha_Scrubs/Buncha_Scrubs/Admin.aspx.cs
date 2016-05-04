//using System;
//using System.Collections.Generic;
//using System.IO;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace Buncha_Scrubs
//{
//    public partial class FileUploads : System.Web.UI.Page
//    {
//        protected void Page_PreRender(object sender, EventArgs e)
//        {

//            DirectoryInfo dir = new DirectoryInfo(MapPath("~/Prints/"));
//            dlstImages.DataSource = dir.GetFiles();
//            dlstImages.DataBind();

//            String fileName = Request.QueryString["fileToDelete"];
//            if (fileName != null)
//            {
//                File.Delete(dir + fileName);
//                Response.Redirect("FileUploads.aspx");
//            }
//        }

//        private bool CheckFileType(string fileName)
//        {
//            string ext = Path.GetExtension(fileName);
//            switch (ext.ToLower())
//            {
//                case ".gif":
//                    return true;
//                case ".png":
//                    return true;
//                case ".jpg":
//                    return true;
//                case ".jpeg":
//                    return true;
//                default:
//                    return false;
//            }

//        }

//        protected void btnSave_Click(object sender, EventArgs e)
//        {
//            string filePath = "~/UploadedImages/" + fupUpload.FileName;

//            if (CheckFileType(filePath))
//            {
//                fupUpload.SaveAs(MapPath(filePath));
//            }

//        }
//    }
//}
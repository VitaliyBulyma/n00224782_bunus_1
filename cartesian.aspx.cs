using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cartesian_Plane
{
    public partial class cartesian : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Page.IsPostBack){
                Page.Validate();

                if (Page.IsValid)
                {
                    //clear all data from result div
                    result_q1.InnerHtml = "";
                    result_q2.InnerHtml = "";
                    result_q3.InnerHtml = "";
                    result_q4.InnerHtml = "";

                    // convert input to useful integers and store it in codebehind variables
                    int User_Input_Y = Convert.ToInt32(user_input_y.Text);
                    int User_Input_X = Convert.ToInt32(user_input_x.Text);
                    //check to which quadrant coordinates belong 
                    if ((User_Input_Y > 0) && (User_Input_X>0))
                    {
                        result_q1.InnerHtml = "Your coordinates ("+User_Input_X+" , " +User_Input_Y+ ")are in Quadrant 1";
                    } else if ((User_Input_Y > 0) && (User_Input_X < 0))
                    {
                        result_q2.InnerHtml = "Your coordinates (" + User_Input_X + " , " + User_Input_Y + ")are in Quadrant 2";
                    }else if ((User_Input_Y < 0) && (User_Input_X < 0))
                    {
                        result_q3.InnerHtml = "Your coordinates (" + User_Input_X + " , " + User_Input_Y + ")are in Quadrant 3";

                    }
                    else
                    {
                        result_q4.InnerHtml = "Your coordinates (" + User_Input_X + " , " + User_Input_Y + ")are in Quadrant 4";
                    }
                    // I wanted to display results on top of the image on the quadrant 
                    // where they belong. I do not know how to do it at this point. I will
                    //improve this app when I have more knowledge
                }

            }
        }
    }
}
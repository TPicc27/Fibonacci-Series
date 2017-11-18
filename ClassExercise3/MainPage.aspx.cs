using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

//Tony Piccirilli
//September 18, 2017

namespace ClassExercise3
{
    public partial class MainPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            if (!IsPostBack)
            {
                LengthType.Items.Add("Perimeter");
                LengthType.Items.Add("Area");  // List items add to list box
                LengthType.Items.Add("Diagonal");
            }
        }

        protected void CalculateButton_Click(object sender, EventArgs e)
        {
            double length = Convert.ToDouble(LengthTB.Text);
            double width = Convert.ToDouble(WidthTB.Text);   //Converting text boxes into doubles
            if (LengthType.SelectedIndex == 0)
            {
                double pertimeter = length + width;  
                CalculationLabel.Text = "The perimeter is " + pertimeter;  //Caluculate the perimeter add it to the label
            }
            if(LengthType.SelectedIndex == 1)
            {
                double area = length * width;
                CalculationLabel.Text = "The area is " + area; //Caluculate the area add it to the label
            }
            if(LengthType.SelectedIndex == 2)
            {
                double diagonal = Math.Sqrt(Math.Pow(length, 2) + Math.Pow(width, 2));
                CalculationLabel.Text = "The diagonal is " + diagonal; //Caluculate the diagonal add it to the label
            }
        }
    }
}
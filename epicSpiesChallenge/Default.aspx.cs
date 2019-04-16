using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace epicSpiesChallenge
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Calendar1.SelectedDate = DateTime.Now.Date;
                Calendar2.SelectedDate = DateTime.Now.Date.AddDays(14);
                Calendar3.SelectedDate = DateTime.Now.Date.AddDays(21);
            }
        }

        protected void okButton_Click(object sender, EventArgs e)
        {
            TimeSpan totalDuration = Calendar3.SelectedDate.Subtract(Calendar2.SelectedDate);
            double projectCost = totalDuration.TotalDays * 500;

            if (totalDuration.TotalDays > 21)
            {
                projectCost += 1000.0;
            }
            resultLabel.Text = String.Format("Assignment of {0} to assignment {1} is authorized. Budget total: {2:C}",
                spyNameBox.Text,
                assignNameBox.Text,
                projectCost);

            TimeSpan restTime = Calendar2.SelectedDate.Subtract(Calendar1.SelectedDate);

            if (restTime.TotalDays < 14)
            {
                resultLabel.Text = "Error: Must allow at least two weeks between " +
                    "previous assignment and new assignment.";

                DateTime earliestDate = Calendar1.SelectedDate.AddDays(14);

                Calendar2.SelectedDate = earliestDate;
                Calendar2.VisibleDate = earliestDate;
            }
        }
    }
}
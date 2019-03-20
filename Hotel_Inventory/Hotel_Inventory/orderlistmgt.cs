using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using MySql.Data.MySqlClient;

namespace Hotel_Inventory
{
    public partial class orderlistmgt : Form
    {
        //public mainform reference { get; set; }
        public MySqlConnection dbconnection;

        public orderlistmgt()
        {
            InitializeComponent();
        }

        private void orderlistmgt_Load(object sender, EventArgs e)
        {

        }
    }
}

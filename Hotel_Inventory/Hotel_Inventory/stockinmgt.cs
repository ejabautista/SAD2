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
    public partial class stockinmgt : Form
    {
        public Inventorymgt reference { get; set; }
        public MySqlConnection dbconnection;

        public stockinmgt()
        {
            InitializeComponent();
        }

        private void stockinmgt_Load(object sender, EventArgs e)
        {

        }
    }
}

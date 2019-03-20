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
    public partial class Inventorymgt : Form
    {
        //public mainform reference { get; set; }
        public MySqlConnection dbconnection;
        dbconnector connect = new dbconnector();
        MySqlDataAdapter adapter;
        DataTable dt;

        public string quantity;
        public string inventoryid;


        public Inventorymgt()
        {
            InitializeComponent();
            dbconnection = new MySqlConnection("Server=localhost;Database=sad2_db;Uid=root;Pwd=root;");
        }

        public void readdata()
        {
            using (MySqlConnection conn = connect.connector())
            {
                string query = "SELECT idmInventory, mInventorycol, stock_in_date, product_id, stock_out_date, quantity, status FROM minventory INNER JOIN menu_item ON minventory.idmInventory = menu_item.id WHERE minventory.status = 0";
                dt = new DataTable();
                adapter = new MySqlDataAdapter(query, conn);
                adapter.Fill(dt);
                datagridview_inventory.DataSource = dt;

            }
            datagridview_inventory.Columns["idmInventory"].Visible = false;
            datagridview_inventory.Columns["Status"].Visible = false;
            datagridview_inventory.Columns["stock_in_date"].HeaderText = "Stock In Date";
            datagridview_inventory.Columns["stock_out_date"].HeaderText = "Stock Out Date";
            datagridview_inventory.Columns["product_id"].HeaderText = "Product ID";
            datagridview_inventory.Columns["mInventorycol"].HeaderText = "Item Name";
        }

        public void readdata2()
        {
            using (MySqlConnection conn = connect.connector())
            {
                string query = "SELECT idmInventory, menu_item.name, menu_item.desc, stock_in_date, stock_out_date, Quantity, Status FROM minventory INNER JOIN menu_item ON minventory.idmInventory = menu_item.id WHERE minventory.status = 0";
                dt = new DataTable();
                adapter = new MySqlDataAdapter(query, conn);
                adapter.Fill(dt);
                datagridview_inventory.DataSource = dt;

            }
            datagridview_inventory.Columns["idmInventory"].Visible = false;
            datagridview_inventory.Columns["Status"].Visible = false;
            datagridview_inventory.Columns["Quantity"].HeaderText = "Item Quantity";
            datagridview_inventory.Columns["stock_in_date"].HeaderText = "Stock In Date";
            datagridview_inventory.Columns["stock_out_date"].HeaderText = "Stock Out Date";
            datagridview_inventory.Columns["menu_item.name"].HeaderText = "Item Name";
            datagridview_inventory.Columns["menu_item.desc"].HeaderText = "Item Description";
        }

        private void updateinventory()
        {
            var dbconnect = new dbconnector();
            using (dbconnection = dbconnect.connector())
            {
                using (var command = new MySqlCommand("UPDATE minventory SET quantity = @quantity, stock_out_date = @sod WHERE idmInventory = @ayd;", dbconnection))
                {
                    dbconnection.Open();
                    command.Parameters.AddWithValue("@quantity", quantityadd());
                    command.Parameters.AddWithValue("@sod", System.DateTime.Now.ToString("yyyy-MM-dd HH:mm:ss"));
                    command.Parameters.AddWithValue("@ayd", inventoryid);
                    command.ExecuteNonQuery();
                }
            }
        }

        private void stockout()
        {
            var dbconnect = new dbconnector();
            using (dbconnection = dbconnect.connector())
            {

                dbconnection.Open();
                using (var com = new MySqlCommand("INSERT INTO mstkout(idmInventory, stock_out_date, quantity, status) VALUES(@inventoryid, @date, @quantity, @stat)", dbconnection))
                {
                    com.Parameters.AddWithValue("@inventoryid", inventoryid);
                    com.Parameters.AddWithValue("@date", DateTime.Now.ToString("yyyy/MM/dd HH:mm:ss"));
                    com.Parameters.AddWithValue("@quantity", textBox2.Text);

                    com.ExecuteNonQuery();
                }
            }
        }

        private Int32 quantityadd()
        {
            var a = 0;
            if (Convert.ToInt32(quantity) >= 0)
            {
                a = Convert.ToInt32(quantity) - Convert.ToInt32(textBox2.Text);
                return a;
            }
            else
            {
                return -1;
            }
        }

        public orderlistmgt frmol;
        private void btn_orderlistmgt_Click(object sender, EventArgs e)
        {
            frmol = new orderlistmgt();
            //frmol.reference = this;
            frmol.Show();
        }

        public stockinmgt frmsinout;
        private void btn_stockin_Click(object sender, EventArgs e)
        {
            frmsinout = new stockinmgt();
            //frmsinout.reference = this;
            frmsinout.Show();
        }

        public itemmgt frmim;
        private void btn_items_Click(object sender, EventArgs e)
        {
            frmim = new itemmgt();
            //frmim.reference = this;
            frmim.Show();
        }
        
        private void Inventorymgt_Load(object sender, EventArgs e)
        {
            readdata();
            datagridview_inventory.ClearSelection();
        }

        private void btn_stockout_Click(object sender, EventArgs e)
        {
            if (textBox2.Text != "" && textBox2.Text != "0")
            {
                
                    if (quantityadd() >= 0)
                    {
                        DialogResult res = MessageBox.Show("CONFIRM STOCK-OUT OF ITEMS?", "CONFIRM!", MessageBoxButtons.YesNo, MessageBoxIcon.Question);
                        if (res == DialogResult.Yes)
                        {
                            updateinventory();
                            stockout();
                            readdata();
                            textBox2.Clear();
                            datagridview_inventory.ClearSelection();
                            btn_stockoutlist.Enabled = false;
                            MessageBox.Show("SUCCESSFULLY STOCKED-OUT QUANTITY OF ITEMS!", "ATTENTION!", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        }
                    }
                else
                {
                    MessageBox.Show("A STOCK-OUT TYPE SHOULD BE SELECTED", "ERROR!", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            else
            {
                MessageBox.Show("QUANTITY MUST NOT BE LEFT EMPTY, OR SET TO ZERO", "ERROR!", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        public stockoutlist stklist;
        private void btn_stockoutlist_Click(object sender, EventArgs e)
        {
            stklist = new stockoutlist(inventoryid);
            //stklist.reference = this;
            stklist.Show();
        }
    }
}

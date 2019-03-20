namespace Hotel_Inventory
{
    partial class orderlistmgt
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnAdd2 = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.dateDate = new System.Windows.Forms.DateTimePicker();
            this.txtquantity2 = new System.Windows.Forms.TextBox();
            this.txtvendor = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblQuantity = new System.Windows.Forms.Label();
            this.lblVendor = new System.Windows.Forms.Label();
            this.lblDate2 = new System.Windows.Forms.Label();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.dataItemCreation = new System.Windows.Forms.DataGridView();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.dataOrderList = new System.Windows.Forms.DataGridView();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.dgvcompleted = new System.Windows.Forms.DataGridView();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.dgvcancelled = new System.Windows.Forms.DataGridView();
            this.groupBox1.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataItemCreation)).BeginInit();
            this.tabPage2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataOrderList)).BeginInit();
            this.tabPage3.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvcompleted)).BeginInit();
            this.tabPage4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgvcancelled)).BeginInit();
            this.SuspendLayout();
            // 
            // btnAdd2
            // 
            this.btnAdd2.BackColor = System.Drawing.SystemColors.Control;
            this.btnAdd2.Enabled = false;
            this.btnAdd2.FlatAppearance.BorderColor = System.Drawing.Color.DarkGreen;
            this.btnAdd2.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btnAdd2.Font = new System.Drawing.Font("Microsoft Sans Serif", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnAdd2.ForeColor = System.Drawing.Color.Black;
            this.btnAdd2.Location = new System.Drawing.Point(18, 123);
            this.btnAdd2.Margin = new System.Windows.Forms.Padding(4);
            this.btnAdd2.Name = "btnAdd2";
            this.btnAdd2.Size = new System.Drawing.Size(152, 60);
            this.btnAdd2.TabIndex = 14;
            this.btnAdd2.Text = "Create";
            this.btnAdd2.UseVisualStyleBackColor = false;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.btnAdd2);
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Controls.Add(this.dateDate);
            this.groupBox1.Controls.Add(this.txtquantity2);
            this.groupBox1.Controls.Add(this.txtvendor);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.lblQuantity);
            this.groupBox1.Controls.Add(this.lblVendor);
            this.groupBox1.Controls.Add(this.lblDate2);
            this.groupBox1.Location = new System.Drawing.Point(27, 588);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(1179, 190);
            this.groupBox1.TabIndex = 13;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Order Details";
            // 
            // textBox1
            // 
            this.textBox1.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.textBox1.Location = new System.Drawing.Point(152, 24);
            this.textBox1.Margin = new System.Windows.Forms.Padding(4);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(432, 29);
            this.textBox1.TabIndex = 21;
            // 
            // dateDate
            // 
            this.dateDate.CustomFormat = "";
            this.dateDate.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.dateDate.Location = new System.Drawing.Point(784, 22);
            this.dateDate.Margin = new System.Windows.Forms.Padding(4);
            this.dateDate.Name = "dateDate";
            this.dateDate.Size = new System.Drawing.Size(355, 29);
            this.dateDate.TabIndex = 22;
            this.dateDate.Value = new System.DateTime(2018, 9, 22, 0, 0, 0, 0);
            // 
            // txtquantity2
            // 
            this.txtquantity2.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtquantity2.Location = new System.Drawing.Point(820, 73);
            this.txtquantity2.Margin = new System.Windows.Forms.Padding(4);
            this.txtquantity2.Name = "txtquantity2";
            this.txtquantity2.Size = new System.Drawing.Size(216, 29);
            this.txtquantity2.TabIndex = 21;
            // 
            // txtvendor
            // 
            this.txtvendor.Font = new System.Drawing.Font("Tahoma", 10.8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtvendor.Location = new System.Drawing.Point(152, 73);
            this.txtvendor.Margin = new System.Windows.Forms.Padding(4);
            this.txtvendor.Name = "txtvendor";
            this.txtvendor.Size = new System.Drawing.Size(432, 29);
            this.txtvendor.TabIndex = 20;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.Black;
            this.label2.Location = new System.Drawing.Point(8, 22);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(136, 29);
            this.label2.TabIndex = 19;
            this.label2.Text = "Item Name:";
            // 
            // lblQuantity
            // 
            this.lblQuantity.AutoSize = true;
            this.lblQuantity.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblQuantity.ForeColor = System.Drawing.Color.Black;
            this.lblQuantity.Location = new System.Drawing.Point(706, 71);
            this.lblQuantity.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblQuantity.Name = "lblQuantity";
            this.lblQuantity.Size = new System.Drawing.Size(106, 29);
            this.lblQuantity.TabIndex = 18;
            this.lblQuantity.Text = "Quantity:";
            // 
            // lblVendor
            // 
            this.lblVendor.AutoSize = true;
            this.lblVendor.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblVendor.ForeColor = System.Drawing.Color.Black;
            this.lblVendor.Location = new System.Drawing.Point(39, 73);
            this.lblVendor.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblVendor.Name = "lblVendor";
            this.lblVendor.Size = new System.Drawing.Size(97, 29);
            this.lblVendor.TabIndex = 17;
            this.lblVendor.Text = "Vendor:";
            // 
            // lblDate2
            // 
            this.lblDate2.AutoSize = true;
            this.lblDate2.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblDate2.ForeColor = System.Drawing.Color.Black;
            this.lblDate2.Location = new System.Drawing.Point(707, 24);
            this.lblDate2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDate2.Name = "lblDate2";
            this.lblDate2.Size = new System.Drawing.Size(69, 29);
            this.lblDate2.TabIndex = 16;
            this.lblDate2.Text = "Date:";
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Controls.Add(this.tabPage3);
            this.tabControl1.Controls.Add(this.tabPage4);
            this.tabControl1.Font = new System.Drawing.Font("Microsoft Sans Serif", 13.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.tabControl1.Location = new System.Drawing.Point(23, 21);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(1254, 561);
            this.tabControl1.TabIndex = 12;
            // 
            // tabPage1
            // 
            this.tabPage1.Controls.Add(this.dataItemCreation);
            this.tabPage1.Location = new System.Drawing.Point(4, 38);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(1246, 519);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "ORDER CREATION";
            this.tabPage1.UseVisualStyleBackColor = true;
            // 
            // dataItemCreation
            // 
            this.dataItemCreation.AllowUserToAddRows = false;
            this.dataItemCreation.AllowUserToDeleteRows = false;
            this.dataItemCreation.AllowUserToResizeColumns = false;
            this.dataItemCreation.AllowUserToResizeRows = false;
            this.dataItemCreation.BackgroundColor = System.Drawing.Color.White;
            this.dataItemCreation.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataItemCreation.Location = new System.Drawing.Point(4, 7);
            this.dataItemCreation.Margin = new System.Windows.Forms.Padding(4);
            this.dataItemCreation.Name = "dataItemCreation";
            this.dataItemCreation.ReadOnly = true;
            this.dataItemCreation.RowHeadersVisible = false;
            this.dataItemCreation.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataItemCreation.Size = new System.Drawing.Size(1235, 508);
            this.dataItemCreation.TabIndex = 4;
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.dataOrderList);
            this.tabPage2.Location = new System.Drawing.Point(4, 38);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(1246, 519);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "PENDING";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // dataOrderList
            // 
            this.dataOrderList.AllowUserToAddRows = false;
            this.dataOrderList.AllowUserToDeleteRows = false;
            this.dataOrderList.AllowUserToResizeColumns = false;
            this.dataOrderList.AllowUserToResizeRows = false;
            this.dataOrderList.BackgroundColor = System.Drawing.Color.White;
            this.dataOrderList.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataOrderList.Location = new System.Drawing.Point(4, 4);
            this.dataOrderList.Margin = new System.Windows.Forms.Padding(4);
            this.dataOrderList.Name = "dataOrderList";
            this.dataOrderList.ReadOnly = true;
            this.dataOrderList.RowHeadersVisible = false;
            this.dataOrderList.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dataOrderList.Size = new System.Drawing.Size(1235, 511);
            this.dataOrderList.TabIndex = 1;
            // 
            // tabPage3
            // 
            this.tabPage3.Controls.Add(this.dgvcompleted);
            this.tabPage3.Location = new System.Drawing.Point(4, 38);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Size = new System.Drawing.Size(1246, 519);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "COMPLETED";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // dgvcompleted
            // 
            this.dgvcompleted.AllowUserToAddRows = false;
            this.dgvcompleted.AllowUserToDeleteRows = false;
            this.dgvcompleted.AllowUserToResizeColumns = false;
            this.dgvcompleted.AllowUserToResizeRows = false;
            this.dgvcompleted.BackgroundColor = System.Drawing.Color.White;
            this.dgvcompleted.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvcompleted.Location = new System.Drawing.Point(4, 4);
            this.dgvcompleted.Margin = new System.Windows.Forms.Padding(4);
            this.dgvcompleted.Name = "dgvcompleted";
            this.dgvcompleted.ReadOnly = true;
            this.dgvcompleted.RowHeadersVisible = false;
            this.dgvcompleted.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvcompleted.Size = new System.Drawing.Size(1238, 511);
            this.dgvcompleted.TabIndex = 2;
            // 
            // tabPage4
            // 
            this.tabPage4.Controls.Add(this.dgvcancelled);
            this.tabPage4.Location = new System.Drawing.Point(4, 38);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Size = new System.Drawing.Size(1246, 519);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "CANCELLED";
            this.tabPage4.UseVisualStyleBackColor = true;
            // 
            // dgvcancelled
            // 
            this.dgvcancelled.AllowUserToAddRows = false;
            this.dgvcancelled.AllowUserToDeleteRows = false;
            this.dgvcancelled.AllowUserToResizeColumns = false;
            this.dgvcancelled.AllowUserToResizeRows = false;
            this.dgvcancelled.BackgroundColor = System.Drawing.Color.White;
            this.dgvcancelled.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvcancelled.Location = new System.Drawing.Point(4, 4);
            this.dgvcancelled.Margin = new System.Windows.Forms.Padding(4);
            this.dgvcancelled.Name = "dgvcancelled";
            this.dgvcancelled.ReadOnly = true;
            this.dgvcancelled.RowHeadersVisible = false;
            this.dgvcancelled.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgvcancelled.Size = new System.Drawing.Size(1238, 511);
            this.dgvcancelled.TabIndex = 3;
            // 
            // orderlistmgt
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1323, 806);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.tabControl1);
            this.Name = "orderlistmgt";
            this.Text = "orderlistmgt";
            this.Load += new System.EventHandler(this.orderlistmgt_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataItemCreation)).EndInit();
            this.tabPage2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dataOrderList)).EndInit();
            this.tabPage3.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvcompleted)).EndInit();
            this.tabPage4.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgvcancelled)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnAdd2;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.DateTimePicker dateDate;
        private System.Windows.Forms.TextBox txtquantity2;
        private System.Windows.Forms.TextBox txtvendor;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblQuantity;
        private System.Windows.Forms.Label lblVendor;
        private System.Windows.Forms.Label lblDate2;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.DataGridView dataItemCreation;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.DataGridView dataOrderList;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.DataGridView dgvcompleted;
        private System.Windows.Forms.TabPage tabPage4;
        private System.Windows.Forms.DataGridView dgvcancelled;
    }
}
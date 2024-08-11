using System.Drawing;

namespace CapaPresentacionUsuario
{
    partial class Form1
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Form1));
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.Usuario_txt = new System.Windows.Forms.TextBox();
            this.Contra_txt = new System.Windows.Forms.TextBox();
            this.Ingresar_btn = new FontAwesome.Sharp.IconButton();
            this.label4 = new System.Windows.Forms.Label();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.Salir = new FontAwesome.Sharp.IconPictureBox();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.Salir)).BeginInit();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Segoe UI", 28.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.White;
            this.label1.Location = new System.Drawing.Point(176, 55);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(143, 62);
            this.label1.TabIndex = 0;
            this.label1.Text = "Login";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Segoe UI", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.White;
            this.label3.Location = new System.Drawing.Point(98, 247);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(162, 38);
            this.label3.TabIndex = 2;
            this.label3.Text = "Contraseña:";
            // 
            // Usuario_txt
            // 
            this.Usuario_txt.BackColor = System.Drawing.Color.White;
            this.Usuario_txt.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Usuario_txt.Location = new System.Drawing.Point(105, 198);
            this.Usuario_txt.Margin = new System.Windows.Forms.Padding(4);
            this.Usuario_txt.Name = "Usuario_txt";
            this.Usuario_txt.Size = new System.Drawing.Size(328, 30);
            this.Usuario_txt.TabIndex = 4;
            this.Usuario_txt.TextChanged += new System.EventHandler(this.Usuario_txt_TextChanged);
            // 
            // Contra_txt
            // 
            this.Contra_txt.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Contra_txt.Location = new System.Drawing.Point(105, 300);
            this.Contra_txt.Margin = new System.Windows.Forms.Padding(4);
            this.Contra_txt.Name = "Contra_txt";
            this.Contra_txt.PasswordChar = '*';
            this.Contra_txt.Size = new System.Drawing.Size(328, 30);
            this.Contra_txt.TabIndex = 5;
            this.Contra_txt.UseSystemPasswordChar = true;
            this.Contra_txt.TextChanged += new System.EventHandler(this.Contra_txt_TextChanged);
            // 
            // Ingresar_btn
            // 
            this.Ingresar_btn.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("Ingresar_btn.BackgroundImage")));
            this.Ingresar_btn.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.Ingresar_btn.Font = new System.Drawing.Font("Segoe UI Semilight", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Ingresar_btn.ForeColor = System.Drawing.Color.White;
            this.Ingresar_btn.IconChar = FontAwesome.Sharp.IconChar.ArrowRight;
            this.Ingresar_btn.IconColor = System.Drawing.Color.White;
            this.Ingresar_btn.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.Ingresar_btn.IconSize = 25;
            this.Ingresar_btn.Location = new System.Drawing.Point(187, 359);
            this.Ingresar_btn.Margin = new System.Windows.Forms.Padding(4);
            this.Ingresar_btn.Name = "Ingresar_btn";
            this.Ingresar_btn.Size = new System.Drawing.Size(148, 49);
            this.Ingresar_btn.TabIndex = 6;
            this.Ingresar_btn.Text = "Ingresar";
            this.Ingresar_btn.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.Ingresar_btn.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.Ingresar_btn.UseVisualStyleBackColor = true;
            this.Ingresar_btn.Click += new System.EventHandler(this.Ingresar_btn_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("Segoe UI", 16.2F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.Color.White;
            this.label4.Location = new System.Drawing.Point(98, 147);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(117, 38);
            this.label4.TabIndex = 7;
            this.label4.Text = "Usuario:";
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.Ingresar_btn);
            this.panel1.Controls.Add(this.Usuario_txt);
            this.panel1.Controls.Add(this.Contra_txt);
            this.panel1.Location = new System.Drawing.Point(847, 139);
            this.panel1.Margin = new System.Windows.Forms.Padding(4);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(476, 458);
            this.panel1.TabIndex = 8;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.Transparent;
            this.panel2.Controls.Add(this.Salir);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 582);
            this.panel2.Margin = new System.Windows.Forms.Padding(4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1385, 109);
            this.panel2.TabIndex = 9;
            // 
            // Salir
            // 
            this.Salir.BackColor = System.Drawing.Color.Transparent;
            this.Salir.Cursor = System.Windows.Forms.Cursors.Hand;
            this.Salir.IconChar = FontAwesome.Sharp.IconChar.DoorOpen;
            this.Salir.IconColor = System.Drawing.Color.White;
            this.Salir.IconFont = FontAwesome.Sharp.IconFont.Auto;
            this.Salir.IconSize = 76;
            this.Salir.Location = new System.Drawing.Point(53, 13);
            this.Salir.Margin = new System.Windows.Forms.Padding(4);
            this.Salir.Name = "Salir";
            this.Salir.Size = new System.Drawing.Size(84, 76);
            this.Salir.TabIndex = 10;
            this.Salir.TabStop = false;
            this.Salir.Click += new System.EventHandler(this.Salir_Click);
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.ClientSize = new System.Drawing.Size(1385, 691);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "Form1";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.Form1_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.Salir)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox Usuario_txt;
        private System.Windows.Forms.TextBox Contra_txt;
        private FontAwesome.Sharp.IconButton Ingresar_btn;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private FontAwesome.Sharp.IconPictureBox Salir;
    }
}

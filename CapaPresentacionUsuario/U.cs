using CapaDatos;
using CapaEntidad;
using CapaNegocio;
using CapaPresentacionAdmin;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows.Forms;

namespace CapaPresentacionUsuario
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void Salir_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void Ingresar_btn_Click(object sender, EventArgs e)
        {
            try
            {
                // Realiza la consulta para verificar las credenciales del usuario
                Usuarios ousuario = new CNUsuario().Listar()
                    .FirstOrDefault(u => u.Usuario == Usuario_txt.Text && u.Contraseña == Contra_txt.Text);

                if (ousuario != null)
                {
                    if (ousuario.TipoUsuario == "General")
                    {
                        Menu menu = new Menu(ousuario);
                        menu.Show();
                        this.Hide();

                        menu.FormClosing += Frmclosing;
                    }
                    else if (ousuario.TipoUsuario == "Administrador")
                    {
                        Admin formAdmin = new Admin(ousuario);
                        formAdmin.Show();
                        this.Hide();
                        formAdmin.FormClosing += Frmclosing;
                    }
                }
                else
                {
                    // Maneja el caso en que las credenciales no coinciden
                    MessageBox.Show("Usuario o contraseña incorrectos", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error: {ex.Message}", "Error", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void Frmclosing(object sender, FormClosingEventArgs e)
        {
            // Limpiar campos de texto cuando el formulario se cierra
            Usuario_txt.Text = "";
            Contra_txt.Text = "";

            this.Show();
        }

        private void Contra_txt_TextChanged(object sender, EventArgs e)
        {

        }

        private void Usuario_txt_TextChanged(object sender, EventArgs e)
        {

        }

        private void Form1_Load(object sender, EventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}


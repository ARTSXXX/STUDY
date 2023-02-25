using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.IO;
using Newtonsoft.Json;

namespace Lab_2
{
    public partial class Form2 : Form
    {
        Student stud = new Student();
        Form1 form1;
        public Form2(Form1 owner)
        {
            form1 = owner;
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void button1_Click(object sender, EventArgs e)
        {
            string jsonObj = JsonConvert.SerializeObject(stud);
            File.WriteAllText("STUDENT_INFO.json", jsonObj);

            form1.textBox2.Text = textBox1.Text;

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            stud.kurse = (int)comboBox1.SelectedItem;
        }

        private void comboBox2_SelectedIndexChanged(object sender, EventArgs e)
        {
            stud.spec = (string)comboBox2.SelectedItem;
        }

        private void Form2_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add(1);
            comboBox1.Items.Add(2);
            comboBox1.Items.Add(3);
            comboBox1.Items.Add(4);

            comboBox2.Items.Add("Поит");
            comboBox2.Items.Add("Исит");
            comboBox2.Items.Add("Мобилки");
            comboBox2.Items.Add("Дизайн");

        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            stud.ball = trackBar1.Value;
        }
    }
}

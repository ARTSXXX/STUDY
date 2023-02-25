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
using System.Text.RegularExpressions;

namespace Lab_2
{
    public partial class Form1 : Form
    {
        Student stud = new Student();
        public Form1()
        {
            InitializeComponent();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
           
            stud.Name = textBox1.Text;
            
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            comboBox1.Items.Add(17);
            comboBox1.Items.Add(18);
            comboBox1.Items.Add(19);
            comboBox1.Items.Add(20);
            comboBox1.Items.Add(21);
        }

        private void radioButton1_CheckedChanged(object sender, EventArgs e)
        {
        
            
                stud.gender = "Men";
           
           
           
        }

        private void button1_Click(object sender, EventArgs e)
        {

            string jsonObj = JsonConvert.SerializeObject(stud);
            File.WriteAllText("STUDENT_INFO.json", jsonObj);

            string input = textBox1.Text;
            bool isValid = Regex.IsMatch(input, "^[a-zA-Z]+$");

            if (!isValid)
            {
                MessageBox.Show("Вводи только английский алфовит, и только буквы.");
            }

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            stud.Age = (int)comboBox1.SelectedItem;
        }

        private void button2_Click(object sender, EventArgs e)
        {
            string jsonReadObj = File.ReadAllText(@"STUDENT_INFO.json");
            dynamic data = JsonConvert.DeserializeObject(jsonReadObj);

         
            

            MessageBox.Show($"Student name - {data.Name.ToString()}");
        }

       
       

        private void radioButton2_CheckedChanged(object sender, EventArgs e)
        {
            stud.gender = "Women";
        }

        private void monthCalendar1_DateChanged(object sender, DateRangeEventArgs e)
        {
            stud.dayBirthday = monthCalendar1.SelectionEnd.Day;
        }

        private void trackBar1_Scroll(object sender, EventArgs e)
        {
            
        }

        private void button3_Click(object sender, EventArgs e)
        {
            new Form2(this).Show();
        }

        public void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

       
    }
}
